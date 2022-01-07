; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_changeupper.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_changeupper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, i64 }
%struct.dsa_port = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_notifier_changeupper_info*)* @dsa_slave_changeupper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_changeupper(%struct.net_device* %0, %struct.netdev_notifier_changeupper_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_notifier_changeupper_info* %1, %struct.netdev_notifier_changeupper_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %7)
  store %struct.dsa_port* %8, %struct.dsa_port** %5, align 8
  %9 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %4, align 8
  %11 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @netif_is_bridge_master(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %4, align 8
  %17 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %22 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %4, align 8
  %23 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dsa_port_bridge_join(%struct.dsa_port* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @notifier_from_errno(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %15
  %29 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %30 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %4, align 8
  %31 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dsa_port_bridge_leave(%struct.dsa_port* %29, i32 %32)
  %34 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %20
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i64 @netif_is_bridge_master(i32) #1

declare dso_local i32 @dsa_port_bridge_join(%struct.dsa_port*, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @dsa_port_bridge_leave(%struct.dsa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
