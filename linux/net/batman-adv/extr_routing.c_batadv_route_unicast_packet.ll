; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_route_unicast_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_route_unicast_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_unicast_packet = type { i32, i32, i32 }
%struct.ethhdr = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Warning - can't forward unicast packet from %pM to %pM: ttl exceeded\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@BATADV_CNT_FORWARD = common dso_local global i32 0, align 4
@BATADV_CNT_FORWARD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.batadv_hard_iface*)* @batadv_route_unicast_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_route_unicast_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_unicast_packet*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.batadv_priv* @netdev_priv(i32 %15)
  store %struct.batadv_priv* %16, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %17)
  store %struct.ethhdr* %18, %struct.ethhdr** %8, align 8
  %19 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.batadv_unicast_packet*
  store %struct.batadv_unicast_packet* %23, %struct.batadv_unicast_packet** %7, align 8
  %24 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %7, align 8
  %25 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %30 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %7, align 8
  %33 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  br label %100

36:                                               ; preds = %2
  %37 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %38 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %7, align 8
  %39 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %37, i32 %40)
  store %struct.batadv_orig_node* %41, %struct.batadv_orig_node** %6, align 8
  %42 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %43 = icmp ne %struct.batadv_orig_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %100

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i64, i64* @ETH_HLEN, align 8
  %48 = call i64 @skb_cow(%struct.sk_buff* %46, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %97

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.batadv_unicast_packet*
  store %struct.batadv_unicast_packet* %55, %struct.batadv_unicast_packet** %7, align 8
  %56 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %7, align 8
  %57 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %7, align 8
  %61 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %65 [
    i32 128, label %63
    i32 129, label %64
  ]

63:                                               ; preds = %51
  store i32 4, i32* %10, align 4
  br label %66

64:                                               ; preds = %51
  store i32 12, i32* %10, align 4
  br label %66

65:                                               ; preds = %51
  store i32 -1, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %64, %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @batadv_skb_set_priority(%struct.sk_buff* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %79 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %80 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %77, %struct.batadv_orig_node* %78, %struct.batadv_hard_iface* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %85, i32* %11, align 4
  %86 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %87 = load i32, i32* @BATADV_CNT_FORWARD, align 4
  %88 = call i32 @batadv_inc_counter(%struct.batadv_priv* %86, i32 %87)
  %89 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %90 = load i32, i32* @BATADV_CNT_FORWARD_BYTES, align 4
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @ETH_HLEN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @batadv_add_counter(%struct.batadv_priv* %89, i32 %90, i64 %94)
  br label %96

96:                                               ; preds = %84, %73
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %97

97:                                               ; preds = %96, %50
  %98 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %99 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %98)
  br label %100

100:                                              ; preds = %97, %44, %28
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i32 @batadv_skb_set_priority(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
