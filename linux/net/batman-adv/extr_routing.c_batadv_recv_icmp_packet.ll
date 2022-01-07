; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_icmp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_icmp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_icmp_header = type { i64, i32, i32 }
%struct.batadv_icmp_packet_rr = type { i64, i32* }
%struct.ethhdr = type { i32, i32 }
%struct.batadv_orig_node = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_ECHO_REPLY = common dso_local global i64 0, align 8
@BATADV_ECHO_REQUEST = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@BATADV_RR_LEN = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_recv_icmp_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_icmp_header*, align 8
  %8 = alloca %struct.batadv_icmp_packet_rr*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.batadv_orig_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %15 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.batadv_priv* @netdev_priv(i32 %16)
  store %struct.batadv_priv* %17, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %10, align 8
  store i32 16, i32* %11, align 4
  %18 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %178

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %29)
  store %struct.ethhdr* %30, %struct.ethhdr** %9, align 8
  %31 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @is_valid_ether_addr(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %178

37:                                               ; preds = %28
  %38 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %39 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_multicast_ether_addr(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %178

44:                                               ; preds = %37
  %45 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %46 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %178

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.batadv_icmp_header*
  store %struct.batadv_icmp_header* %56, %struct.batadv_icmp_header** %7, align 8
  %57 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %58 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BATADV_ECHO_REPLY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %64 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BATADV_ECHO_REQUEST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %62, %52
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %72, 16
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i64 @skb_linearize(%struct.sk_buff* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %178

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* @ETH_HLEN, align 4
  %82 = call i64 @skb_cow(%struct.sk_buff* %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %178

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %86)
  store %struct.ethhdr* %87, %struct.ethhdr** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.batadv_icmp_header*
  store %struct.batadv_icmp_header* %91, %struct.batadv_icmp_header** %7, align 8
  %92 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %93 = bitcast %struct.batadv_icmp_header* %92 to %struct.batadv_icmp_packet_rr*
  store %struct.batadv_icmp_packet_rr* %93, %struct.batadv_icmp_packet_rr** %8, align 8
  %94 = load %struct.batadv_icmp_packet_rr*, %struct.batadv_icmp_packet_rr** %8, align 8
  %95 = getelementptr inbounds %struct.batadv_icmp_packet_rr, %struct.batadv_icmp_packet_rr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BATADV_RR_LEN, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %178

100:                                              ; preds = %85
  %101 = load %struct.batadv_icmp_packet_rr*, %struct.batadv_icmp_packet_rr** %8, align 8
  %102 = getelementptr inbounds %struct.batadv_icmp_packet_rr, %struct.batadv_icmp_packet_rr* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.batadv_icmp_packet_rr*, %struct.batadv_icmp_packet_rr** %8, align 8
  %105 = getelementptr inbounds %struct.batadv_icmp_packet_rr, %struct.batadv_icmp_packet_rr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %110 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ether_addr_copy(i32 %108, i32 %111)
  %113 = load %struct.batadv_icmp_packet_rr*, %struct.batadv_icmp_packet_rr** %8, align 8
  %114 = getelementptr inbounds %struct.batadv_icmp_packet_rr, %struct.batadv_icmp_packet_rr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %100, %68, %62
  %118 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %119 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %120 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @batadv_recv_my_icmp_packet(%struct.batadv_priv* %125, %struct.sk_buff* %126)
  store i32 %127, i32* %3, align 4
  br label %182

128:                                              ; preds = %117
  %129 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %130 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = call i32 @batadv_recv_icmp_ttl_exceeded(%struct.batadv_priv* %134, %struct.sk_buff* %135)
  store i32 %136, i32* %3, align 4
  br label %182

137:                                              ; preds = %128
  %138 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %139 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %140 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %138, i32 %141)
  store %struct.batadv_orig_node* %142, %struct.batadv_orig_node** %10, align 8
  %143 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %144 = icmp ne %struct.batadv_orig_node* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  br label %178

146:                                              ; preds = %137
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = load i32, i32* @ETH_HLEN, align 4
  %149 = call i64 @skb_cow(%struct.sk_buff* %147, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %171

152:                                              ; preds = %146
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.batadv_icmp_header*
  store %struct.batadv_icmp_header* %156, %struct.batadv_icmp_header** %7, align 8
  %157 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %158 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %163 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %164 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %161, %struct.batadv_orig_node* %162, %struct.batadv_hard_iface* %163)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %152
  %169 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %168, %152
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %171

171:                                              ; preds = %170, %151
  %172 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %173 = icmp ne %struct.batadv_orig_node* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %176 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %145, %99, %84, %78, %51, %43, %36, %27
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = call i32 @kfree_skb(%struct.sk_buff* %179)
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %133, %124
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @batadv_recv_my_icmp_packet(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_recv_icmp_ttl_exceeded(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
