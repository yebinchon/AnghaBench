; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_del_virtual_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_del_virtual_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@WANT_MONITOR_VIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_del_virtual_monitor(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %4 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %4, i32 0, i32 3
  %6 = load i32, i32* @WANT_MONITOR_VIF, align 4
  %7 = call i32 @ieee80211_hw_check(i32* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = call i32 @lockdep_is_held(i32* %19)
  %21 = call %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32 %17, i32 %20)
  store %struct.ieee80211_sub_if_data* %21, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %23 = icmp ne %struct.ieee80211_sub_if_data* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %10
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %50

28:                                               ; preds = %10
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RCU_INIT_POINTER(i32 %31, i32* null)
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = call i32 (...) @synchronize_net()
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %41 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %40)
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %47 = call i32 @drv_remove_interface(%struct.ieee80211_local* %45, %struct.ieee80211_sub_if_data* %46)
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %49 = call i32 @kfree(%struct.ieee80211_sub_if_data* %48)
  br label %50

50:                                               ; preds = %28, %24, %9
  ret void
}

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_remove_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @kfree(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
