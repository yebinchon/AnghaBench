; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_dfs_region.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_dfs_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i64 }

@.str = private unnamed_addr constant [87 x i8] c"%s: device specific dfs_region (%s) disagrees with cfg80211's central dfs_region (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_get_dfs_region(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %4, align 8
  %5 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  store %struct.ieee80211_regdomain* %5, %struct.ieee80211_regdomain** %3, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = icmp ne %struct.wiphy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %11 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %10)
  store %struct.ieee80211_regdomain* %11, %struct.ieee80211_regdomain** %4, align 8
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %13 = icmp ne %struct.ieee80211_regdomain* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %37

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %26 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %25, i32 0, i32 0
  %27 = call i32 @dev_name(i32* %26)
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @reg_dfs_region_str(i64 %30)
  %32 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @reg_dfs_region_str(i64 %34)
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %24, %23, %14, %8
  %38 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @reg_dfs_region_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
