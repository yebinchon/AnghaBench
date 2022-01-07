; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_bridge_vlan = type { %struct.net_bridge_port*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_vlan_add(%struct.net_bridge_port* %0, i32 %1, i32 %2, i32* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_bridge_vlan*, align 8
  %13 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %17 = call i32 @nbp_vlan_group(%struct.net_bridge_port* %16)
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.net_bridge_vlan* @br_vlan_find(i32 %17, i32 %18)
  store %struct.net_bridge_vlan* %19, %struct.net_bridge_vlan** %12, align 8
  %20 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %21 = icmp ne %struct.net_bridge_vlan* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %5
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %29 = call i32 @br_switchdev_port_vlan_add(i32 %25, i32 %26, i32 %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %72

39:                                               ; preds = %32, %22
  %40 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @__vlan_add_flags(%struct.net_bridge_vlan* %40, i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %72

44:                                               ; preds = %5
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.net_bridge_vlan* @kzalloc(i32 16, i32 %45)
  store %struct.net_bridge_vlan* %46, %struct.net_bridge_vlan** %12, align 8
  %47 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %48 = icmp ne %struct.net_bridge_vlan* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %72

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %55 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %57 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %58 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %57, i32 0, i32 0
  store %struct.net_bridge_port* %56, %struct.net_bridge_port** %58, align 8
  %59 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %62 = call i32 @__vlan_add(%struct.net_bridge_vlan* %59, i32 %60, %struct.netlink_ext_ack* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %12, align 8
  %67 = call i32 @kfree(%struct.net_bridge_vlan* %66)
  br label %70

68:                                               ; preds = %52
  %69 = load i32*, i32** %10, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %49, %39, %37
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(i32, i32) #1

declare dso_local i32 @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local i32 @br_switchdev_port_vlan_add(i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__vlan_add_flags(%struct.net_bridge_vlan*, i32) #1

declare dso_local %struct.net_bridge_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @__vlan_add(%struct.net_bridge_vlan*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @kfree(%struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
