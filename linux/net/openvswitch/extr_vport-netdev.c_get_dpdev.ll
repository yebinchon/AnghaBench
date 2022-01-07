; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_get_dpdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_get_dpdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.datapath = type { i32 }
%struct.vport = type { %struct.net_device* }

@OVSP_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.datapath*)* @get_dpdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @get_dpdev(%struct.datapath* %0) #0 {
  %2 = alloca %struct.datapath*, align 8
  %3 = alloca %struct.vport*, align 8
  store %struct.datapath* %0, %struct.datapath** %2, align 8
  %4 = load %struct.datapath*, %struct.datapath** %2, align 8
  %5 = load i32, i32* @OVSP_LOCAL, align 4
  %6 = call %struct.vport* @ovs_vport_ovsl(%struct.datapath* %4, i32 %5)
  store %struct.vport* %6, %struct.vport** %3, align 8
  %7 = load %struct.vport*, %struct.vport** %3, align 8
  %8 = getelementptr inbounds %struct.vport, %struct.vport* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  ret %struct.net_device* %9
}

declare dso_local %struct.vport* @ovs_vport_ovsl(%struct.datapath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
