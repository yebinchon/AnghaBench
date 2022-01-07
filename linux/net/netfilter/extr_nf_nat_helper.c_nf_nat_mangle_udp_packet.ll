; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_helper.c_nf_nat_mangle_udp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_helper.c_nf_nat_mangle_udp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.nf_conn = type { i32 }
%struct.udphdr = type { i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @skb_ensure_writable(%struct.sk_buff* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %102

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sub i32 %33, %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = call i32 @skb_tailroom(%struct.sk_buff* %36)
  %38 = icmp ugt i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @enlarge_skb(%struct.sk_buff* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %102

47:                                               ; preds = %39, %32, %28
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = bitcast i8* %54 to %struct.udphdr*
  store %struct.udphdr* %55, %struct.udphdr** %18, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %20, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @mangle_contents(%struct.sk_buff* %61, i32 %65, i32 %66, i32 %67, i8* %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub i32 %73, %74
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @htons(i32 %76)
  %78 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %79 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %81 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %47
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %9, align 4
  br label %102

91:                                               ; preds = %84, %47
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %94 = call i32 @nf_ct_l3num(%struct.nf_conn* %93)
  %95 = load i32, i32* @IPPROTO_UDP, align 4
  %96 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %97 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %98 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %97, i32 0, i32 0
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @nf_nat_csum_recalc(%struct.sk_buff* %92, i32 %94, i32 %95, %struct.udphdr* %96, i32* %98, i32 %99, i32 %100)
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %91, %90, %46, %27
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @enlarge_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @mangle_contents(%struct.sk_buff*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nf_nat_csum_recalc(%struct.sk_buff*, i32, i32, %struct.udphdr*, i32*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
