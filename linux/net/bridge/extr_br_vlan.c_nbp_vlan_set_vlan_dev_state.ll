; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_set_vlan_dev_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_set_vlan_dev_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@BROPT_VLAN_BRIDGE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*, i32)* @nbp_vlan_set_vlan_dev_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbp_vlan_set_vlan_dev_state(%struct.net_bridge_port* %0, i32 %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @BROPT_VLAN_BRIDGE_BINDING, align 4
  %10 = call i32 @br_opt_get(%struct.TYPE_3__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.net_device* @br_vlan_get_upper_bind_vlan_dev(i32 %18, i32 %19)
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @br_vlan_set_vlan_dev_state(%struct.TYPE_3__* %26, %struct.net_device* %27)
  br label %29

29:                                               ; preds = %12, %23, %13
  ret void
}

declare dso_local i32 @br_opt_get(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.net_device* @br_vlan_get_upper_bind_vlan_dev(i32, i32) #1

declare dso_local i32 @br_vlan_set_vlan_dev_state(%struct.TYPE_3__*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
