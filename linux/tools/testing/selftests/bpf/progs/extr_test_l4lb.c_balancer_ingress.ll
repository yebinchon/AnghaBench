; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_l4lb.c_balancer_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_l4lb.c_balancer_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.eth_hdr = type { i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @balancer_ingress(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eth_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %9 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.eth_hdr*
  store %struct.eth_hdr* %18, %struct.eth_hdr** %6, align 8
  store i32 4, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ugt i8* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.eth_hdr*, %struct.eth_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call i32 @bpf_htons(i32 %32)
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %40 = call i32 @process_packet(i8* %36, i32 %37, i8* %38, i32 0, %struct.__sk_buff* %39)
  store i32 %40, i32* %2, align 4
  br label %54

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ETH_P_IPV6, align 4
  %44 = call i32 @bpf_htons(i32 %43)
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %51 = call i32 @process_packet(i8* %47, i32 %48, i8* %49, i32 1, %struct.__sk_buff* %50)
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %46, %35, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @bpf_htons(i32) #1

declare dso_local i32 @process_packet(i8*, i32, i8*, i32, %struct.__sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
