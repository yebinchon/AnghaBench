; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_..bridgebr_private.h_br_vlan_should_use.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_..bridgebr_private.h_br_vlan_should_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan*)* @br_vlan_should_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_vlan_should_use(%struct.net_bridge_vlan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.net_bridge_vlan* %0, %struct.net_bridge_vlan** %3, align 8
  %4 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %5 = call i64 @br_vlan_is_master(%struct.net_bridge_vlan* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %9 = call i64 @br_vlan_is_brentry(%struct.net_bridge_vlan* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %14

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @br_vlan_is_master(%struct.net_bridge_vlan*) #1

declare dso_local i64 @br_vlan_is_brentry(%struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
