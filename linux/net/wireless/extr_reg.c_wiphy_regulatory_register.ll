; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_regulatory_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_regulatory_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64 }

@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@REGULATORY_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@REGULATORY_COUNTRY_IE_IGNORE = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@reg_num_devs_support_basehint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_regulatory_register(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %4 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %4, %struct.regulatory_request** %3, align 8
  %5 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %6 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @REGULATORY_DISABLE_BEACON_HINTS, align 4
  %13 = load i32, i32* @REGULATORY_COUNTRY_IE_IGNORE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %20 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %26 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %27 = call i32 @reg_call_notifier(%struct.wiphy* %25, %struct.regulatory_request* %26)
  br label %28

28:                                               ; preds = %24, %11
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %31 = call i32 @reg_dev_ignore_cell_hint(%struct.wiphy* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @reg_num_devs_support_basehint, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @reg_num_devs_support_basehint, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wiphy_update_regulatory(%struct.wiphy* %37, i64 %40)
  %42 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %43 = call i32 @wiphy_all_share_dfs_chan_state(%struct.wiphy* %42)
  ret void
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @reg_call_notifier(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @reg_dev_ignore_cell_hint(%struct.wiphy*) #1

declare dso_local i32 @wiphy_update_regulatory(%struct.wiphy*, i64) #1

declare dso_local i32 @wiphy_all_share_dfs_chan_state(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
