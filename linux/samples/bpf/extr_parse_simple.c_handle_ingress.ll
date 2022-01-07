; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_parse_simple.c_handle_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_parse_simple.c_handle_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.eth_hdr = type { i64 }
%struct.iphdr = type { i64, i32 }
%struct.udphdr = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@DEFAULT_PKTGEN_UDP_PORT = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_ingress(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eth_hdr*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca i8*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %9 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.eth_hdr*
  store %struct.eth_hdr* %14, %struct.eth_hdr** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  %17 = bitcast i8* %16 to %struct.iphdr*
  store %struct.iphdr* %17, %struct.iphdr** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  %20 = getelementptr i8, i8* %19, i64 16
  %21 = bitcast i8* %20 to %struct.udphdr*
  store %struct.udphdr* %21, %struct.udphdr** %7, align 8
  %22 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  %28 = getelementptr i8, i8* %27, i64 16
  %29 = getelementptr i8, i8* %28, i64 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.eth_hdr*, %struct.eth_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_IP, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %68

41:                                               ; preds = %33
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_UDP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 5
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %41
  store i32 0, i32* %2, align 4
  br label %68

53:                                               ; preds = %47
  %54 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %55 = call i64 @ip_is_fragment(%struct.iphdr* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %68

58:                                               ; preds = %53
  %59 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @DEFAULT_PKTGEN_UDP_PORT, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %57, %52, %40, %32
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
