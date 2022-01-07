; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge_vlan = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_vlan_delete(%struct.net_bridge_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %9 = call i32 @nbp_vlan_group(%struct.net_bridge_port* %8)
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.net_bridge_vlan* @br_vlan_find(i32 %9, i32 %10)
  store %struct.net_bridge_vlan* %11, %struct.net_bridge_vlan** %6, align 8
  %12 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %13 = icmp ne %struct.net_bridge_vlan* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @br_fdb_find_delete_local(i32 %20, %struct.net_bridge_port* %21, i32 %26, i32 %27)
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @br_fdb_delete_by_port(i32 %31, %struct.net_bridge_port* %32, i32 %33, i32 0)
  %35 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %36 = call i32 @__vlan_del(%struct.net_bridge_vlan* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %17, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(i32, i32) #1

declare dso_local i32 @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local i32 @br_fdb_find_delete_local(i32, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @br_fdb_delete_by_port(i32, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @__vlan_del(%struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
