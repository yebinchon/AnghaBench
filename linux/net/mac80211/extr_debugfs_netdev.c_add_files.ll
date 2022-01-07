; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_add_files.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@flags = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@txpower = common dso_local global i32 0, align 4
@user_power_level = common dso_local global i32 0, align 4
@ap_power_level = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_files(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %3 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load i32, i32* @flags, align 4
  %11 = call i32 @DEBUGFS_ADD(i32 %10)
  %12 = load i32, i32* @state, align 4
  %13 = call i32 @DEBUGFS_ADD(i32 %12)
  %14 = load i32, i32* @txpower, align 4
  %15 = call i32 @DEBUGFS_ADD(i32 %14)
  %16 = load i32, i32* @user_power_level, align 4
  %17 = call i32 @DEBUGFS_ADD(i32 %16)
  %18 = load i32, i32* @ap_power_level, align 4
  %19 = call i32 @DEBUGFS_ADD(i32 %18)
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %28 = call i32 @add_common_files(%struct.ieee80211_sub_if_data* %27)
  br label %29

29:                                               ; preds = %26, %9
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  switch i64 %33, label %50 [
    i64 130, label %34
    i64 129, label %35
    i64 133, label %38
    i64 132, label %41
    i64 131, label %44
    i64 128, label %47
  ]

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %37 = call i32 @add_sta_files(%struct.ieee80211_sub_if_data* %36)
  br label %51

38:                                               ; preds = %29
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %40 = call i32 @add_ibss_files(%struct.ieee80211_sub_if_data* %39)
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %43 = call i32 @add_ap_files(%struct.ieee80211_sub_if_data* %42)
  br label %51

44:                                               ; preds = %29
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %46 = call i32 @add_vlan_files(%struct.ieee80211_sub_if_data* %45)
  br label %51

47:                                               ; preds = %29
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %49 = call i32 @add_wds_files(%struct.ieee80211_sub_if_data* %48)
  br label %51

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %8, %50, %47, %44, %41, %38, %35, %34
  ret void
}

declare dso_local i32 @DEBUGFS_ADD(i32) #1

declare dso_local i32 @add_common_files(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @add_sta_files(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @add_ibss_files(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @add_ap_files(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @add_vlan_files(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @add_wds_files(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
