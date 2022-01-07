; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_change_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }

@IFF_UP = common dso_local global i32 0, align 4
@NETDEV_CHANGE = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_state_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_notifier_change_info, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IFF_UP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.netdev_notifier_change_info, %struct.netdev_notifier_change_info* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %13, %struct.net_device** %12, align 8
  %14 = load i32, i32* @NETDEV_CHANGE, align 4
  %15 = getelementptr inbounds %struct.netdev_notifier_change_info, %struct.netdev_notifier_change_info* %3, i32 0, i32 0
  %16 = call i32 @call_netdevice_notifiers_info(i32 %14, %struct.TYPE_2__* %15)
  %17 = load i32, i32* @RTM_NEWLINK, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @rtmsg_ifinfo(i32 %17, %struct.net_device* %18, i32 0, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @call_netdevice_notifiers_info(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @rtmsg_ifinfo(i32, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
