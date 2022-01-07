; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_is_world_roaming.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_is_world_roaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.regulatory_request = type { i64 }

@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*)* @reg_is_world_roaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_is_world_roaming(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  %7 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  store %struct.ieee80211_regdomain* %7, %struct.ieee80211_regdomain** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %8)
  store %struct.ieee80211_regdomain* %9, %struct.ieee80211_regdomain** %5, align 8
  %10 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %10, %struct.regulatory_request** %6, align 8
  %11 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @is_world_regdom(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %18 = icmp ne %struct.ieee80211_regdomain* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_world_regdom(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  store i32 1, i32* %2, align 4
  br label %44

26:                                               ; preds = %19, %16
  %27 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %28 = icmp ne %struct.regulatory_request* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %31 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %37 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %35, %29, %26
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @is_world_regdom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
