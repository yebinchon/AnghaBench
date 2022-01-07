; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_prepare_unicast_4addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_prepare_unicast_4addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_unicast_4addr_packet = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BATADV_UNICAST_4ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_send_skb_prepare_unicast_4addr(%struct.batadv_priv* %0, %struct.sk_buff* %1, %struct.batadv_orig_node* %2, i32 %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_unicast_4addr_packet*, align 8
  %11 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %13 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %12)
  store %struct.batadv_hard_iface* %13, %struct.batadv_hard_iface** %9, align 8
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %15 = icmp ne %struct.batadv_hard_iface* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %46

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %20 = call i32 @batadv_send_skb_push_fill_unicast(%struct.sk_buff* %18, i32 24, %struct.batadv_orig_node* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.batadv_unicast_4addr_packet*
  store %struct.batadv_unicast_4addr_packet* %27, %struct.batadv_unicast_4addr_packet** %10, align 8
  %28 = load i32, i32* @BATADV_UNICAST_4ADDR, align 4
  %29 = load %struct.batadv_unicast_4addr_packet*, %struct.batadv_unicast_4addr_packet** %10, align 8
  %30 = getelementptr inbounds %struct.batadv_unicast_4addr_packet, %struct.batadv_unicast_4addr_packet* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.batadv_unicast_4addr_packet*, %struct.batadv_unicast_4addr_packet** %10, align 8
  %33 = getelementptr inbounds %struct.batadv_unicast_4addr_packet, %struct.batadv_unicast_4addr_packet* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %36 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ether_addr_copy(i32 %34, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.batadv_unicast_4addr_packet*, %struct.batadv_unicast_4addr_packet** %10, align 8
  %43 = getelementptr inbounds %struct.batadv_unicast_4addr_packet, %struct.batadv_unicast_4addr_packet* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.batadv_unicast_4addr_packet*, %struct.batadv_unicast_4addr_packet** %10, align 8
  %45 = getelementptr inbounds %struct.batadv_unicast_4addr_packet, %struct.batadv_unicast_4addr_packet* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %23, %22, %16
  %47 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %48 = icmp ne %struct.batadv_hard_iface* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %51 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_send_skb_push_fill_unicast(%struct.sk_buff*, i32, %struct.batadv_orig_node*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
