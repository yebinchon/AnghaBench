; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net-sysfs.c_netdev_unregister_kobject.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net-sysfs.c_netdev_unregister_kobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_unregister_kobject(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @refcount_read(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_set_uevent_suppress(%struct.device* %12, i32 1)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = call i32 @kobject_get(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @remove_queue_kobjects(%struct.net_device* %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @pm_runtime_set_memalloc_noio(%struct.device* %20, i32 0)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @device_del(%struct.device* %22)
  ret void
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @remove_queue_kobjects(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_set_memalloc_noio(%struct.device*, i32) #1

declare dso_local i32 @device_del(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
