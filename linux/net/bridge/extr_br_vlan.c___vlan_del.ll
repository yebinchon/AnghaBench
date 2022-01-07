; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.net_bridge_vlan*, %struct.net_bridge_port* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge_port = type { i32, i32 }
%struct.net_bridge_vlan_group = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@br_vlan_rht_params = common dso_local global i32 0, align 4
@nbp_vlan_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan*)* @__vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_del(%struct.net_bridge_vlan* %0) #0 {
  %2 = alloca %struct.net_bridge_vlan*, align 8
  %3 = alloca %struct.net_bridge_vlan*, align 8
  %4 = alloca %struct.net_bridge_vlan_group*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge_vlan* %0, %struct.net_bridge_vlan** %2, align 8
  %7 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  store %struct.net_bridge_vlan* %7, %struct.net_bridge_vlan** %3, align 8
  store %struct.net_bridge_port* null, %struct.net_bridge_port** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %9 = call i64 @br_vlan_is_master(%struct.net_bridge_vlan* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %13 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.net_bridge_vlan_group* @br_vlan_group(%struct.TYPE_2__* %14)
  store %struct.net_bridge_vlan_group* %15, %struct.net_bridge_vlan_group** %4, align 8
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %18 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %17, i32 0, i32 6
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %18, align 8
  store %struct.net_bridge_port* %19, %struct.net_bridge_port** %5, align 8
  %20 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %21 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %20, i32 0, i32 6
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %21, align 8
  %23 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port* %22)
  store %struct.net_bridge_vlan_group* %23, %struct.net_bridge_vlan_group** %4, align 8
  %24 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %25 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %24, i32 0, i32 5
  %26 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %25, align 8
  store %struct.net_bridge_vlan* %26, %struct.net_bridge_vlan** %3, align 8
  br label %27

27:                                               ; preds = %16, %11
  %28 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %29 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %30 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__vlan_delete_pvid(%struct.net_bridge_vlan_group* %28, i32 %31)
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %34 = icmp ne %struct.net_bridge_port* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %40 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %43 = call i32 @__vlan_vid_del(i32 %38, i32 %41, %struct.net_bridge_vlan* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %110

47:                                               ; preds = %35
  br label %67

48:                                               ; preds = %27
  %49 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %50 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %55 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @br_switchdev_port_vlan_del(i32 %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %110

66:                                               ; preds = %60, %48
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %69 = call i64 @br_vlan_should_use(%struct.net_bridge_vlan* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %75 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %79 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %71, %67
  %83 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %84 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %85 = icmp ne %struct.net_bridge_vlan* %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %88 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %89 = call i32 @vlan_tunnel_info_del(%struct.net_bridge_vlan_group* %87, %struct.net_bridge_vlan* %88)
  %90 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %91 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %90, i32 0, i32 0
  %92 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %93 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %92, i32 0, i32 2
  %94 = load i32, i32* @br_vlan_rht_params, align 4
  %95 = call i32 @rhashtable_remove_fast(i32* %91, i32* %93, i32 %94)
  %96 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %97 = call i32 @__vlan_del_list(%struct.net_bridge_vlan* %96)
  %98 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %99 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %100 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nbp_vlan_set_vlan_dev_state(%struct.net_bridge_port* %98, i32 %101)
  %103 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %104 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %103, i32 0, i32 0
  %105 = load i32, i32* @nbp_vlan_rcu_free, align 4
  %106 = call i32 @call_rcu(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %86, %82
  %108 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %109 = call i32 @br_vlan_put_master(%struct.net_bridge_vlan* %108)
  br label %110

110:                                              ; preds = %107, %65, %46
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @br_vlan_is_master(%struct.net_bridge_vlan*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group(%struct.TYPE_2__*) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local i32 @__vlan_delete_pvid(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @__vlan_vid_del(i32, i32, %struct.net_bridge_vlan*) #1

declare dso_local i32 @br_switchdev_port_vlan_del(i32, i32) #1

declare dso_local i64 @br_vlan_should_use(%struct.net_bridge_vlan*) #1

declare dso_local i32 @vlan_tunnel_info_del(%struct.net_bridge_vlan_group*, %struct.net_bridge_vlan*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @__vlan_del_list(%struct.net_bridge_vlan*) #1

declare dso_local i32 @nbp_vlan_set_vlan_dev_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @br_vlan_put_master(%struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
