; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_open(%struct.net_device* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_UP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %17 = call i32 @__dev_open(%struct.net_device* %15, %struct.netlink_ext_ack* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load i32, i32* @RTM_NEWLINK, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = load i32, i32* @IFF_RUNNING, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @rtmsg_ifinfo(i32 %23, %struct.net_device* %24, i32 %27, i32 %28)
  %30 = load i32, i32* @NETDEV_UP, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @call_netdevice_notifiers(i32 %30, %struct.net_device* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %20, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @__dev_open(%struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rtmsg_ifinfo(i32, %struct.net_device*, i32, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
