; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_br_vlan_tunnel_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_br_vlan_tunnel_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32 }
%struct.rhashtable = type { i32 }

@br_vlan_tunnel_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_vlan* (%struct.rhashtable*, i32)* @br_vlan_tunnel_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_vlan* @br_vlan_tunnel_lookup(%struct.rhashtable* %0, i32 %1) #0 {
  %3 = alloca %struct.rhashtable*, align 8
  %4 = alloca i32, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %6 = load i32, i32* @br_vlan_tunnel_rht_params, align 4
  %7 = call %struct.net_bridge_vlan* @rhashtable_lookup_fast(%struct.rhashtable* %5, i32* %4, i32 %6)
  ret %struct.net_bridge_vlan* %7
}

declare dso_local %struct.net_bridge_vlan* @rhashtable_lookup_fast(%struct.rhashtable*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
