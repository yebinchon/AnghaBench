; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.h_ovs_vport_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.h_ovs_vport_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.datapath = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.datapath*, i32)* @ovs_vport_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @ovs_vport_rcu(%struct.datapath* %0, i32 %1) #0 {
  %3 = alloca %struct.datapath*, align 8
  %4 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @rcu_read_lock_held()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.datapath*, %struct.datapath** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.vport* @ovs_lookup_vport(%struct.datapath* %10, i32 %11)
  ret %struct.vport* %12
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local %struct.vport* @ovs_lookup_vport(%struct.datapath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
