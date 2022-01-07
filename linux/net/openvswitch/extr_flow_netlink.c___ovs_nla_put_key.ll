; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___ovs_nla_put_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___ovs_nla_put_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, i32, %struct.TYPE_18__, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, %struct.TYPE_19__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.TYPE_25__ = type { i64, i64, i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_16__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_key_ethernet = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ovs_key_ipv4 = type { i64, i64, i32, i32, i32, i32 }
%struct.ovs_key_ipv6 = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.ovs_key_arp = type { i32, i32, i64, i32, i32 }
%struct.ovs_key_mpls = type { i32 }
%struct.ovs_key_tcp = type { i32, i32 }
%struct.ovs_key_udp = type { i32, i32 }
%struct.ovs_key_sctp = type { i32, i32 }
%struct.ovs_key_icmp = type { i8*, i8* }
%struct.ovs_key_icmpv6 = type { i64, i8* }
%struct.ovs_key_nd = type { i32, i32, i32 }

@OVS_KEY_ATTR_RECIRC_ID = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_DP_HASH = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_PRIORITY = common dso_local global i32 0, align 4
@TUNNEL_OPTIONS_PRESENT = common dso_local global i32 0, align 4
@DP_MAX_PORTS = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IN_PORT = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_SKB_MARK = common dso_local global i32 0, align 4
@MAC_PROTO_ETHERNET = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ETHERNET = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_IPV6 = common dso_local global i32 0, align 4
@ETH_P_NSH = common dso_local global i64 0, align 8
@ETH_P_ARP = common dso_local global i64 0, align 8
@ETH_P_RARP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ARP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_MPLS = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_TCP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TCP_FLAGS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_UDP = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_SCTP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ICMP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ICMPV6 = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i64 0, align 8
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ND = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*, %struct.sw_flow_key*, i32, %struct.sk_buff*)* @__ovs_nla_put_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ovs_nla_put_key(%struct.sw_flow_key* %0, %struct.sw_flow_key* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ovs_key_ethernet*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ovs_key_ipv4*, align 8
  %17 = alloca %struct.ovs_key_ipv6*, align 8
  %18 = alloca %struct.ovs_key_arp*, align 8
  %19 = alloca %struct.ovs_key_mpls*, align 8
  %20 = alloca %struct.ovs_key_tcp*, align 8
  %21 = alloca %struct.ovs_key_udp*, align 8
  %22 = alloca %struct.ovs_key_sctp*, align 8
  %23 = alloca %struct.ovs_key_icmp*, align 8
  %24 = alloca %struct.ovs_key_icmpv6*, align 8
  %25 = alloca %struct.ovs_key_nd*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store %struct.nlattr* null, %struct.nlattr** %12, align 8
  store %struct.nlattr* null, %struct.nlattr** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = load i32, i32* @OVS_KEY_ATTR_RECIRC_ID, align 4
  %28 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %29 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %820

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @OVS_KEY_ATTR_DP_HASH, align 4
  %37 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %38 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %820

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @OVS_KEY_ATTR_PRIORITY, align 4
  %46 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %47 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %820

53:                                               ; preds = %43
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %54, i32 0, i32 10
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %58, %53
  store i8* null, i8** %14, align 8
  %62 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %63 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TUNNEL_OPTIONS_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %71 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %72 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @TUN_METADATA_OPTS(%struct.sw_flow_key* %70, i32 %73)
  store i8* %74, i8** %14, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %78 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %77, i32 0, i32 12
  %79 = load i8*, i8** %14, align 8
  %80 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %81 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %84 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @ip_tun_to_nlattr(%struct.sk_buff* %76, %struct.TYPE_17__* %78, i8* %79, i32 %82, i64 %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %820

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %92 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DP_MAX_PORTS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %102 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 65535
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %109 = call i64 @nla_put_u32(%struct.sk_buff* %107, i32 %108, i32 -1)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %820

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %100, %97
  br label %135

114:                                              ; preds = %90
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 65535
  store i32 %119, i32* %15, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %122 = load i32, i32* %15, align 4
  %123 = shl i32 %122, 16
  %124 = sext i32 %123 to i64
  %125 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %126 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = or i64 %124, %128
  %130 = trunc i64 %129 to i32
  %131 = call i64 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %114
  br label %820

134:                                              ; preds = %114
  br label %135

135:                                              ; preds = %134, %113
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = load i32, i32* @OVS_KEY_ATTR_SKB_MARK, align 4
  %138 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %139 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @nla_put_u32(%struct.sk_buff* %136, i32 %137, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %820

145:                                              ; preds = %135
  %146 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %147 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %149 = call i64 @ovs_ct_put_key(%struct.sw_flow_key* %146, %struct.sw_flow_key* %147, %struct.sk_buff* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %820

152:                                              ; preds = %145
  %153 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %154 = call i64 @ovs_key_mac_proto(%struct.sw_flow_key* %153)
  %155 = load i64, i64* @MAC_PROTO_ETHERNET, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %283

157:                                              ; preds = %152
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %160 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %158, i32 %159, i32 8)
  store %struct.nlattr* %160, %struct.nlattr** %11, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %162 = icmp ne %struct.nlattr* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %820

164:                                              ; preds = %157
  %165 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %166 = call i8* @nla_data(%struct.nlattr* %165)
  %167 = bitcast i8* %166 to %struct.ovs_key_ethernet*
  store %struct.ovs_key_ethernet* %167, %struct.ovs_key_ethernet** %10, align 8
  %168 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %10, align 8
  %169 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %172 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ether_addr_copy(i32 %170, i32 %174)
  %176 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %10, align 8
  %177 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %180 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ether_addr_copy(i32 %178, i32 %182)
  %184 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %185 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %164
  %191 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %192 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @eth_type_vlan(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %253

197:                                              ; preds = %190, %164
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %200 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 2
  %202 = load i32, i32* %8, align 4
  %203 = call i64 @ovs_nla_put_vlan(%struct.sk_buff* %198, %struct.TYPE_16__* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %820

206:                                              ; preds = %197
  %207 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %208 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %209 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %207, i32 %208)
  store %struct.nlattr* %209, %struct.nlattr** %12, align 8
  %210 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %211 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %206
  br label %805

217:                                              ; preds = %206
  %218 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %219 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %217
  %225 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %226 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @eth_type_vlan(i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %224, %217
  %232 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %233 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %234 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 1
  %236 = load i32, i32* %8, align 4
  %237 = call i64 @ovs_nla_put_vlan(%struct.sk_buff* %232, %struct.TYPE_16__* %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %820

240:                                              ; preds = %231
  %241 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %242 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %243 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %241, i32 %242)
  store %struct.nlattr* %243, %struct.nlattr** %13, align 8
  %244 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %245 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %240
  br label %805

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %224
  br label %253

253:                                              ; preds = %252, %190
  %254 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %255 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @ETH_P_802_2, align 8
  %259 = call i64 @htons(i64 %258)
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %261, label %282

261:                                              ; preds = %253
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %261
  %265 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %266 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %264
  %271 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %272 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %273 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %274 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @nla_put_be16(%struct.sk_buff* %271, i32 %272, i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %820

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280, %264, %261
  br label %805

282:                                              ; preds = %253
  br label %283

283:                                              ; preds = %282, %152
  %284 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %285 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %286 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %287 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @nla_put_be16(%struct.sk_buff* %284, i32 %285, i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  br label %820

293:                                              ; preds = %283
  %294 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %295 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @eth_type_vlan(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %293
  %301 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %302 = icmp ne %struct.nlattr* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %305 = icmp ne %struct.nlattr* %304, null
  br label %306

306:                                              ; preds = %303, %300
  %307 = phi i1 [ false, %300 ], [ %305, %303 ]
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = call i32 @WARN_ON_ONCE(i32 %309)
  br label %805

311:                                              ; preds = %293
  %312 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %313 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @ETH_P_IP, align 8
  %317 = call i64 @htons(i64 %316)
  %318 = icmp eq i64 %315, %317
  br i1 %318, label %319, label %368

319:                                              ; preds = %311
  %320 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %321 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %322 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %320, i32 %321, i32 32)
  store %struct.nlattr* %322, %struct.nlattr** %11, align 8
  %323 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %324 = icmp ne %struct.nlattr* %323, null
  br i1 %324, label %326, label %325

325:                                              ; preds = %319
  br label %820

326:                                              ; preds = %319
  %327 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %328 = call i8* @nla_data(%struct.nlattr* %327)
  %329 = bitcast i8* %328 to %struct.ovs_key_ipv4*
  store %struct.ovs_key_ipv4* %329, %struct.ovs_key_ipv4** %16, align 8
  %330 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %331 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %336 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 4
  %337 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %338 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %343 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %342, i32 0, i32 4
  store i32 %341, i32* %343, align 8
  %344 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %345 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %349 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %348, i32 0, i32 0
  store i64 %347, i64* %349, align 8
  %350 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %351 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %355 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %354, i32 0, i32 3
  store i32 %353, i32* %355, align 4
  %356 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %357 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %361 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 8
  %362 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %363 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %16, align 8
  %367 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  br label %546

368:                                              ; preds = %311
  %369 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %370 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ETH_P_IPV6, align 8
  %374 = call i64 @htons(i64 %373)
  %375 = icmp eq i64 %372, %374
  br i1 %375, label %376, label %433

376:                                              ; preds = %368
  %377 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %378 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %379 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %377, i32 %378, i32 40)
  store %struct.nlattr* %379, %struct.nlattr** %11, align 8
  %380 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %381 = icmp ne %struct.nlattr* %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %376
  br label %820

383:                                              ; preds = %376
  %384 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %385 = call i8* @nla_data(%struct.nlattr* %384)
  %386 = bitcast i8* %385 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %386, %struct.ovs_key_ipv6** %17, align 8
  %387 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %388 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %391 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 1
  %394 = call i32 @memcpy(i32 %389, i32* %393, i32 4)
  %395 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %396 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %399 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 0
  %402 = call i32 @memcpy(i32 %397, i32* %401, i32 4)
  %403 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %404 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %408 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %407, i32 0, i32 4
  store i32 %406, i32* %408, align 8
  %409 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %410 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %409, i32 0, i32 4
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %414 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %413, i32 0, i32 0
  store i64 %412, i64* %414, align 8
  %415 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %416 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %420 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %419, i32 0, i32 3
  store i32 %418, i32* %420, align 4
  %421 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %422 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %421, i32 0, i32 4
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %426 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %425, i32 0, i32 2
  store i32 %424, i32* %426, align 8
  %427 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %428 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %17, align 8
  %432 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %431, i32 0, i32 1
  store i64 %430, i64* %432, align 8
  br label %545

433:                                              ; preds = %368
  %434 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %435 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @ETH_P_NSH, align 8
  %439 = call i64 @htons(i64 %438)
  %440 = icmp eq i64 %437, %439
  br i1 %440, label %441, label %450

441:                                              ; preds = %433
  %442 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %443 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %442, i32 0, i32 8
  %444 = load i32, i32* %8, align 4
  %445 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %446 = call i64 @nsh_key_to_nlattr(i32* %443, i32 %444, %struct.sk_buff* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  br label %820

449:                                              ; preds = %441
  br label %544

450:                                              ; preds = %433
  %451 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %452 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @ETH_P_ARP, align 8
  %456 = call i64 @htons(i64 %455)
  %457 = icmp eq i64 %454, %456
  br i1 %457, label %466, label %458

458:                                              ; preds = %450
  %459 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %460 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %459, i32 0, i32 5
  %461 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @ETH_P_RARP, align 8
  %464 = call i64 @htons(i64 %463)
  %465 = icmp eq i64 %462, %464
  br i1 %465, label %466, label %518

466:                                              ; preds = %458, %450
  %467 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %468 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %469 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %467, i32 %468, i32 24)
  store %struct.nlattr* %469, %struct.nlattr** %11, align 8
  %470 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %471 = icmp ne %struct.nlattr* %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %466
  br label %820

473:                                              ; preds = %466
  %474 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %475 = call i8* @nla_data(%struct.nlattr* %474)
  %476 = bitcast i8* %475 to %struct.ovs_key_arp*
  store %struct.ovs_key_arp* %476, %struct.ovs_key_arp** %18, align 8
  %477 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %478 = call i32 @memset(%struct.ovs_key_arp* %477, i32 0, i32 24)
  %479 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %480 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %479, i32 0, i32 7
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %485 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %484, i32 0, i32 4
  store i32 %483, i32* %485, align 4
  %486 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %487 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %486, i32 0, i32 7
  %488 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %492 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %491, i32 0, i32 3
  store i32 %490, i32* %492, align 8
  %493 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %494 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %493, i32 0, i32 4
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = call i64 @htons(i64 %496)
  %498 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %499 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %498, i32 0, i32 2
  store i64 %497, i64* %499, align 8
  %500 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %501 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %504 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %503, i32 0, i32 7
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @ether_addr_copy(i32 %502, i32 %507)
  %509 = load %struct.ovs_key_arp*, %struct.ovs_key_arp** %18, align 8
  %510 = getelementptr inbounds %struct.ovs_key_arp, %struct.ovs_key_arp* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %513 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %512, i32 0, i32 7
  %514 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @ether_addr_copy(i32 %511, i32 %516)
  br label %543

518:                                              ; preds = %458
  %519 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %520 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = call i64 @eth_p_mpls(i64 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %542

525:                                              ; preds = %518
  %526 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %527 = load i32, i32* @OVS_KEY_ATTR_MPLS, align 4
  %528 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %526, i32 %527, i32 4)
  store %struct.nlattr* %528, %struct.nlattr** %11, align 8
  %529 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %530 = icmp ne %struct.nlattr* %529, null
  br i1 %530, label %532, label %531

531:                                              ; preds = %525
  br label %820

532:                                              ; preds = %525
  %533 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %534 = call i8* @nla_data(%struct.nlattr* %533)
  %535 = bitcast i8* %534 to %struct.ovs_key_mpls*
  store %struct.ovs_key_mpls* %535, %struct.ovs_key_mpls** %19, align 8
  %536 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %537 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %536, i32 0, i32 6
  %538 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.ovs_key_mpls*, %struct.ovs_key_mpls** %19, align 8
  %541 = getelementptr inbounds %struct.ovs_key_mpls, %struct.ovs_key_mpls* %540, i32 0, i32 0
  store i32 %539, i32* %541, align 4
  br label %542

542:                                              ; preds = %532, %518
  br label %543

543:                                              ; preds = %542, %473
  br label %544

544:                                              ; preds = %543, %449
  br label %545

545:                                              ; preds = %544, %383
  br label %546

546:                                              ; preds = %545, %326
  %547 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %548 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %547, i32 0, i32 5
  %549 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @ETH_P_IP, align 8
  %552 = call i64 @htons(i64 %551)
  %553 = icmp eq i64 %550, %552
  br i1 %553, label %562, label %554

554:                                              ; preds = %546
  %555 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %556 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @ETH_P_IPV6, align 8
  %560 = call i64 @htons(i64 %559)
  %561 = icmp eq i64 %558, %560
  br i1 %561, label %562, label %804

562:                                              ; preds = %554, %546
  %563 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %564 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %563, i32 0, i32 4
  %565 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %568 = icmp ne i64 %566, %567
  br i1 %568, label %569, label %804

569:                                              ; preds = %562
  %570 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %571 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %570, i32 0, i32 4
  %572 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @IPPROTO_TCP, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %609

576:                                              ; preds = %569
  %577 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %578 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %579 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %577, i32 %578, i32 8)
  store %struct.nlattr* %579, %struct.nlattr** %11, align 8
  %580 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %581 = icmp ne %struct.nlattr* %580, null
  br i1 %581, label %583, label %582

582:                                              ; preds = %576
  br label %820

583:                                              ; preds = %576
  %584 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %585 = call i8* @nla_data(%struct.nlattr* %584)
  %586 = bitcast i8* %585 to %struct.ovs_key_tcp*
  store %struct.ovs_key_tcp* %586, %struct.ovs_key_tcp** %20, align 8
  %587 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %588 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %20, align 8
  %592 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %591, i32 0, i32 1
  store i32 %590, i32* %592, align 4
  %593 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %594 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %593, i32 0, i32 3
  %595 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %20, align 8
  %598 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %597, i32 0, i32 0
  store i32 %596, i32* %598, align 4
  %599 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %600 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %601 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %602 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %602, i32 0, i32 2
  %604 = load i64, i64* %603, align 8
  %605 = call i64 @nla_put_be16(%struct.sk_buff* %599, i32 %600, i64 %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %583
  br label %820

608:                                              ; preds = %583
  br label %803

609:                                              ; preds = %569
  %610 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %611 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %610, i32 0, i32 4
  %612 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* @IPPROTO_UDP, align 8
  %615 = icmp eq i64 %613, %614
  br i1 %615, label %616, label %639

616:                                              ; preds = %609
  %617 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %618 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %619 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %617, i32 %618, i32 8)
  store %struct.nlattr* %619, %struct.nlattr** %11, align 8
  %620 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %621 = icmp ne %struct.nlattr* %620, null
  br i1 %621, label %623, label %622

622:                                              ; preds = %616
  br label %820

623:                                              ; preds = %616
  %624 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %625 = call i8* @nla_data(%struct.nlattr* %624)
  %626 = bitcast i8* %625 to %struct.ovs_key_udp*
  store %struct.ovs_key_udp* %626, %struct.ovs_key_udp** %21, align 8
  %627 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %628 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %627, i32 0, i32 3
  %629 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %21, align 8
  %632 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %631, i32 0, i32 1
  store i32 %630, i32* %632, align 4
  %633 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %634 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %633, i32 0, i32 3
  %635 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %21, align 8
  %638 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %637, i32 0, i32 0
  store i32 %636, i32* %638, align 4
  br label %802

639:                                              ; preds = %609
  %640 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %641 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %640, i32 0, i32 4
  %642 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = load i64, i64* @IPPROTO_SCTP, align 8
  %645 = icmp eq i64 %643, %644
  br i1 %645, label %646, label %669

646:                                              ; preds = %639
  %647 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %648 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %649 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %647, i32 %648, i32 8)
  store %struct.nlattr* %649, %struct.nlattr** %11, align 8
  %650 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %651 = icmp ne %struct.nlattr* %650, null
  br i1 %651, label %653, label %652

652:                                              ; preds = %646
  br label %820

653:                                              ; preds = %646
  %654 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %655 = call i8* @nla_data(%struct.nlattr* %654)
  %656 = bitcast i8* %655 to %struct.ovs_key_sctp*
  store %struct.ovs_key_sctp* %656, %struct.ovs_key_sctp** %22, align 8
  %657 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %658 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %657, i32 0, i32 3
  %659 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 4
  %661 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %22, align 8
  %662 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %661, i32 0, i32 1
  store i32 %660, i32* %662, align 4
  %663 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %664 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %663, i32 0, i32 3
  %665 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %22, align 8
  %668 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %667, i32 0, i32 0
  store i32 %666, i32* %668, align 4
  br label %801

669:                                              ; preds = %639
  %670 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %671 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @ETH_P_IP, align 8
  %675 = call i64 @htons(i64 %674)
  %676 = icmp eq i64 %673, %675
  br i1 %676, label %677, label %709

677:                                              ; preds = %669
  %678 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %679 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %678, i32 0, i32 4
  %680 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* @IPPROTO_ICMP, align 8
  %683 = icmp eq i64 %681, %682
  br i1 %683, label %684, label %709

684:                                              ; preds = %677
  %685 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %686 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %687 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %685, i32 %686, i32 16)
  store %struct.nlattr* %687, %struct.nlattr** %11, align 8
  %688 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %689 = icmp ne %struct.nlattr* %688, null
  br i1 %689, label %691, label %690

690:                                              ; preds = %684
  br label %820

691:                                              ; preds = %684
  %692 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %693 = call i8* @nla_data(%struct.nlattr* %692)
  %694 = bitcast i8* %693 to %struct.ovs_key_icmp*
  store %struct.ovs_key_icmp* %694, %struct.ovs_key_icmp** %23, align 8
  %695 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %696 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %695, i32 0, i32 3
  %697 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = call i8* @ntohs(i32 %698)
  %700 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %23, align 8
  %701 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %700, i32 0, i32 1
  store i8* %699, i8** %701, align 8
  %702 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %703 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %702, i32 0, i32 3
  %704 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 8
  %706 = call i8* @ntohs(i32 %705)
  %707 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %23, align 8
  %708 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %707, i32 0, i32 0
  store i8* %706, i8** %708, align 8
  br label %800

709:                                              ; preds = %677, %669
  %710 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %711 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %710, i32 0, i32 5
  %712 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = load i64, i64* @ETH_P_IPV6, align 8
  %715 = call i64 @htons(i64 %714)
  %716 = icmp eq i64 %713, %715
  br i1 %716, label %717, label %799

717:                                              ; preds = %709
  %718 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %719 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %718, i32 0, i32 4
  %720 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %719, i32 0, i32 0
  %721 = load i64, i64* %720, align 8
  %722 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %723 = icmp eq i64 %721, %722
  br i1 %723, label %724, label %799

724:                                              ; preds = %717
  %725 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %726 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %727 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %725, i32 %726, i32 16)
  store %struct.nlattr* %727, %struct.nlattr** %11, align 8
  %728 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %729 = icmp ne %struct.nlattr* %728, null
  br i1 %729, label %731, label %730

730:                                              ; preds = %724
  br label %820

731:                                              ; preds = %724
  %732 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %733 = call i8* @nla_data(%struct.nlattr* %732)
  %734 = bitcast i8* %733 to %struct.ovs_key_icmpv6*
  store %struct.ovs_key_icmpv6* %734, %struct.ovs_key_icmpv6** %24, align 8
  %735 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %736 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %735, i32 0, i32 3
  %737 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 4
  %739 = call i8* @ntohs(i32 %738)
  %740 = ptrtoint i8* %739 to i64
  %741 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %24, align 8
  %742 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %741, i32 0, i32 0
  store i64 %740, i64* %742, align 8
  %743 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %744 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %743, i32 0, i32 3
  %745 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 8
  %747 = call i8* @ntohs(i32 %746)
  %748 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %24, align 8
  %749 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %748, i32 0, i32 1
  store i8* %747, i8** %749, align 8
  %750 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %24, align 8
  %751 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %750, i32 0, i32 0
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* @NDISC_NEIGHBOUR_SOLICITATION, align 8
  %754 = icmp eq i64 %752, %753
  br i1 %754, label %761, label %755

755:                                              ; preds = %731
  %756 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %24, align 8
  %757 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %756, i32 0, i32 0
  %758 = load i64, i64* %757, align 8
  %759 = load i64, i64* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 8
  %760 = icmp eq i64 %758, %759
  br i1 %760, label %761, label %798

761:                                              ; preds = %755, %731
  %762 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %763 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %764 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %762, i32 %763, i32 12)
  store %struct.nlattr* %764, %struct.nlattr** %11, align 8
  %765 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %766 = icmp ne %struct.nlattr* %765, null
  br i1 %766, label %768, label %767

767:                                              ; preds = %761
  br label %820

768:                                              ; preds = %761
  %769 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %770 = call i8* @nla_data(%struct.nlattr* %769)
  %771 = bitcast i8* %770 to %struct.ovs_key_nd*
  store %struct.ovs_key_nd* %771, %struct.ovs_key_nd** %25, align 8
  %772 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %25, align 8
  %773 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %772, i32 0, i32 2
  %774 = load i32, i32* %773, align 4
  %775 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %776 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %775, i32 0, i32 2
  %777 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %776, i32 0, i32 0
  %778 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %777, i32 0, i32 2
  %779 = call i32 @memcpy(i32 %774, i32* %778, i32 4)
  %780 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %25, align 8
  %781 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %780, i32 0, i32 1
  %782 = load i32, i32* %781, align 4
  %783 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %784 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %783, i32 0, i32 2
  %785 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %784, i32 0, i32 0
  %786 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 4
  %788 = call i32 @ether_addr_copy(i32 %782, i32 %787)
  %789 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %25, align 8
  %790 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 4
  %792 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %793 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %792, i32 0, i32 2
  %794 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %793, i32 0, i32 0
  %795 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 8
  %797 = call i32 @ether_addr_copy(i32 %791, i32 %796)
  br label %798

798:                                              ; preds = %768, %755
  br label %799

799:                                              ; preds = %798, %717, %709
  br label %800

800:                                              ; preds = %799, %691
  br label %801

801:                                              ; preds = %800, %653
  br label %802

802:                                              ; preds = %801, %623
  br label %803

803:                                              ; preds = %802, %608
  br label %804

804:                                              ; preds = %803, %562, %554
  br label %805

805:                                              ; preds = %804, %306, %281, %250, %216
  %806 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %807 = icmp ne %struct.nlattr* %806, null
  br i1 %807, label %808, label %812

808:                                              ; preds = %805
  %809 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %810 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %811 = call i32 @nla_nest_end(%struct.sk_buff* %809, %struct.nlattr* %810)
  br label %812

812:                                              ; preds = %808, %805
  %813 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %814 = icmp ne %struct.nlattr* %813, null
  br i1 %814, label %815, label %819

815:                                              ; preds = %812
  %816 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %817 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %818 = call i32 @nla_nest_end(%struct.sk_buff* %816, %struct.nlattr* %817)
  br label %819

819:                                              ; preds = %815, %812
  store i32 0, i32* %5, align 4
  br label %823

820:                                              ; preds = %767, %730, %690, %652, %622, %607, %582, %531, %472, %448, %382, %325, %292, %279, %239, %205, %163, %151, %144, %133, %111, %88, %52, %42, %33
  %821 = load i32, i32* @EMSGSIZE, align 4
  %822 = sub nsw i32 0, %821
  store i32 %822, i32* %5, align 4
  br label %823

823:                                              ; preds = %820, %819
  %824 = load i32, i32* %5, align 4
  ret i32 %824
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @TUN_METADATA_OPTS(%struct.sw_flow_key*, i32) #1

declare dso_local i64 @ip_tun_to_nlattr(%struct.sk_buff*, %struct.TYPE_17__*, i8*, i32, i64, i32) #1

declare dso_local i64 @ovs_ct_put_key(%struct.sw_flow_key*, %struct.sw_flow_key*, %struct.sk_buff*) #1

declare dso_local i64 @ovs_key_mac_proto(%struct.sw_flow_key*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @eth_type_vlan(i64) #1

declare dso_local i64 @ovs_nla_put_vlan(%struct.sk_buff*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @nsh_key_to_nlattr(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ovs_key_arp*, i32, i32) #1

declare dso_local i64 @eth_p_mpls(i64) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
