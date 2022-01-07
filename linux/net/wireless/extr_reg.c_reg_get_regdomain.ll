; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_regdomain.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.wiphy = type { i64 }
%struct.regulatory_request = type { i64 }

@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.wiphy*)* @reg_get_regdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @reg_get_regdomain(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  %5 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %5, %struct.regulatory_request** %4, align 8
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %7 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %13 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %19 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %24 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %23)
  store %struct.ieee80211_regdomain* %24, %struct.ieee80211_regdomain** %2, align 8
  br label %27

25:                                               ; preds = %17, %11, %1
  %26 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  store %struct.ieee80211_regdomain* %26, %struct.ieee80211_regdomain** %2, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  ret %struct.ieee80211_regdomain* %28
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
