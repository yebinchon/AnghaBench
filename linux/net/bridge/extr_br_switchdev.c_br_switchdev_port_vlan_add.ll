; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_port_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_port_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_obj_port_vlan = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.net_device* }

@SWITCHDEV_OBJ_ID_PORT_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_switchdev_port_vlan_add(%struct.net_device* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.switchdev_obj_port_vlan, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %10 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @SWITCHDEV_OBJ_ID_PORT_VLAN, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %14, %struct.net_device** %13, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 3
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 0
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %24 = call i32 @switchdev_port_obj_add(%struct.net_device* %21, %struct.TYPE_2__* %22, %struct.netlink_ext_ack* %23)
  ret i32 %24
}

declare dso_local i32 @switchdev_port_obj_add(%struct.net_device*, %struct.TYPE_2__*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
