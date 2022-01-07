; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_handle_channel_custom.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_handle_channel_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.ieee80211_reg_rule = type { i64, i32, %struct.ieee80211_power_rule }
%struct.ieee80211_power_rule = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Disabling freq %d MHz as custom regd has no rule that fits it\0A\00", align 1
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NL80211_DFS_USABLE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_DFS_MIN_CAC_TIME_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_channel*, %struct.ieee80211_regdomain*)* @handle_channel_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel_custom(%struct.wiphy* %0, %struct.ieee80211_channel* %1, %struct.ieee80211_regdomain* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_reg_rule*, align 8
  %9 = alloca %struct.ieee80211_power_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.ieee80211_regdomain* %2, %struct.ieee80211_regdomain** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ieee80211_reg_rule* null, %struct.ieee80211_reg_rule** %8, align 8
  store %struct.ieee80211_power_rule* null, %struct.ieee80211_power_rule** %9, align 8
  %11 = call i32 @MHZ_TO_KHZ(i32 20)
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %29, %3
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @MHZ_TO_KHZ(i32 5)
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MHZ_TO_KHZ(i32 %19)
  %21 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32 %20, %struct.ieee80211_regdomain* %21, i32 %22)
  store %struct.ieee80211_reg_rule* %23, %struct.ieee80211_reg_rule** %8, align 8
  %24 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %25 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %10, align 4
  br label %12

32:                                               ; preds = %27, %12
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %34 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %42 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %64

53:                                               ; preds = %36
  %54 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %47
  br label %155

65:                                               ; preds = %32
  %66 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %66, i32 0, i32 2
  store %struct.ieee80211_power_rule* %67, %struct.ieee80211_power_rule** %9, align 8
  %68 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %69 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %71 = call i32 @reg_rule_to_chan_bw_flags(%struct.ieee80211_regdomain* %68, %struct.ieee80211_reg_rule* %69, %struct.ieee80211_channel* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @jiffies, align 4
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @NL80211_DFS_USABLE, align 4
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 3
  store i32 0, i32* %79, align 4
  %80 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %81 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %65
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @map_regdom_flags(i32 %94)
  %96 = or i32 %91, %95
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %110

99:                                               ; preds = %65
  %100 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @map_regdom_flags(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %99, %86
  %111 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @MBI_TO_DBI(i32 %113)
  %115 = trunc i64 %114 to i32
  %116 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %117 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %9, align 8
  %119 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @MBM_TO_DBM(i32 %120)
  %122 = trunc i64 %121 to i32
  %123 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %124 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %126 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %125, i32 0, i32 5
  store i32 %122, i32* %126, align 4
  %127 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %110
  %134 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %140 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %142, i32 0, i32 7
  store i64 %141, i64* %143, align 8
  br label %148

144:                                              ; preds = %133
  %145 = load i64, i64* @IEEE80211_DFS_MIN_CAC_TIME_MS, align 8
  %146 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %146, i32 0, i32 7
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %138
  br label %149

149:                                              ; preds = %148, %110
  %150 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %151 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %154 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %149, %64
  ret void
}

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32, %struct.ieee80211_regdomain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_reg_rule*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @reg_rule_to_chan_bw_flags(%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*, %struct.ieee80211_channel*) #1

declare dso_local i32 @map_regdom_flags(i32) #1

declare dso_local i64 @MBI_TO_DBI(i32) #1

declare dso_local i64 @MBM_TO_DBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
