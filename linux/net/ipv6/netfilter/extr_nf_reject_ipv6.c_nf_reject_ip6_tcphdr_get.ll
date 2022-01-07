; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6_tcphdr_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6_tcphdr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tcphdr = type { i64 }
%struct.ipv6hdr = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot get TCP header.\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"proto(%d) != IPPROTO_TCP or too short (len = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"RST is set\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TCP checksum is invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcphdr* @nf_reject_ip6_tcphdr_get(%struct.sk_buff* %0, %struct.tcphdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %14)
  store %struct.ipv6hdr* %15, %struct.ipv6hdr** %10, align 8
  %16 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %17 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %21 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %20, i64 1
  %22 = bitcast %struct.ipv6hdr* %21 to i64*
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i64, i64* %22, i64 %27
  %29 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %19, i64* %28, i64* %11, i32* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %4
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.tcphdr* null, %struct.tcphdr** %5, align 8
  br label %86

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @IPPROTO_TCP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %40
  %56 = load i64, i64* %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %58)
  store %struct.tcphdr* null, %struct.tcphdr** %5, align 8
  br label %86

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %64 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %61, i32 %62, i32 8, %struct.tcphdr* %63)
  store %struct.tcphdr* %64, %struct.tcphdr** %7, align 8
  %65 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %66 = icmp eq %struct.tcphdr* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store %struct.tcphdr* null, %struct.tcphdr** %5, align 8
  br label %86

68:                                               ; preds = %60
  %69 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tcphdr* null, %struct.tcphdr** %5, align 8
  br label %86

75:                                               ; preds = %68
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i64, i64* @IPPROTO_TCP, align 8
  %80 = call i64 @nf_ip6_checksum(%struct.sk_buff* %76, i32 %77, i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store %struct.tcphdr* null, %struct.tcphdr** %5, align 8
  br label %86

84:                                               ; preds = %75
  %85 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  store %struct.tcphdr* %85, %struct.tcphdr** %5, align 8
  br label %86

86:                                               ; preds = %84, %82, %73, %67, %55, %38
  %87 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  ret %struct.tcphdr* %87
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i64*, i64*, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i64 @nf_ip6_checksum(%struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
