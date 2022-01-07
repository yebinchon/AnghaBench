; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_delete_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_delete_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan_group = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan_group*, i64)* @__vlan_delete_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_delete_pvid(%struct.net_bridge_vlan_group* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_vlan_group*, align 8
  %5 = alloca i64, align 8
  store %struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan_group** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %7 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = call i32 (...) @smp_wmb()
  %14 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %15 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
