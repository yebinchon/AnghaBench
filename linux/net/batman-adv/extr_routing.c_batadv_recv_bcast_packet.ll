; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_bcast_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_bcast_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i8*, i32, i32, i32 }
%struct.batadv_bcast_packet = type { i32, i32, i32 }
%struct.ethhdr = type { i32, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_BCAST_MAX_AGE = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_recv_bcast_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_bcast_packet*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.batadv_priv* @netdev_priv(i32 %15)
  store %struct.batadv_priv* %16, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  store i32 12, i32* %9, align 4
  %17 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @pskb_may_pull(%struct.sk_buff* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %178

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %28)
  store %struct.ethhdr* %29, %struct.ethhdr** %8, align 8
  %30 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_broadcast_ether_addr(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %178

36:                                               ; preds = %27
  %37 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_multicast_ether_addr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %178

43:                                               ; preds = %36
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %45 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %178

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.batadv_bcast_packet*
  store %struct.batadv_bcast_packet* %55, %struct.batadv_bcast_packet** %7, align 8
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %57 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %7, align 8
  %58 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %178

63:                                               ; preds = %51
  %64 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %7, align 8
  %65 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %178

69:                                               ; preds = %63
  %70 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %71 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %7, align 8
  %72 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %70, i32 %73)
  store %struct.batadv_orig_node* %74, %struct.batadv_orig_node** %6, align 8
  %75 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %76 = icmp ne %struct.batadv_orig_node* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %178

78:                                               ; preds = %69
  %79 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %80 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %79, i32 0, i32 1
  %81 = call i32 @spin_lock_bh(i32* %80)
  %82 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %7, align 8
  %83 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ntohl(i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %87 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %90 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i64 @batadv_test_bit(i32 %88, i8* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %174

96:                                               ; preds = %78
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %99 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %97 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %11, align 8
  %105 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* @BATADV_BCAST_MAX_AGE, align 4
  %108 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %109 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %108, i32 0, i32 3
  %110 = call i64 @batadv_window_protected(%struct.batadv_priv* %105, i8* %106, i32 %107, i32* %109, i32* null)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  br label %174

113:                                              ; preds = %96
  %114 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %115 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %116 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %11, align 8
  %119 = call i64 @batadv_bit_get_packet(%struct.batadv_priv* %114, i32 %117, i8* %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %124 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %127 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = call i64 @batadv_bla_check_bcast_duplist(%struct.batadv_priv* %129, %struct.sk_buff* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %178

134:                                              ; preds = %125
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = call i32 @batadv_skb_set_priority(%struct.sk_buff* %135, i32 12)
  %137 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %139 = call i32 @batadv_add_bcast_packet_to_list(%struct.batadv_priv* %137, %struct.sk_buff* %138, i32 1, i32 0)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i64 @batadv_bla_is_backbone_gw(%struct.sk_buff* %140, %struct.batadv_orig_node* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %178

146:                                              ; preds = %134
  %147 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i64 @batadv_dat_snoop_incoming_arp_request(%struct.batadv_priv* %147, %struct.sk_buff* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %172

153:                                              ; preds = %146
  %154 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i64 @batadv_dat_snoop_incoming_arp_reply(%struct.batadv_priv* %154, %struct.sk_buff* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %172

160:                                              ; preds = %153
  %161 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @batadv_dat_snoop_incoming_dhcp_ack(%struct.batadv_priv* %161, %struct.sk_buff* %162, i32 %163)
  %165 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %166 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %171 = call i32 @batadv_interface_rx(i32 %167, %struct.sk_buff* %168, i32 %169, %struct.batadv_orig_node* %170)
  br label %172

172:                                              ; preds = %160, %159, %152
  %173 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %173, i32* %10, align 4
  br label %181

174:                                              ; preds = %112, %95
  %175 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %176 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %175, i32 0, i32 1
  %177 = call i32 @spin_unlock_bh(i32* %176)
  br label %178

178:                                              ; preds = %174, %145, %133, %77, %68, %62, %50, %42, %35, %26
  %179 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %180 = call i32 @kfree_skb(%struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %178, %172
  %182 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %183 = icmp ne %struct.batadv_orig_node* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %186 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i64 @batadv_test_bit(i32, i8*, i8*) #1

declare dso_local i64 @batadv_window_protected(%struct.batadv_priv*, i8*, i32, i32*, i32*) #1

declare dso_local i64 @batadv_bit_get_packet(%struct.batadv_priv*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @batadv_bla_check_bcast_duplist(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_skb_set_priority(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_add_bcast_packet_to_list(%struct.batadv_priv*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @batadv_bla_is_backbone_gw(%struct.sk_buff*, %struct.batadv_orig_node*, i32) #1

declare dso_local i64 @batadv_dat_snoop_incoming_arp_request(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i64 @batadv_dat_snoop_incoming_arp_reply(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dat_snoop_incoming_dhcp_ack(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_interface_rx(i32, %struct.sk_buff*, i32, %struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
