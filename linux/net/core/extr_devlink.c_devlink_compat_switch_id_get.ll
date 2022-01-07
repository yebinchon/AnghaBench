; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_switch_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_switch_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32 }
%struct.devlink_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_compat_switch_id_get(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.devlink_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.devlink_port* @netdev_to_devlink_port(%struct.net_device* %7)
  store %struct.devlink_port* %8, %struct.devlink_port** %6, align 8
  %9 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %10 = icmp ne %struct.devlink_port* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %13 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %22 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %23 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @memcpy(%struct.netdev_phys_item_id* %21, i32* %24, i32 4)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.devlink_port* @netdev_to_devlink_port(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.netdev_phys_item_id*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
