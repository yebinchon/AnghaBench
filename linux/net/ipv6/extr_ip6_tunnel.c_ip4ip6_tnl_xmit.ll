; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip4ip6_tnl_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip4ip6_tnl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi6 = type { i32, i32, i64, i32, i32, i32 }
%struct.ip_tunnel_info = type { i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.flowi6 }

@IPPROTO_IPIP = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FWMARK = common dso_local global i32 0, align 4
@SKB_GSO_IPXIP6 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip4ip6_tnl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip4ip6_tnl_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi6, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_tunnel_info*, align 8
  %15 = alloca %struct.ip_tunnel_key*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %16)
  store %struct.ip6_tnl* %17, %struct.ip6_tnl** %6, align 8
  store i32 -1, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %18)
  store %struct.iphdr* %19, %struct.iphdr** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_12__* @IPCB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = call i32 @memset(%struct.flowi6* %22, i32 0, i32 32)
  %24 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %25 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @READ_ONCE(i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @IPPROTO_IPIP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %187

36:                                               ; preds = %32, %2
  %37 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %38 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %43)
  store %struct.ip_tunnel_info* %44, %struct.ip_tunnel_info** %14, align 8
  %45 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %14, align 8
  %46 = icmp ne %struct.ip_tunnel_info* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %14, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %14, align 8
  %56 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %55)
  %57 = load i64, i64* @AF_INET6, align 8
  %58 = icmp ne i64 %56, %57
  br label %59

59:                                               ; preds = %54, %47, %42
  %60 = phi i1 [ true, %47 ], [ true, %42 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %187

65:                                               ; preds = %59
  %66 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %14, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %66, i32 0, i32 1
  store %struct.ip_tunnel_key* %67, %struct.ip_tunnel_key** %15, align 8
  %68 = call i32 @memset(%struct.flowi6* %9, i32 0, i32 32)
  %69 = load i64, i64* @IPPROTO_IPIP, align 8
  %70 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %15, align 8
  %72 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %15, align 8
  %78 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %15, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 3
  store i32 %85, i32* %86, align 8
  %87 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %15, align 8
  %88 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  br label %147

90:                                               ; preds = %36
  %91 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %92 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %90
  %99 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %100 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %90
  %104 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %105 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = call i32 @memcpy(%struct.flowi6* %9, i32* %107, i32 32)
  %109 = load i64, i64* @IPPROTO_IPIP, align 8
  %110 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 2
  store i64 %109, i64* %110, align 8
  %111 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %112 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %120 = call i32 @ipv4_get_dsfield(%struct.iphdr* %119)
  store i32 %120, i32* %10, align 4
  br label %127

121:                                              ; preds = %103
  %122 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %123 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ip6_tclass(i32 %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %121, %118
  %128 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %129 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IP6_TNL_F_USE_ORIG_FWMARK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  br label %146

140:                                              ; preds = %127
  %141 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %142 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %135
  br label %147

147:                                              ; preds = %146, %65
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i32 @dev_net(%struct.net_device* %148)
  %150 = call i32 @sock_net_uid(i32 %149, i32* null)
  %151 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %154 = call i32 @ipv4_get_dsfield(%struct.iphdr* %153)
  %155 = call i32 @INET_ECN_encapsulate(i32 %152, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = load i32, i32* @SKB_GSO_IPXIP6, align 4
  %158 = call i64 @iptunnel_handle_offloads(%struct.sk_buff* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %147
  store i32 -1, i32* %3, align 4
  br label %187

161:                                              ; preds = %147
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = load i64, i64* @IPPROTO_IPIP, align 8
  %164 = call i32 @skb_set_inner_ipproto(%struct.sk_buff* %162, i64 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i64, i64* @IPPROTO_IPIP, align 8
  %170 = call i32 @ip6_tnl_xmit(%struct.sk_buff* %165, %struct.net_device* %166, i32 %167, %struct.flowi6* %9, i32 %168, i32* %11, i64 %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %161
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @EMSGSIZE, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %181 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @htonl(i32 %182)
  %184 = call i32 @icmp_send(%struct.sk_buff* %179, i32 %180, i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %178, %173
  store i32 -1, i32* %3, align 4
  br label %187

186:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %185, %160, %64, %35
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @memcpy(%struct.flowi6*, i32*, i32) #1

declare dso_local i32 @ipv4_get_dsfield(%struct.iphdr*) #1

declare dso_local i32 @ip6_tclass(i32) #1

declare dso_local i32 @sock_net_uid(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INET_ECN_encapsulate(i32, i32) #1

declare dso_local i64 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_inner_ipproto(%struct.sk_buff*, i64) #1

declare dso_local i32 @ip6_tnl_xmit(%struct.sk_buff*, %struct.net_device*, i32, %struct.flowi6*, i32, i32*, i64) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
