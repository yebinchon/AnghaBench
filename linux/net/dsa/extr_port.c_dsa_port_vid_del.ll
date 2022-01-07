; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_vid_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_vid_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SWITCHDEV_OBJ_ID_PORT_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_vid_del(%struct.dsa_port* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.switchdev_obj_port_vlan, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %5, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @SWITCHDEV_OBJ_ID_PORT_VLAN, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %14 = call i32 @dsa_port_vlan_del(%struct.dsa_port* %13, %struct.switchdev_obj_port_vlan* %5)
  ret i32 %14
}

declare dso_local i32 @dsa_port_vlan_del(%struct.dsa_port*, %struct.switchdev_obj_port_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
