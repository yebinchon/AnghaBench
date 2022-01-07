; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_netdevice_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_netdevice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@NETDEV_CHANGEUPPER = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dsa_slave_netdevice_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_netdevice_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @NETDEV_CHANGEUPPER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call i32 @dsa_slave_dev_check(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @dsa_slave_upper_vlan_check(%struct.net_device* %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @dsa_slave_changeupper(%struct.net_device* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %22, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @dsa_slave_dev_check(%struct.net_device*) #1

declare dso_local i32 @dsa_slave_upper_vlan_check(%struct.net_device*, i8*) #1

declare dso_local i32 @dsa_slave_changeupper(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
