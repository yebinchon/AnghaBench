; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_fb_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_fb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ip_tunnel = type { i32 }
%struct.ip_tunnel_info = type { i32, i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32 }
%struct.erspan_metadata = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@TUNNEL_ERSPAN_OPT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_ERSPAN = common dso_local global i32 0, align 4
@ETH_P_ERSPAN2 = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @erspan_fb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erspan_fb_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ip_tunnel*, align 8
  %6 = alloca %struct.ip_tunnel_info*, align 8
  %7 = alloca %struct.ip_tunnel_key*, align 8
  %8 = alloca %struct.erspan_metadata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %17)
  store %struct.ip_tunnel_info* %18, %struct.ip_tunnel_info** %6, align 8
  %19 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %20 = icmp ne %struct.ip_tunnel_info* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %30 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %29)
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %28, %21, %2
  %34 = phi i1 [ true, %21 ], [ true, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %209

39:                                               ; preds = %33
  %40 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %40, i32 0, i32 2
  store %struct.ip_tunnel_key* %41, %struct.ip_tunnel_key** %7, align 8
  %42 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TUNNEL_ERSPAN_OPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %209

50:                                               ; preds = %39
  %51 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 12
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %209

57:                                               ; preds = %50
  %58 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %59 = call %struct.erspan_metadata* @ip_tunnel_info_opts(%struct.ip_tunnel_info* %58)
  store %struct.erspan_metadata* %59, %struct.erspan_metadata** %8, align 8
  %60 = load %struct.erspan_metadata*, %struct.erspan_metadata** %8, align 8
  %61 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @erspan_hdr_len(i32 %63)
  %65 = add nsw i32 8, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @skb_cow_head(%struct.sk_buff* %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %209

73:                                               ; preds = %57
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call i64 @gre_handle_offloads(%struct.sk_buff* %74, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %209

78:                                               ; preds = %73
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = icmp sgt i32 %81, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = call i32 @pskb_trim(%struct.sk_buff* %91, i32 %98)
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %90, %78
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = call i32 @skb_network_header(%struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call i32 @skb_mac_header(%struct.sk_buff* %103)
  %105 = sub nsw i32 %102, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @ETH_P_IP, align 4
  %110 = call i64 @htons(i32 %109)
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %100
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohs(i32 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  %123 = icmp sgt i32 %117, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i32 1, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %112, %100
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = call i32 @skb_transport_header(%struct.sk_buff* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %129 = call i32 @skb_mac_header(%struct.sk_buff* %128)
  %130 = sub nsw i32 %127, %129
  store i32 %130, i32* %14, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @ETH_P_IPV6, align 4
  %135 = call i64 @htons(i32 %134)
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %125
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %139 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ntohs(i32 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sgt i32 %142, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  store i32 1, i32* %9, align 4
  br label %150

150:                                              ; preds = %149, %137, %125
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %156 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tunnel_id_to_key32(i32 %157)
  %159 = call i32 @ntohl(i32 %158)
  %160 = load %struct.erspan_metadata*, %struct.erspan_metadata** %8, align 8
  %161 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohl(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @erspan_build_header(%struct.sk_buff* %154, i32 %159, i32 %164, i32 %165, i32 1)
  %167 = load i32, i32* @ETH_P_ERSPAN, align 4
  %168 = call i64 @htons(i32 %167)
  store i64 %168, i64* %10, align 8
  br label %194

169:                                              ; preds = %150
  %170 = load i32, i32* %12, align 4
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %174 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %7, align 8
  %175 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @tunnel_id_to_key32(i32 %176)
  %178 = call i32 @ntohl(i32 %177)
  %179 = load %struct.erspan_metadata*, %struct.erspan_metadata** %8, align 8
  %180 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.erspan_metadata*, %struct.erspan_metadata** %8, align 8
  %185 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = call i32 @get_hwid(%struct.TYPE_10__* %186)
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @erspan_build_header_v2(%struct.sk_buff* %173, i32 %178, i32 %183, i32 %187, i32 %188, i32 1)
  %190 = load i32, i32* @ETH_P_ERSPAN2, align 4
  %191 = call i64 @htons(i32 %190)
  store i64 %191, i64* %10, align 8
  br label %193

192:                                              ; preds = %169
  br label %209

193:                                              ; preds = %172
  br label %194

194:                                              ; preds = %193, %153
  %195 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %196 = load i32, i32* @TUNNEL_SEQ, align 4
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %199 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = call i32 @htonl(i32 %200)
  %203 = call i32 @gre_build_header(%struct.sk_buff* %195, i32 8, i32 %196, i64 %197, i32 0, i32 %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = load i32, i32* @IPPROTO_GRE, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @ip_md_tunnel_xmit(%struct.sk_buff* %204, %struct.net_device* %205, i32 %206, i32 %207)
  br label %217

209:                                              ; preds = %192, %77, %72, %56, %49, %38
  %210 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %211 = call i32 @kfree_skb(%struct.sk_buff* %210)
  %212 = load %struct.net_device*, %struct.net_device** %4, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %209, %194
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local %struct.erspan_metadata* @ip_tunnel_info_opts(%struct.ip_tunnel_info*) #1

declare dso_local i32 @erspan_hdr_len(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_9__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @erspan_build_header(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @erspan_build_header_v2(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_hwid(%struct.TYPE_10__*) #1

declare dso_local i32 @gre_build_header(%struct.sk_buff*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_md_tunnel_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
