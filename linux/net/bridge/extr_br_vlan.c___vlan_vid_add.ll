; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_vid_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_vid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_vlan = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BR_VLFLAG_ADDED_BY_SWITCHDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_bridge*, %struct.net_bridge_vlan*, i32, %struct.netlink_ext_ack*)* @__vlan_vid_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_vid_add(%struct.net_device* %0, %struct.net_bridge* %1, %struct.net_bridge_vlan* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca %struct.net_bridge_vlan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_bridge* %1, %struct.net_bridge** %8, align 8
  store %struct.net_bridge_vlan* %2, %struct.net_bridge_vlan** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %15 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %19 = call i32 @br_switchdev_port_vlan_add(%struct.net_device* %13, i32 %16, i32 %17, %struct.netlink_ext_ack* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %30 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vlan_vid_add(%struct.net_device* %25, i32 %28, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %5
  %34 = load i32, i32* @BR_VLFLAG_ADDED_BY_SWITCHDEV, align 4
  %35 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %36 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @br_switchdev_port_vlan_add(%struct.net_device*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vlan_vid_add(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
