; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_add_existing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_add_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to insert local address into bridge forwarding table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan*, i32, i32*, %struct.netlink_ext_ack*)* @br_vlan_add_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_vlan_add_existing(%struct.net_bridge* %0, %struct.net_bridge_vlan_group* %1, %struct.net_bridge_vlan* %2, i32 %3, i32* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca %struct.net_bridge_vlan_group*, align 8
  %10 = alloca %struct.net_bridge_vlan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %8, align 8
  store %struct.net_bridge_vlan_group* %1, %struct.net_bridge_vlan_group** %9, align 8
  store %struct.net_bridge_vlan* %2, %struct.net_bridge_vlan** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %15 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %19 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %23 = call i32 @br_switchdev_port_vlan_add(%struct.TYPE_3__* %17, i32 %20, i32 %21, %struct.netlink_ext_ack* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %93

33:                                               ; preds = %26, %6
  %34 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %35 = call i32 @br_vlan_is_brentry(%struct.net_bridge_vlan* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %47 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %48 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %53 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @br_fdb_insert(%struct.net_bridge* %46, i32* null, i32 %51, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %60 = call i32 @br_err(%struct.net_bridge* %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %83

61:                                               ; preds = %45
  %62 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %63 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %62, i32 0, i32 2
  %64 = call i32 @refcount_inc(i32* %63)
  %65 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %66 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %67 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %9, align 8
  %71 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %12, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %61, %33
  %76 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @__vlan_add_flags(%struct.net_bridge_vlan* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32*, i32** %12, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %75
  store i32 0, i32* %7, align 4
  br label %93

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83, %42
  %85 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %86 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %10, align 8
  %89 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @br_switchdev_port_vlan_del(%struct.TYPE_3__* %87, i32 %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %84, %82, %31
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @br_switchdev_port_vlan_add(%struct.TYPE_3__*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @br_vlan_is_brentry(%struct.net_bridge_vlan*) #1

declare dso_local i32 @br_fdb_insert(%struct.net_bridge*, i32*, i32, i32) #1

declare dso_local i32 @br_err(%struct.net_bridge*, i8*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i64 @__vlan_add_flags(%struct.net_bridge_vlan*, i32) #1

declare dso_local i32 @br_switchdev_port_vlan_del(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
