; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_share_dfs_chan_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_share_dfs_chan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.wiphy*)* @wiphy_share_dfs_chan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_share_dfs_chan_state(%struct.wiphy* %0, %struct.wiphy* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wiphy* %1, %struct.wiphy** %4, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %14 = call i32 @reg_dfs_domain_same(%struct.wiphy* %12, %struct.wiphy* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %84

17:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %81, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %24 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, i64 %27
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, align 8
  store %struct.ieee80211_supported_band* %29, %struct.ieee80211_supported_band** %6, align 8
  %30 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %31 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, i64 %34
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %35, align 8
  store %struct.ieee80211_supported_band* %36, %struct.ieee80211_supported_band** %5, align 8
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %38 = icmp ne %struct.ieee80211_supported_band* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %41 = icmp ne %struct.ieee80211_supported_band* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %22
  br label %81

43:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %77, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 1
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i64 %55
  store %struct.ieee80211_channel* %56, %struct.ieee80211_channel** %8, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %73, %50
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %64, i32 0, i32 1
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i64 %68
  store %struct.ieee80211_channel* %69, %struct.ieee80211_channel** %7, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %72 = call i32 @reg_copy_dfs_chan_state(%struct.ieee80211_channel* %70, %struct.ieee80211_channel* %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %57

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %44

80:                                               ; preds = %44
  br label %81

81:                                               ; preds = %80, %42
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %18

84:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @reg_dfs_domain_same(%struct.wiphy*, %struct.wiphy*) #1

declare dso_local i32 @reg_copy_dfs_chan_state(%struct.ieee80211_channel*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
