; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_pmsr_capa.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_pmsr_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cfg80211_pmsr_capabilities* }
%struct.cfg80211_pmsr_capabilities = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_PEER_MEASUREMENTS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_PMSR_ATTR_MAX_PEERS = common dso_local global i32 0, align 4
@NL80211_PMSR_ATTR_REPORT_AP_TSF = common dso_local global i32 0, align 4
@NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_PMSR_ATTR_TYPE_CAPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.sk_buff*)* @nl80211_send_pmsr_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_pmsr_capa(%struct.cfg80211_registered_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cfg80211_pmsr_capabilities*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %11, align 8
  store %struct.cfg80211_pmsr_capabilities* %12, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %13 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %14 = icmp ne %struct.cfg80211_pmsr_capabilities* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @NL80211_ATTR_PEER_MEASUREMENTS, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %7, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @NL80211_PMSR_ATTR_MAX_PEERS, align 4
  %28 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOBUFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %86

36:                                               ; preds = %25
  %37 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @NL80211_PMSR_ATTR_REPORT_AP_TSF, align 4
  %44 = call i64 @nla_put_flag(%struct.sk_buff* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %86

49:                                               ; preds = %41, %36
  %50 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %51 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* @NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR, align 4
  %57 = call i64 @nla_put_flag(%struct.sk_buff* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOBUFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %86

62:                                               ; preds = %54, %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @NL80211_PMSR_ATTR_TYPE_CAPA, align 4
  %65 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %63, i32 %64)
  store %struct.nlattr* %65, %struct.nlattr** %8, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOBUFS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %86

71:                                               ; preds = %62
  %72 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i64 @nl80211_send_pmsr_ftm_capa(%struct.cfg80211_pmsr_capabilities* %72, %struct.sk_buff* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOBUFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %86

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %82 = call i32 @nla_nest_end(%struct.sk_buff* %80, %struct.nlattr* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %85 = call i32 @nla_nest_end(%struct.sk_buff* %83, %struct.nlattr* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %76, %68, %59, %46, %33, %22, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nl80211_send_pmsr_ftm_capa(%struct.cfg80211_pmsr_capabilities*, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
