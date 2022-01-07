; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_bridge_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_bridge_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, i32 }
%struct.net_bridge = type { i32 }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@BROPT_VLAN_BRIDGE_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_vlan_bridge_event(%struct.net_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %11)
  store %struct.net_bridge* %12, %struct.net_bridge** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  switch i64 %13, label %52 [
    i64 130, label %14
    i64 129, label %25
    i64 131, label %31
    i64 132, label %42
    i64 128, label %42
  ]

14:                                               ; preds = %3
  %15 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %16 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %20 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @br_vlan_add(%struct.net_bridge* %15, i32 %18, i32 %23, i32* %9, i32* null)
  store i32 %24, i32* %10, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %27 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %28 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @br_vlan_delete(%struct.net_bridge* %26, i32 %29)
  br label %52

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %33, %struct.netdev_notifier_changeupper_info** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %7, align 8
  %36 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %7, align 8
  %39 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @br_vlan_upper_change(%struct.net_device* %34, i32 %37, i32 %40)
  br label %52

42:                                               ; preds = %3, %3
  %43 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %44 = load i32, i32* @BROPT_VLAN_BRIDGE_BINDING, align 4
  %45 = call i32 @br_opt_get(%struct.net_bridge* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %51 = call i32 @br_vlan_link_state_change(%struct.net_device* %49, %struct.net_bridge* %50)
  br label %52

52:                                               ; preds = %3, %48, %47, %31, %25, %14
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @br_vlan_add(%struct.net_bridge*, i32, i32, i32*, i32*) #1

declare dso_local i32 @br_vlan_delete(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_vlan_upper_change(%struct.net_device*, i32, i32) #1

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_vlan_link_state_change(%struct.net_device*, %struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
