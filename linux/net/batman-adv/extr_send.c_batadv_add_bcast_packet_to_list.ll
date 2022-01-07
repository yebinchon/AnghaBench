; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_add_bcast_packet_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_add_bcast_packet_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_forw_packet = type { i32, i32 }
%struct.batadv_bcast_packet = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@batadv_send_outstanding_bcast_packet = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_add_bcast_packet_to_list(%struct.batadv_priv* %0, %struct.sk_buff* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_hard_iface*, align 8
  %11 = alloca %struct.batadv_forw_packet*, align 8
  %12 = alloca %struct.batadv_bcast_packet*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %15 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %14)
  store %struct.batadv_hard_iface* %15, %struct.batadv_hard_iface** %10, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %17 = icmp ne %struct.batadv_hard_iface* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %27 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %26)
  br label %66

28:                                               ; preds = %19
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %31 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %30, i32 0, i32 0
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = call %struct.batadv_forw_packet* @batadv_forw_packet_alloc(%struct.batadv_hard_iface* %29, i32* null, i32* %31, %struct.batadv_priv* %32, %struct.sk_buff* %33)
  store %struct.batadv_forw_packet* %34, %struct.batadv_forw_packet** %11, align 8
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %36 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %35)
  %37 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %11, align 8
  %38 = icmp ne %struct.batadv_forw_packet* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %63

40:                                               ; preds = %28
  %41 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.batadv_bcast_packet*
  store %struct.batadv_bcast_packet* %44, %struct.batadv_bcast_packet** %12, align 8
  %45 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %12, align 8
  %46 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %11, align 8
  %51 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %11, align 8
  %53 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %52, i32 0, i32 1
  %54 = load i32, i32* @batadv_send_outstanding_bcast_packet, align 4
  %55 = call i32 @INIT_DELAYED_WORK(i32* %53, i32 %54)
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %57 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %11, align 8
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @batadv_forw_packet_bcast_queue(%struct.batadv_priv* %56, %struct.batadv_forw_packet* %57, i64 %60)
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %39
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %63, %25, %18
  %67 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %40
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_forw_packet* @batadv_forw_packet_alloc(%struct.batadv_hard_iface*, i32*, i32*, %struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @batadv_forw_packet_bcast_queue(%struct.batadv_priv*, %struct.batadv_forw_packet*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
