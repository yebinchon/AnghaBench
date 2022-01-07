; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_set_wiphy_regd_sync_rtnl.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_set_wiphy_regd_sync_rtnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_set_wiphy_regd_sync_rtnl(%struct.wiphy* %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %5, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %10 = call i32 @__regulatory_set_wiphy_regd(%struct.wiphy* %8, %struct.ieee80211_regdomain* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @reg_process_self_managed_hints()
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @__regulatory_set_wiphy_regd(%struct.wiphy*, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @reg_process_self_managed_hints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
