; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_allowed_egress.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_allowed_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan_group = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_bridge_vlan = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_allowed_egress(%struct.net_bridge_vlan_group* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_vlan_group*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_bridge_vlan*, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan_group** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @br_vlan_get_tag(%struct.sk_buff* %15, i32* %7)
  %17 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %17, i32 %18)
  store %struct.net_bridge_vlan* %19, %struct.net_bridge_vlan** %6, align 8
  %20 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %21 = icmp ne %struct.net_bridge_vlan* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %24 = call i64 @br_vlan_should_use(%struct.net_bridge_vlan* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %22, %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @br_vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i64 @br_vlan_should_use(%struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
