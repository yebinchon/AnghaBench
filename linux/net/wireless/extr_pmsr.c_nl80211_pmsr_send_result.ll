; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_nl80211_pmsr_send_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_nl80211_pmsr_send_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_pmsr_result = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_PEER_MEASUREMENTS = common dso_local global i32 0, align 4
@NL80211_PMSR_ATTR_PEERS = common dso_local global i32 0, align 4
@NL80211_PMSR_PEER_ATTR_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_PMSR_PEER_ATTR_RESP = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_STATUS = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_HOST_TIME = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_AP_TSF = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_FINAL = common dso_local global i32 0, align 4
@NL80211_PMSR_RESP_ATTR_DATA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_pmsr_result*)* @nl80211_pmsr_send_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_pmsr_send_result(%struct.sk_buff* %0, %struct.cfg80211_pmsr_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_pmsr_result*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_pmsr_result* %1, %struct.cfg80211_pmsr_result** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @NL80211_ATTR_PEER_MEASUREMENTS, align 4
  %14 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %6, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NL80211_PMSR_ATTR_PEERS, align 4
  %21 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %19, i32 %20)
  store %struct.nlattr* %21, %struct.nlattr** %7, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %140

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %26, i32 1)
  store %struct.nlattr* %27, %struct.nlattr** %8, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %140

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @NL80211_PMSR_PEER_ATTR_ADDR, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @nla_put(%struct.sk_buff* %32, i32 %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %140

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @NL80211_PMSR_PEER_ATTR_RESP, align 4
  %44 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %9, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %140

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @NL80211_PMSR_RESP_ATTR_STATUS, align 4
  %51 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @NL80211_PMSR_RESP_ATTR_HOST_TIME, align 4
  %59 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NL80211_PMSR_RESP_ATTR_PAD, align 4
  %63 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %57, i32 %58, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56, %48
  br label %140

66:                                               ; preds = %56
  %67 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %68 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* @NL80211_PMSR_RESP_ATTR_AP_TSF, align 4
  %74 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NL80211_PMSR_RESP_ATTR_PAD, align 4
  %78 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %72, i32 %73, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %140

81:                                               ; preds = %71, %66
  %82 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @NL80211_PMSR_RESP_ATTR_FINAL, align 4
  %89 = call i64 @nla_put_flag(%struct.sk_buff* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %140

92:                                               ; preds = %86, %81
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* @NL80211_PMSR_RESP_ATTR_DATA, align 4
  %95 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %93, i32 %94)
  store %struct.nlattr* %95, %struct.nlattr** %10, align 8
  %96 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %140

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %102 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %100, i32 %103)
  store %struct.nlattr* %104, %struct.nlattr** %11, align 8
  %105 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %140

108:                                              ; preds = %99
  %109 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %110 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %119 [
    i32 128, label %112
  ]

112:                                              ; preds = %108
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %5, align 8
  %115 = call i32 @nl80211_pmsr_send_ftm_res(%struct.sk_buff* %113, %struct.cfg80211_pmsr_result* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %140

118:                                              ; preds = %112
  br label %121

119:                                              ; preds = %108
  %120 = call i32 @WARN_ON(i32 1)
  br label %121

121:                                              ; preds = %119, %118
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %124 = call i32 @nla_nest_end(%struct.sk_buff* %122, %struct.nlattr* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %127 = call i32 @nla_nest_end(%struct.sk_buff* %125, %struct.nlattr* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %130 = call i32 @nla_nest_end(%struct.sk_buff* %128, %struct.nlattr* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %136 = call i32 @nla_nest_end(%struct.sk_buff* %134, %struct.nlattr* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %139 = call i32 @nla_nest_end(%struct.sk_buff* %137, %struct.nlattr* %138)
  store i32 0, i32* %3, align 4
  br label %143

140:                                              ; preds = %117, %107, %98, %91, %80, %65, %47, %40, %30, %24, %17
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %140, %121
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nl80211_pmsr_send_ftm_res(%struct.sk_buff*, %struct.cfg80211_pmsr_result*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
