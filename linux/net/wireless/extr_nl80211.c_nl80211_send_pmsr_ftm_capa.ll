; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_pmsr_ftm_capa.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_pmsr_ftm_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_pmsr_capabilities = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_PMSR_TYPE_FTM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_ASAP = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_NON_ASAP = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_REQ_LCI = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_REQ_CIVICLOC = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_PREAMBLES = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_BANDWIDTHS = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_MAX_BURSTS_EXPONENT = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_pmsr_capabilities*, %struct.sk_buff*)* @nl80211_send_pmsr_ftm_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_pmsr_ftm_capa(%struct.cfg80211_pmsr_capabilities* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_pmsr_capabilities*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.cfg80211_pmsr_capabilities* %0, %struct.cfg80211_pmsr_capabilities** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @NL80211_PMSR_TYPE_FTM, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %6, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOBUFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %142

22:                                               ; preds = %13
  %23 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_ASAP, align 4
  %31 = call i64 @nla_put_flag(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOBUFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %142

36:                                               ; preds = %28, %22
  %37 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %38 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_NON_ASAP, align 4
  %45 = call i64 @nla_put_flag(%struct.sk_buff* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOBUFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %142

50:                                               ; preds = %42, %36
  %51 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %52 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_REQ_LCI, align 4
  %59 = call i64 @nla_put_flag(%struct.sk_buff* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOBUFS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %142

64:                                               ; preds = %56, %50
  %65 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %66 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_REQ_CIVICLOC, align 4
  %73 = call i64 @nla_put_flag(%struct.sk_buff* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOBUFS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %142

78:                                               ; preds = %70, %64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_PREAMBLES, align 4
  %81 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %82 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @ENOBUFS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %142

90:                                               ; preds = %78
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_BANDWIDTHS, align 4
  %93 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %94 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @nla_put_u32(%struct.sk_buff* %91, i32 %92, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @ENOBUFS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %142

102:                                              ; preds = %90
  %103 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %104 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_MAX_BURSTS_EXPONENT, align 4
  %111 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %112 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @nla_put_u32(%struct.sk_buff* %109, i32 %110, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* @ENOBUFS, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %142

120:                                              ; preds = %108, %102
  %121 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %122 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load i32, i32* @NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST, align 4
  %129 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %4, align 8
  %130 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @nla_put_u32(%struct.sk_buff* %127, i32 %128, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* @ENOBUFS, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %126, %120
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %141 = call i32 @nla_nest_end(%struct.sk_buff* %139, %struct.nlattr* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %135, %117, %99, %87, %75, %61, %47, %33, %19, %12
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
