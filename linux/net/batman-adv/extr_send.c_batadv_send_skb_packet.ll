; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.batadv_hard_iface = type { i64, %struct.TYPE_2__*, i32 }
%struct.batadv_priv = type { i32 }
%struct.ethhdr = type { i8*, i32, i32 }

@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Interface %s is not up - can't send packet via that interface!\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_BATMAN = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_send_skb_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.batadv_priv* @netdev_priv(i32 %13)
  store %struct.batadv_priv* %14, %struct.batadv_priv** %8, align 8
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %16 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %23 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %95

31:                                               ; preds = %21
  %32 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %33 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_UP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %42 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %95

47:                                               ; preds = %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @ETH_HLEN, align 4
  %50 = call i64 @batadv_skb_head_push(%struct.sk_buff* %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %95

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @skb_reset_mac_header(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %56)
  store %struct.ethhdr* %57, %struct.ethhdr** %9, align 8
  %58 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %59 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %62 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ether_addr_copy(i32 %60, i32* %65)
  %67 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %68 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @ether_addr_copy(i32 %69, i32* %70)
  %72 = load i32, i32* @ETH_P_BATMAN, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @ETH_HLEN, align 4
  %78 = call i32 @skb_set_network_header(%struct.sk_buff* %76, i32 %77)
  %79 = load i32, i32* @ETH_P_BATMAN, align 4
  %80 = call i8* @htons(i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %84 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  store %struct.TYPE_2__* %85, %struct.TYPE_2__** %87, align 8
  %88 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @batadv_nc_skb_store_for_decoding(%struct.batadv_priv* %88, %struct.sk_buff* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @dev_queue_xmit(%struct.sk_buff* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @net_xmit_eval(i32 %93)
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %52, %40, %30, %20
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %53
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i64 @batadv_skb_head_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_nc_skb_store_for_decoding(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
