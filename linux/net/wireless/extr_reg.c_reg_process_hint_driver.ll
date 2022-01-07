; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_driver.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32 }
%struct.ieee80211_regdomain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*)* @reg_process_hint_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_process_hint_driver(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %10 = call i32 @__reg_process_hint_driver(%struct.regulatory_request* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %14
    i32 131, label %14
  ]

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  store i32 130, i32* %3, align 4
  br label %55

14:                                               ; preds = %2, %2
  %15 = call i32 (...) @get_cfg80211_regdom()
  %16 = call %struct.ieee80211_regdomain* @reg_copy_regd(i32 %15)
  store %struct.ieee80211_regdomain* %16, %struct.ieee80211_regdomain** %6, align 8
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %18 = call i32 @IS_ERR(%struct.ieee80211_regdomain* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 130, i32* %3, align 4
  br label %55

21:                                               ; preds = %14
  %22 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %23 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %22)
  store %struct.ieee80211_regdomain* %23, %struct.ieee80211_regdomain** %7, align 8
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %28 = call i32 @rcu_assign_pointer(i32 %26, %struct.ieee80211_regdomain* %27)
  %29 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %30 = call i32 @rcu_free_regdom(%struct.ieee80211_regdomain* %29)
  br label %31

31:                                               ; preds = %21, %2, %12
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 129
  %34 = zext i1 %33 to i32
  %35 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %36 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %38 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %43 = call i32 @nl80211_send_reg_change_event(%struct.regulatory_request* %42)
  %44 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %45 = call i32 @reg_update_last_request(%struct.regulatory_request* %44)
  %46 = call i32 (...) @reg_set_request_processed()
  store i32 131, i32* %3, align 4
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %49 = call i64 @reg_query_database(%struct.regulatory_request* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %53 = call i32 @reg_update_last_request(%struct.regulatory_request* %52)
  store i32 128, i32* %3, align 4
  br label %55

54:                                               ; preds = %47
  store i32 130, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %41, %20, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @__reg_process_hint_driver(%struct.regulatory_request*) #1

declare dso_local %struct.ieee80211_regdomain* @reg_copy_regd(i32) #1

declare dso_local i32 @get_cfg80211_regdom(...) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @rcu_free_regdom(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @nl80211_send_reg_change_event(%struct.regulatory_request*) #1

declare dso_local i32 @reg_update_last_request(%struct.regulatory_request*) #1

declare dso_local i32 @reg_set_request_processed(...) #1

declare dso_local i64 @reg_query_database(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
