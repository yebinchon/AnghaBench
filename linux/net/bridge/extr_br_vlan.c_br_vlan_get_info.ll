; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bridge_vlan_info = type { i32, i64 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { i32 }
%struct.net_bridge_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_vlan_get_info(%struct.net_device* %0, i64 %1, %struct.bridge_vlan_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bridge_vlan_info*, align 8
  %8 = alloca %struct.net_bridge_vlan_group*, align 8
  %9 = alloca %struct.net_bridge_vlan*, align 8
  %10 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bridge_vlan_info* %2, %struct.bridge_vlan_info** %7, align 8
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.net_bridge_port* @br_port_get_check_rtnl(%struct.net_device* %12)
  store %struct.net_bridge_port* %13, %struct.net_bridge_port** %10, align 8
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %15 = icmp ne %struct.net_bridge_port* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %18 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port* %17)
  store %struct.net_bridge_vlan_group* %18, %struct.net_bridge_vlan_group** %8, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i64 @netif_is_bridge_master(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @netdev_priv(%struct.net_device* %24)
  %26 = call %struct.net_bridge_vlan_group* @br_vlan_group(i32 %25)
  store %struct.net_bridge_vlan_group* %26, %struct.net_bridge_vlan_group** %8, align 8
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %32, i64 %33)
  store %struct.net_bridge_vlan* %34, %struct.net_bridge_vlan** %9, align 8
  %35 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %36 = icmp ne %struct.net_bridge_vlan* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %7, align 8
  %43 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %45 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %7, align 8
  %48 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %51 = call i64 @br_get_pvid(%struct.net_bridge_vlan_group* %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %55 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %7, align 8
  %56 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %40
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %37, %27
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_port* @br_port_get_check_rtnl(%struct.net_device*) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i64) #1

declare dso_local i64 @br_get_pvid(%struct.net_bridge_vlan_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
