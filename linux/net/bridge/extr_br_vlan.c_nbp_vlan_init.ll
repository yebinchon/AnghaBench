; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_attr = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge_vlan_group = type { i32, i32 }

@BROPT_VLAN_ENABLED = common dso_local global i32 0, align 4
@SWITCHDEV_F_SKIP_EOPNOTSUPP = common dso_local global i32 0, align 4
@SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@br_vlan_rht_params = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_vlan_init(%struct.net_bridge_port* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca %struct.switchdev_attr, align 4
  %6 = alloca %struct.net_bridge_vlan_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %9 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %15 = call i32 @br_opt_get(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 1
  %17 = load i32, i32* @SWITCHDEV_F_SKIP_EOPNOTSUPP, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 2
  %19 = load i32, i32* @SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 3
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.net_bridge_vlan_group* @kzalloc(i32 8, i32 %28)
  store %struct.net_bridge_vlan_group* %29, %struct.net_bridge_vlan_group** %6, align 8
  %30 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %31 = icmp ne %struct.net_bridge_vlan_group* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %91

33:                                               ; preds = %2
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @switchdev_port_attr_set(i32 %36, %struct.switchdev_attr* %5)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %106

46:                                               ; preds = %40, %33
  %47 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %48 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %47, i32 0, i32 0
  %49 = call i32 @rhashtable_init(i32* %48, i32* @br_vlan_rht_params)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %105

53:                                               ; preds = %46
  %54 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %55 = call i32 @vlan_tunnel_init(%struct.net_bridge_vlan_group* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %101

59:                                               ; preds = %53
  %60 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %61 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %64 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %67 = call i32 @rcu_assign_pointer(i32 %65, %struct.net_bridge_vlan_group* %66)
  %68 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %69 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %59
  %75 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %76 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %77 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %82 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %4, align 8
  %85 = call i32 @nbp_vlan_add(%struct.net_bridge_port* %75, i64 %80, i32 %83, i32* %8, %struct.netlink_ext_ack* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %93

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %106, %90, %32
  %92 = load i32, i32* %7, align 4
  ret i32 %92

93:                                               ; preds = %88
  %94 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %95 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @RCU_INIT_POINTER(i32 %96, i32* null)
  %98 = call i32 (...) @synchronize_rcu()
  %99 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %100 = call i32 @vlan_tunnel_deinit(%struct.net_bridge_vlan_group* %99)
  br label %101

101:                                              ; preds = %93, %58
  %102 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %103 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %102, i32 0, i32 0
  %104 = call i32 @rhashtable_destroy(i32* %103)
  br label %105

105:                                              ; preds = %101, %52
  br label %106

106:                                              ; preds = %105, %45
  %107 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %108 = call i32 @kfree(%struct.net_bridge_vlan_group* %107)
  br label %91
}

declare dso_local i32 @br_opt_get(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.net_bridge_vlan_group* @kzalloc(i32, i32) #1

declare dso_local i32 @switchdev_port_attr_set(i32, %struct.switchdev_attr*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @vlan_tunnel_init(%struct.net_bridge_vlan_group*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_bridge_vlan_group*) #1

declare dso_local i32 @nbp_vlan_add(%struct.net_bridge_port*, i64, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @vlan_tunnel_deinit(%struct.net_bridge_vlan_group*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.net_bridge_vlan_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
