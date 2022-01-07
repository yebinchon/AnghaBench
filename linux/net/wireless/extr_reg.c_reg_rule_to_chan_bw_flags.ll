; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_rule_to_chan_bw_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_rule_to_chan_bw_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.ieee80211_reg_rule = type { i32, %struct.ieee80211_freq_range }
%struct.ieee80211_freq_range = type { i32 }
%struct.ieee80211_channel = type { i32 }

@NL80211_RRF_AUTO_BW = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_10MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*, %struct.ieee80211_channel*)* @reg_rule_to_chan_bw_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_rule_to_chan_bw_flags(%struct.ieee80211_regdomain* %0, %struct.ieee80211_reg_rule* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_freq_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_freq_range* null, %struct.ieee80211_freq_range** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %10, i32 0, i32 1
  store %struct.ieee80211_freq_range* %11, %struct.ieee80211_freq_range** %7, align 8
  %12 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %23 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %24 = call i32 @reg_get_max_bandwidth(%struct.ieee80211_regdomain* %22, %struct.ieee80211_reg_rule* %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MHZ_TO_KHZ(i32 %29)
  %31 = call i32 @MHZ_TO_KHZ(i32 10)
  %32 = call i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range* %26, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MHZ_TO_KHZ(i32 %42)
  %44 = call i32 @MHZ_TO_KHZ(i32 20)
  %45 = call i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range* %39, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MHZ_TO_KHZ(i32 10)
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @MHZ_TO_KHZ(i32 20)
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @MHZ_TO_KHZ(i32 40)
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @MHZ_TO_KHZ(i32 80)
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @MHZ_TO_KHZ(i32 160)
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @reg_get_max_bandwidth(%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*) #1

declare dso_local i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range*, i32, i32) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
