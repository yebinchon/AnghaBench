; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_ht_flags_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_ht_flags_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32, i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.ieee80211_reg_rule = type { i32 }

@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@NL80211_RRF_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_RRF_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_channel*)* @reg_process_ht_flags_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_process_ht_flags_channel(%struct.wiphy* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ieee80211_regdomain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %14 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %14, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, i64 %18
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  store %struct.ieee80211_supported_band* %20, %struct.ieee80211_supported_band** %5, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %7, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %134

30:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %66, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 1
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i64 %42
  store %struct.ieee80211_channel* %43, %struct.ieee80211_channel** %11, align 8
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 20
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  store %struct.ieee80211_channel* %53, %struct.ieee80211_channel** %6, align 8
  br label %54

54:                                               ; preds = %52, %37
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 20
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  store %struct.ieee80211_channel* %64, %struct.ieee80211_channel** %7, align 8
  br label %65

65:                                               ; preds = %63, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %31

69:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  %70 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %71 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %70)
  store %struct.ieee80211_regdomain* %71, %struct.ieee80211_regdomain** %8, align 8
  %72 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %73 = icmp ne %struct.ieee80211_regdomain* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @MHZ_TO_KHZ(i32 %77)
  %79 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %80 = call i32 @MHZ_TO_KHZ(i32 20)
  %81 = call %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32 %78, %struct.ieee80211_regdomain* %79, i32 %80)
  store %struct.ieee80211_reg_rule* %81, %struct.ieee80211_reg_rule** %12, align 8
  %82 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %83 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %74
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %92 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @NL80211_RRF_NO_HT40MINUS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94, %90
  %100 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %101 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %105, %99
  %113 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %114 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @NL80211_RRF_NO_HT40PLUS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116, %112
  %122 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %123 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %134

127:                                              ; preds = %116
  %128 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %24, %127, %121
  ret void
}

declare dso_local i32 @is_ht40_allowed(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32, %struct.ieee80211_regdomain*, i32) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
