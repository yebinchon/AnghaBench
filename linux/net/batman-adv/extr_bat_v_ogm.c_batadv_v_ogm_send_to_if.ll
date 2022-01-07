; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_send_to_if.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_send_to_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i64, i32 }
%struct.batadv_priv = type { i32 }

@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@BATADV_CNT_MGMT_TX = common dso_local global i32 0, align 4
@BATADV_CNT_MGMT_TX_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.batadv_hard_iface*)* @batadv_v_ogm_send_to_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_send_to_if(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %7 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.batadv_priv* @netdev_priv(i32 %8)
  store %struct.batadv_priv* %9, %struct.batadv_priv** %5, align 8
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %11 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %18 = load i32, i32* @BATADV_CNT_MGMT_TX, align 4
  %19 = call i32 @batadv_inc_counter(%struct.batadv_priv* %17, i32 %18)
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %21 = load i32, i32* @BATADV_CNT_MGMT_TX_BYTES, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETH_HLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @batadv_add_counter(%struct.batadv_priv* %20, i32 %21, i64 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %30 = call i32 @batadv_send_broadcast_skb(%struct.sk_buff* %28, %struct.batadv_hard_iface* %29)
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i32 @batadv_send_broadcast_skb(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
