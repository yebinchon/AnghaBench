; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp_offload.c_udp6_ufo_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp_offload.c_udp6_ufo_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32, i64, i32, i32, i64 }
%struct.frag_hdr = type { i32, i64, i64 }
%struct.ipv6hdr = type { i32, i32 }
%struct.udphdr = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NEXTHDR_FRAGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @udp6_ufo_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @udp6_ufo_fragment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frag_hdr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ipv6hdr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sk_buff* @ERR_PTR(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  store i64 24, i64* %14, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ule i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %230

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  %47 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.sk_buff* @skb_udp_tunnel_segment(%struct.sk_buff* %52, i32 %53, i32 1)
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  br label %229

55:                                               ; preds = %41, %36
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SKB_GSO_UDP, align 4
  %61 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %230

66:                                               ; preds = %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @pskb_may_pull(%struct.sk_buff* %67, i32 8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %230

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call %struct.sk_buff* @__udp_gso_segment(%struct.sk_buff* %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %3, align 8
  br label %232

83:                                               ; preds = %71
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %84)
  store %struct.udphdr* %85, %struct.udphdr** %19, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %86)
  store %struct.ipv6hdr* %87, %struct.ipv6hdr** %18, align 8
  %88 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %89 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @skb_checksum(%struct.sk_buff* %90, i32 0, i32 %93, i32 0)
  store i32 %94, i32* %15, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ipv6hdr*, %struct.ipv6hdr** %18, align 8
  %99 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %98, i32 0, i32 1
  %100 = load %struct.ipv6hdr*, %struct.ipv6hdr** %18, align 8
  %101 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @udp_v6_check(i32 %97, i32* %99, i32* %101, i32 %102)
  %104 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %105 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %107 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %83
  %111 = load i64, i64* @CSUM_MANGLED_0, align 8
  %112 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %113 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %83
  %115 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %114
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i32 @skb_tnl_header_len(%struct.sk_buff* %127)
  store i32 %128, i32* %16, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %14, align 8
  %135 = add nsw i64 %133, %134
  %136 = icmp slt i64 %131, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %126
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %14, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i64 @gso_pskb_expand_head(%struct.sk_buff* %138, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %230

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %126
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @ip6_find_1stfragopt(%struct.sk_buff* %148, i64** %12)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %17, align 4
  %154 = call %struct.sk_buff* @ERR_PTR(i32 %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %3, align 8
  br label %232

155:                                              ; preds = %147
  %156 = load i32, i32* %17, align 4
  store i32 %156, i32* %8, align 4
  %157 = load i64*, i64** %12, align 8
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %13, align 8
  %159 = load i64, i64* @NEXTHDR_FRAGMENT, align 8
  %160 = load i64*, i64** %12, align 8
  store i64 %159, i64* %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call i32 @skb_network_header(%struct.sk_buff* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = call i32 @skb_mac_header(%struct.sk_buff* %163)
  %165 = sub i32 %162, %164
  %166 = load i32, i32* %8, align 4
  %167 = add i32 %165, %166
  %168 = load i32, i32* %16, align 4
  %169 = add i32 %167, %168
  store i32 %169, i32* %9, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i64*
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = call %struct.TYPE_4__* @SKB_GSO_CB(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %173, i64 %178
  store i64* %179, i64** %11, align 8
  %180 = load i64*, i64** %11, align 8
  %181 = load i64, i64* %14, align 8
  %182 = sub i64 0, %181
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64*, i64** %11, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @memmove(i64* %183, i64* %184, i32 %185)
  %187 = load i64, i64* %14, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = call %struct.TYPE_4__* @SKB_GSO_CB(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 %192, %187
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load i64, i64* %14, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = call i32 @skb_network_header(%struct.sk_buff* %207)
  %209 = load i32, i32* %8, align 4
  %210 = add i32 %208, %209
  %211 = zext i32 %210 to i64
  %212 = inttoptr i64 %211 to %struct.frag_hdr*
  store %struct.frag_hdr* %212, %struct.frag_hdr** %10, align 8
  %213 = load i64, i64* %13, align 8
  %214 = load %struct.frag_hdr*, %struct.frag_hdr** %10, align 8
  %215 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  %216 = load %struct.frag_hdr*, %struct.frag_hdr** %10, align 8
  %217 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @dev_net(i32 %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call i32 @ipv6_proxy_select_ident(i32 %221, %struct.sk_buff* %222)
  %224 = load %struct.frag_hdr*, %struct.frag_hdr** %10, align 8
  %225 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = call %struct.sk_buff* @skb_segment(%struct.sk_buff* %226, i32 %227)
  store %struct.sk_buff* %228, %struct.sk_buff** %6, align 8
  br label %229

229:                                              ; preds = %155, %51
  br label %230

230:                                              ; preds = %229, %145, %70, %65, %35
  %231 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %231, %struct.sk_buff** %3, align 8
  br label %232

232:                                              ; preds = %230, %152, %79
  %233 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %233
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_udp_tunnel_segment(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__udp_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @udp_v6_check(i32, i32*, i32*, i32) #1

declare dso_local i32 @skb_tnl_header_len(%struct.sk_buff*) #1

declare dso_local i64 @gso_pskb_expand_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @ip6_find_1stfragopt(%struct.sk_buff*, i64**) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @SKB_GSO_CB(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @ipv6_proxy_select_ident(i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.sk_buff* @skb_segment(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
