; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_slave_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_slave_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.batadv_hard_iface = type { i64 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)* @batadv_softif_slave_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_softif_slave_add(%struct.net_device* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.net* @dev_net(%struct.net_device* %10)
  store %struct.net* %11, %struct.net** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %14)
  store %struct.batadv_hard_iface* %15, %struct.batadv_hard_iface** %7, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %17 = icmp ne %struct.batadv_hard_iface* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %20 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  br label %31

24:                                               ; preds = %18
  %25 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @batadv_hardif_enable_interface(%struct.batadv_hard_iface* %25, %struct.net* %26, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %33 = icmp ne %struct.batadv_hard_iface* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %36 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_enable_interface(%struct.batadv_hard_iface*, %struct.net*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
