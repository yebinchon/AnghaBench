; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.tnl_ptk_info = type { i32, i32 }
%struct.net = type { i32 }
%struct.metadata_dst = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.erspan_base_hdr = type { i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.ip_tunnel = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.erspan_md2 = type { i32 }
%struct.erspan_metadata = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.erspan_md2 }

@erspan_net_id = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@PACKET_REJECT = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@ERSPAN_V1_MDSIZE = common dso_local global i32 0, align 4
@ERSPAN_V2_MDSIZE = common dso_local global i32 0, align 4
@TUNNEL_ERSPAN_OPT = common dso_local global i32 0, align 4
@log_ecn_error = common dso_local global i32 0, align 4
@PACKET_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tnl_ptk_info*, i32)* @erspan_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erspan_rcv(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tnl_ptk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.metadata_dst*, align 8
  %10 = alloca %struct.erspan_base_hdr*, align 8
  %11 = alloca %struct.ip_tunnel_net*, align 8
  %12 = alloca %struct.ip_tunnel*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.erspan_md2*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.erspan_metadata*, align 8
  %18 = alloca %struct.erspan_metadata*, align 8
  %19 = alloca %struct.ip_tunnel_info*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call %struct.net* @dev_net(%struct.TYPE_8__* %25)
  store %struct.net* %26, %struct.net** %8, align 8
  store %struct.metadata_dst* null, %struct.metadata_dst** %9, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load i32, i32* @erspan_net_id, align 4
  %29 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %27, i32 %28)
  store %struct.ip_tunnel_net* %29, %struct.ip_tunnel_net** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %30)
  store %struct.iphdr* %31, %struct.iphdr** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = inttoptr i64 %37 to %struct.erspan_base_hdr*
  store %struct.erspan_base_hdr* %38, %struct.erspan_base_hdr** %10, align 8
  %39 = load %struct.erspan_base_hdr*, %struct.erspan_base_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.erspan_base_hdr, %struct.erspan_base_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %49 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TUNNEL_KEY, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %60 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %42, i32 %47, i32 %52, i32 %55, i32 %58, i32 %61)
  store %struct.ip_tunnel* %62, %struct.ip_tunnel** %12, align 8
  %63 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %64 = icmp ne %struct.ip_tunnel* %63, null
  br i1 %64, label %65, label %169

65:                                               ; preds = %3
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @erspan_hdr_len(i32 %67)
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @pskb_may_pull(%struct.sk_buff* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %79, i32* %4, align 4
  br label %175

80:                                               ; preds = %65
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @ETH_P_TEB, align 4
  %84 = call i32 @htons(i32 %83)
  %85 = call i64 @__iptunnel_pull_header(%struct.sk_buff* %81, i32 %82, i32 %84, i32 0, i32 0)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %171

88:                                               ; preds = %80
  %89 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %90 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %88
  %94 = load i32, i32* @TUNNEL_KEY, align 4
  %95 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %96 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %100 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %22, align 4
  %102 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %103 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @key32_to_tunnel_id(i32 %104)
  store i32 %105, i32* %21, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  %109 = call %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff* %106, i32 %107, i32 %108, i32 8)
  store %struct.metadata_dst* %109, %struct.metadata_dst** %9, align 8
  %110 = load %struct.metadata_dst*, %struct.metadata_dst** %9, align 8
  %111 = icmp ne %struct.metadata_dst* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %93
  %113 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %113, i32* %4, align 4
  br label %175

114:                                              ; preds = %93
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i8* @skb_network_header(%struct.sk_buff* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @skb_network_header_len(%struct.sk_buff* %117)
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %20, align 8
  %121 = load i8*, i8** %20, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  %126 = bitcast i8* %125 to %struct.erspan_metadata*
  store %struct.erspan_metadata* %126, %struct.erspan_metadata** %17, align 8
  %127 = load %struct.metadata_dst*, %struct.metadata_dst** %9, align 8
  %128 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call %struct.erspan_metadata* @ip_tunnel_info_opts(%struct.ip_tunnel_info* %129)
  store %struct.erspan_metadata* %130, %struct.erspan_metadata** %18, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.erspan_metadata*, %struct.erspan_metadata** %18, align 8
  %133 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.erspan_metadata*, %struct.erspan_metadata** %18, align 8
  %135 = getelementptr inbounds %struct.erspan_metadata, %struct.erspan_metadata* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store %struct.erspan_md2* %136, %struct.erspan_md2** %14, align 8
  %137 = load %struct.erspan_md2*, %struct.erspan_md2** %14, align 8
  %138 = load %struct.erspan_metadata*, %struct.erspan_metadata** %17, align 8
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %114
  %142 = load i32, i32* @ERSPAN_V1_MDSIZE, align 4
  br label %145

143:                                              ; preds = %114
  %144 = load i32, i32* @ERSPAN_V2_MDSIZE, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = call i32 @memcpy(%struct.erspan_md2* %137, %struct.erspan_metadata* %138, i32 %146)
  %148 = load %struct.metadata_dst*, %struct.metadata_dst** %9, align 8
  %149 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store %struct.ip_tunnel_info* %150, %struct.ip_tunnel_info** %19, align 8
  %151 = load i32, i32* @TUNNEL_ERSPAN_OPT, align 4
  %152 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %153 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %151
  store i32 %156, i32* %154, align 4
  %157 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %19, align 8
  %158 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %157, i32 0, i32 0
  store i32 8, i32* %158, align 4
  br label %159

159:                                              ; preds = %145, %88
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call i32 @skb_reset_mac_header(%struct.sk_buff* %160)
  %162 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %6, align 8
  %165 = load %struct.metadata_dst*, %struct.metadata_dst** %9, align 8
  %166 = load i32, i32* @log_ecn_error, align 4
  %167 = call i32 @ip_tunnel_rcv(%struct.ip_tunnel* %162, %struct.sk_buff* %163, %struct.tnl_ptk_info* %164, %struct.metadata_dst* %165, i32 %166)
  %168 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %168, i32* %4, align 4
  br label %175

169:                                              ; preds = %3
  %170 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %170, i32* %4, align 4
  br label %175

171:                                              ; preds = %87
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = call i32 @kfree_skb(%struct.sk_buff* %172)
  %174 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %169, %159, %112, %78
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_8__*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @erspan_hdr_len(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @__iptunnel_pull_header(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local %struct.erspan_metadata* @ip_tunnel_info_opts(%struct.ip_tunnel_info*) #1

declare dso_local i32 @memcpy(%struct.erspan_md2*, %struct.erspan_metadata*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_tunnel_rcv(%struct.ip_tunnel*, %struct.sk_buff*, %struct.tnl_ptk_info*, %struct.metadata_dst*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
