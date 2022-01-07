; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_bcast_packet = type { i64 }
%struct.batadv_priv = type { i32, i32 }
%struct.vlan_ethhdr = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@BATADV_BCAST = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@BATADV_CNT_RX = common dso_local global i32 0, align 4
@BATADV_CNT_RX_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_interface_rx(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2, %struct.batadv_orig_node* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca %struct.batadv_bcast_packet*, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca %struct.vlan_ethhdr*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.batadv_priv* %16, %struct.batadv_priv** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.batadv_bcast_packet*
  store %struct.batadv_bcast_packet* %20, %struct.batadv_bcast_packet** %9, align 8
  %21 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %9, align 8
  %22 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BATADV_BCAST, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @skb_pull_rcsum(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_reset_mac_header(%struct.sk_buff* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @nf_reset_ct(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i64, i64* @ETH_HLEN, align 8
  %36 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %163

43:                                               ; preds = %4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call zeroext i16 @batadv_get_vid(%struct.sk_buff* %44, i32 0)
  store i16 %45, i16* %13, align 2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %46)
  store %struct.ethhdr* %47, %struct.ethhdr** %12, align 8
  %48 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  switch i32 %51, label %71 [
    i32 129, label %52
    i32 128, label %70
  ]

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %55 = call i32 @pskb_may_pull(%struct.sk_buff* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %163

58:                                               ; preds = %52
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %62, %struct.vlan_ethhdr** %11, align 8
  %63 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %64 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 128)
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %43, %69
  br label %163

71:                                               ; preds = %43, %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @eth_type_trans(%struct.sk_buff* %72, %struct.net_device* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %78)
  %80 = load i64, i64* @ETH_HLEN, align 8
  %81 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %77, %struct.ethhdr* %79, i64 %80)
  %82 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %83 = load i32, i32* @BATADV_CNT_RX, align 4
  %84 = call i32 @batadv_inc_counter(%struct.batadv_priv* %82, i32 %83)
  %85 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %86 = load i32, i32* @BATADV_CNT_RX_BYTES, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ETH_HLEN, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @batadv_add_counter(%struct.batadv_priv* %85, i32 %86, i64 %91)
  %93 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i16, i16* %13, align 2
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @batadv_bla_rx(%struct.batadv_priv* %93, %struct.sk_buff* %94, i16 zeroext %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  br label %166

100:                                              ; preds = %71
  %101 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %102 = icmp ne %struct.batadv_orig_node* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %105 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %106 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %107 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i16, i16* %13, align 2
  %110 = call i32 @batadv_tt_add_temporary_global_entry(%struct.batadv_priv* %104, %struct.batadv_orig_node* %105, i32 %108, i16 zeroext %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %113 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @is_multicast_ether_addr(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %111
  %118 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %119 = load i16, i16* %13, align 2
  %120 = call i64 @batadv_vlan_ap_isola_get(%struct.batadv_priv* %118, i16 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %117
  %123 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %124 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %125 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i16, i16* %13, align 2
  %128 = call i64 @batadv_tt_global_is_isolated(%struct.batadv_priv* %123, i32 %126, i16 zeroext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %132 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %140 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %130, %122, %117
  br label %160

147:                                              ; preds = %111
  %148 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %149 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %150 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %153 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i16, i16* %13, align 2
  %156 = call i64 @batadv_is_ap_isolated(%struct.batadv_priv* %148, i32 %151, i32 %154, i16 zeroext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %163

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = call i32 @netif_rx(%struct.sk_buff* %161)
  br label %166

163:                                              ; preds = %158, %70, %57, %42
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = call i32 @kfree_skb(%struct.sk_buff* %164)
  br label %166

166:                                              ; preds = %163, %160, %99
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local zeroext i16 @batadv_get_vid(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, %struct.ethhdr*, i64) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i64 @batadv_bla_rx(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext, i32) #1

declare dso_local i32 @batadv_tt_add_temporary_global_entry(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i16 zeroext) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @batadv_vlan_ap_isola_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i64 @batadv_tt_global_is_isolated(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i64 @batadv_is_ap_isolated(%struct.batadv_priv*, i32, i32, i16 zeroext) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
