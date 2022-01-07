; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_unhandled_unicast_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_unhandled_unicast_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_unicast_packet = type { i32 }
%struct.batadv_priv = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_recv_unhandled_unicast_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_unicast_packet*, align 8
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.batadv_priv* @netdev_priv(i32 %12)
  store %struct.batadv_priv* %13, %struct.batadv_priv** %7, align 8
  store i32 4, i32* %9, align 4
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @batadv_check_unicast_packet(%struct.batadv_priv* %14, %struct.sk_buff* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.batadv_unicast_packet*
  store %struct.batadv_unicast_packet* %25, %struct.batadv_unicast_packet** %6, align 8
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %27 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %6, align 8
  %28 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %36 = call i32 @batadv_route_unicast_packet(%struct.sk_buff* %34, %struct.batadv_hard_iface* %35)
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %32, %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @batadv_check_unicast_packet(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_route_unicast_packet(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
