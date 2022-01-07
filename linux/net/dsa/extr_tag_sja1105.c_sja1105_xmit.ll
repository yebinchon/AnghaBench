; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { i32 }

@ETH_P_SJA1105 = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @sja1105_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sja1105_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %11)
  store %struct.dsa_port* %12, %struct.dsa_port** %6, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 1
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %14, align 8
  store %struct.dsa_switch* %15, %struct.dsa_switch** %7, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dsa_8021q_tx_vid(%struct.dsa_switch* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @netdev_txq_to_tc(%struct.net_device* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @sja1105_is_link_local(%struct.sk_buff* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call %struct.sk_buff* @dsa_defer_xmit(%struct.sk_buff* %31, %struct.net_device* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %36 = call i64 @dsa_port_is_vlan_filtering(%struct.dsa_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %3, align 8
  br label %50

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* @ETH_P_SJA1105, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.sk_buff* @dsa_8021q_xmit(%struct.sk_buff* %41, %struct.net_device* %42, i32 %43, i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %3, align 8
  br label %50

50:                                               ; preds = %40, %38, %30
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %51
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @dsa_8021q_tx_vid(%struct.dsa_switch*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netdev_txq_to_tc(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sja1105_is_link_local(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dsa_defer_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @dsa_port_is_vlan_filtering(%struct.dsa_port*) #1

declare dso_local %struct.sk_buff* @dsa_8021q_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
