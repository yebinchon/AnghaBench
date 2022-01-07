; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_vid_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_vid_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_vlan = type { i32, i32 }

@BR_VLFLAG_ADDED_BY_SWITCHDEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_bridge*, %struct.net_bridge_vlan*)* @__vlan_vid_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_vid_del(%struct.net_device* %0, %struct.net_bridge* %1, %struct.net_bridge_vlan* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_vlan*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_bridge* %1, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_vlan* %2, %struct.net_bridge_vlan** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %10 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @br_switchdev_port_vlan_del(%struct.net_device* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %14 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BR_VLFLAG_ADDED_BY_SWITCHDEV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %25 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vlan_vid_del(%struct.net_device* %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  ret i32 %37
}

declare dso_local i32 @br_switchdev_port_vlan_del(%struct.net_device*, i32) #1

declare dso_local i32 @vlan_vid_del(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
