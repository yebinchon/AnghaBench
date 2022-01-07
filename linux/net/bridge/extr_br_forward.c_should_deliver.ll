; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_should_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_should_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.net_bridge_vlan_group = type { i32 }

@BR_HAIRPIN_MODE = common dso_local global i32 0, align 4
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, %struct.sk_buff*)* @should_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_deliver(%struct.net_bridge_port* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_bridge_vlan_group*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = call %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port* %6)
  store %struct.net_bridge_vlan_group* %7, %struct.net_bridge_vlan_group** %5, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BR_HAIRPIN_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %14, %2
  %23 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i64 @br_allowed_egress(%struct.net_bridge_vlan_group* %23, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @nbp_switchdev_allowed_egress(%struct.net_bridge_port* %34, %struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @br_skb_isolated(%struct.net_bridge_port* %39, %struct.sk_buff* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %33, %27, %22, %14
  %45 = phi i1 [ false, %33 ], [ false, %27 ], [ false, %22 ], [ false, %14 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local i64 @br_allowed_egress(%struct.net_bridge_vlan_group*, %struct.sk_buff*) #1

declare dso_local i64 @nbp_switchdev_allowed_egress(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @br_skb_isolated(%struct.net_bridge_port*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
