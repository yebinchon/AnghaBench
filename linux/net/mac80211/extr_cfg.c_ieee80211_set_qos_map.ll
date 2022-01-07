; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_qos_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_qos_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_qos_map = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.mac80211_qos_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_qos_map*)* @ieee80211_set_qos_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_qos_map(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_qos_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_qos_map*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.mac80211_qos_map*, align 8
  %10 = alloca %struct.mac80211_qos_map*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_qos_map* %2, %struct.cfg80211_qos_map** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %8, align 8
  %13 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %14 = icmp ne %struct.cfg80211_qos_map* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mac80211_qos_map* @kzalloc(i32 4, i32 %16)
  store %struct.mac80211_qos_map* %17, %struct.mac80211_qos_map** %9, align 8
  %18 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %9, align 8
  %19 = icmp ne %struct.mac80211_qos_map* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %9, align 8
  %25 = getelementptr inbounds %struct.mac80211_qos_map, %struct.mac80211_qos_map* %24, i32 0, i32 0
  %26 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %27 = call i32 @memcpy(i32* %25, %struct.cfg80211_qos_map* %26, i32 4)
  br label %29

28:                                               ; preds = %3
  store %struct.mac80211_qos_map* null, %struct.mac80211_qos_map** %9, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %34 = call %struct.mac80211_qos_map* @sdata_dereference(i32 %32, %struct.ieee80211_sub_if_data* %33)
  store %struct.mac80211_qos_map* %34, %struct.mac80211_qos_map** %10, align 8
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %9, align 8
  %39 = call i32 @rcu_assign_pointer(i32 %37, %struct.mac80211_qos_map* %38)
  %40 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %10, align 8
  %41 = icmp ne %struct.mac80211_qos_map* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %10, align 8
  %44 = load i32, i32* @rcu_head, align 4
  %45 = call i32 @kfree_rcu(%struct.mac80211_qos_map* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %29
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.mac80211_qos_map* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_qos_map*, i32) #1

declare dso_local %struct.mac80211_qos_map* @sdata_dereference(i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mac80211_qos_map*) #1

declare dso_local i32 @kfree_rcu(%struct.mac80211_qos_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
