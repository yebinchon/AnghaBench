; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_pre_changeaddr_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_pre_changeaddr_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netdev_notifier_pre_changeaddr_info = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack*, %struct.net_device* }

@NETDEV_PRE_CHANGEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pre_changeaddr_notify(%struct.net_device* %0, i8* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.netdev_notifier_pre_changeaddr_info, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, %struct.netdev_notifier_pre_changeaddr_info* %7, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, %struct.netdev_notifier_pre_changeaddr_info* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  store %struct.netlink_ext_ack* %13, %struct.netlink_ext_ack** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %15, %struct.net_device** %14, align 8
  %16 = load i32, i32* @NETDEV_PRE_CHANGEADDR, align 4
  %17 = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, %struct.netdev_notifier_pre_changeaddr_info* %7, i32 0, i32 1
  %18 = call i32 @call_netdevice_notifiers_info(i32 %16, %struct.TYPE_2__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @notifier_to_errno(i32 %19)
  ret i32 %20
}

declare dso_local i32 @call_netdevice_notifiers_info(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
