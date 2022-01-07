; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@NL80211_CMD_DEL_WIPHY = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_unregister(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %6)
  store %struct.cfg80211_registered_device* %7, %struct.cfg80211_registered_device** %3, align 8
  %8 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @rtnl_unlock()
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wait_event(i32 %10, i32 %19)
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 13
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @rfkill_unregister(i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = call i32 (...) @rtnl_lock()
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %33 = load i32, i32* @NL80211_CMD_DEL_WIPHY, align 4
  %34 = call i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device* %32, i32 %33)
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @debugfs_remove_recursive(i32 %49)
  %51 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %52 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %51, i32 0, i32 12
  %53 = call i32 @list_del_rcu(i32* %52)
  %54 = call i32 (...) @synchronize_rcu()
  %55 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %56 = call i32 @wiphy_regulatory_deregister(%struct.wiphy* %55)
  %57 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @cfg80211_rdev_list_generation, align 4
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i32 @device_del(i32* %61)
  %63 = call i32 (...) @rtnl_unlock()
  %64 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %65 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %64, i32 0, i32 11
  %66 = call i32 @flush_work(i32* %65)
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 10
  %69 = call i32 @cancel_work_sync(i32* %68)
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %71 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %70, i32 0, i32 9
  %72 = call i32 @flush_work(i32* %71)
  %73 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %73, i32 0, i32 8
  %75 = call i32 @cancel_delayed_work_sync(i32* %74)
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 7
  %78 = call i32 @flush_work(i32* %77)
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 6
  %81 = call i32 @flush_work(i32* %80)
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %83 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %82, i32 0, i32 5
  %84 = call i32 @flush_work(i32* %83)
  %85 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %86 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %85, i32 0, i32 4
  %87 = call i32 @flush_work(i32* %86)
  %88 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %89 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %88, i32 0, i32 3
  %90 = call i32 @flush_work(i32* %89)
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %92 = call i32 @cfg80211_rdev_free_wowlan(%struct.cfg80211_registered_device* %91)
  %93 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %94 = call i32 @cfg80211_rdev_free_coalesce(%struct.cfg80211_registered_device* %93)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @wiphy_regulatory_deregister(%struct.wiphy*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cfg80211_rdev_free_wowlan(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @cfg80211_rdev_free_coalesce(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
