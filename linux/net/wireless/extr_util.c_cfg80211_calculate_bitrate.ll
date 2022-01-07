; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i32 }

@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_DMG = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_EDMG = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_HE_MCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %4 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %5 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %12 = call i32 @cfg80211_calculate_bitrate_ht(%struct.rate_info* %11)
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %15 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RATE_INFO_FLAGS_DMG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %22 = call i32 @cfg80211_calculate_bitrate_dmg(%struct.rate_info* %21)
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %13
  %24 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %25 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RATE_INFO_FLAGS_EDMG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %32 = call i32 @cfg80211_calculate_bitrate_edmg(%struct.rate_info* %31)
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %35 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %42 = call i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info* %41)
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %45 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %52 = call i32 @cfg80211_calculate_bitrate_he(%struct.rate_info* %51)
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %55 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %50, %40, %30, %20, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cfg80211_calculate_bitrate_ht(%struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate_dmg(%struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate_edmg(%struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate_he(%struct.rate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
