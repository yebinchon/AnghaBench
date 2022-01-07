; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_validate_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_validate_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@IPSTATS_MIB_INTRUNCATEDPKTS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*)* @br_validate_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_validate_ipv4(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @pskb_may_pull(%struct.sk_buff* %8, i32 12)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %86

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %6, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %12
  br label %86

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @pskb_may_pull(%struct.sk_buff* %26, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %86

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %35)
  store %struct.iphdr* %36, %struct.iphdr** %6, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %38 = bitcast %struct.iphdr* %37 to i32*
  %39 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ip_fast_csum(i32* %38, i32 %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %82

46:                                               ; preds = %34
  %47 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.net*, %struct.net** %4, align 8
  %58 = load i32, i32* @IPSTATS_MIB_INTRUNCATEDPKTS, align 4
  %59 = call i32 @__IP_INC_STATS(%struct.net* %57, i32 %58)
  br label %90

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %86

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.net*, %struct.net** %4, align 8
  %76 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %77 = call i32 @__IP_INC_STATS(%struct.net* %75, i32 %76)
  br label %90

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @IPCB(%struct.sk_buff* %79)
  %81 = call i32 @memset(i32 %80, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %91

82:                                               ; preds = %45
  %83 = load %struct.net*, %struct.net** %4, align 8
  %84 = load i32, i32* @IPSTATS_MIB_CSUMERRORS, align 4
  %85 = call i32 @__IP_INC_STATS(%struct.net* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %67, %33, %24, %11
  %87 = load %struct.net*, %struct.net** %4, align 8
  %88 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %89 = call i32 @__IP_INC_STATS(%struct.net* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %74, %56
  store i32 -1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
