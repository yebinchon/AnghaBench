; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_match_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_match_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_16__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64 }

@OVS_KEY_ATTR_IPV4 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IPV6 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TCP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TCP_FLAGS = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_UDP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_SCTP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ICMP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ICMPV6 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ARP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ND = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_MPLS = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_NSH = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TUNNEL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_IN_PORT = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i32 0, align 4
@ETH_P_NSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Missing key (keys=%llx, expected=%llx)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unexpected mask (mask=%llx, allowed=%llx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, i32, i32, i32)* @match_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_validate(%struct.sw_flow_match* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_flow_match*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @OVS_KEY_ATTR_MPLS, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @OVS_KEY_ATTR_NSH, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @OVS_KEY_ATTR_IN_PORT, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %68 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @ETH_P_ARP, align 4
  %74 = call i64 @htons(i32 %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %4
  %77 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %78 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %77, i32 0, i32 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @ETH_P_RARP, align 4
  %84 = call i64 @htons(i32 %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %76, %4
  %87 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %92 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = icmp ne %struct.TYPE_18__* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %86
  %96 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %97 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %96, i32 0, i32 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @htons(i32 65535)
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i32, i32* @OVS_KEY_ATTR_ARP, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %105, %95, %86
  br label %111

111:                                              ; preds = %110, %76
  %112 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %113 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @eth_p_mpls(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %111
  %121 = load i32, i32* @OVS_KEY_ATTR_MPLS, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %126 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %125, i32 0, i32 0
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = icmp ne %struct.TYPE_18__* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %120
  %130 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %131 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @htons(i32 65535)
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load i32, i32* @OVS_KEY_ATTR_MPLS, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %139, %129, %120
  br label %145

145:                                              ; preds = %144, %111
  %146 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %147 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %146, i32 0, i32 1
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @ETH_P_IP, align 4
  %153 = call i64 @htons(i32 %152)
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %334

155:                                              ; preds = %145
  %156 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %157 = shl i32 1, %156
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %161 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %160, i32 0, i32 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = icmp ne %struct.TYPE_18__* %162, null
  br i1 %163, label %164, label %183

164:                                              ; preds = %155
  %165 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %166 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %165, i32 0, i32 0
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @htons(i32 65535)
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %164
  %175 = load i32, i32* @OVS_KEY_ATTR_IPV4, align 4
  %176 = shl i32 1, %175
  %177 = load i32, i32* %11, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4, align 4
  %180 = shl i32 1, %179
  %181 = load i32, i32* %11, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %174, %164, %155
  %184 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %185 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %184, i32 0, i32 1
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %333

192:                                              ; preds = %183
  %193 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %194 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IPPROTO_UDP, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %225

201:                                              ; preds = %192
  %202 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %203 = shl i32 1, %202
  %204 = load i32, i32* %10, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %10, align 4
  %206 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %207 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %206, i32 0, i32 0
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = icmp ne %struct.TYPE_18__* %208, null
  br i1 %209, label %210, label %224

210:                                              ; preds = %201
  %211 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %212 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %211, i32 0, i32 0
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 255
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %221 = shl i32 1, %220
  %222 = load i32, i32* %11, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %219, %210, %201
  br label %225

225:                                              ; preds = %224, %192
  %226 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %227 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @IPPROTO_SCTP, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %258

234:                                              ; preds = %225
  %235 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %236 = shl i32 1, %235
  %237 = load i32, i32* %10, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %10, align 4
  %239 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %240 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %239, i32 0, i32 0
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = icmp ne %struct.TYPE_18__* %241, null
  br i1 %242, label %243, label %257

243:                                              ; preds = %234
  %244 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %245 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %244, i32 0, i32 0
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 255
  br i1 %251, label %252, label %257

252:                                              ; preds = %243
  %253 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %254 = shl i32 1, %253
  %255 = load i32, i32* %11, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %11, align 4
  br label %257

257:                                              ; preds = %252, %243, %234
  br label %258

258:                                              ; preds = %257, %225
  %259 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %260 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %259, i32 0, i32 1
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @IPPROTO_TCP, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %299

267:                                              ; preds = %258
  %268 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %269 = shl i32 1, %268
  %270 = load i32, i32* %10, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %273 = shl i32 1, %272
  %274 = load i32, i32* %10, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %10, align 4
  %276 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %277 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %276, i32 0, i32 0
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = icmp ne %struct.TYPE_18__* %278, null
  br i1 %279, label %280, label %298

280:                                              ; preds = %267
  %281 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %282 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %281, i32 0, i32 0
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 255
  br i1 %288, label %289, label %298

289:                                              ; preds = %280
  %290 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %291 = shl i32 1, %290
  %292 = load i32, i32* %11, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %295 = shl i32 1, %294
  %296 = load i32, i32* %11, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %11, align 4
  br label %298

298:                                              ; preds = %289, %280, %267
  br label %299

299:                                              ; preds = %298, %258
  %300 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %301 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %300, i32 0, i32 1
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @IPPROTO_ICMP, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %332

308:                                              ; preds = %299
  %309 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %310 = shl i32 1, %309
  %311 = load i32, i32* %10, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %10, align 4
  %313 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %314 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %313, i32 0, i32 0
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %314, align 8
  %316 = icmp ne %struct.TYPE_18__* %315, null
  br i1 %316, label %317, label %331

317:                                              ; preds = %308
  %318 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %319 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %318, i32 0, i32 0
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 255
  br i1 %325, label %326, label %331

326:                                              ; preds = %317
  %327 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %328 = shl i32 1, %327
  %329 = load i32, i32* %11, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %11, align 4
  br label %331

331:                                              ; preds = %326, %317, %308
  br label %332

332:                                              ; preds = %331, %299
  br label %333

333:                                              ; preds = %332, %183
  br label %334

334:                                              ; preds = %333, %145
  %335 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %336 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %335, i32 0, i32 1
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* @ETH_P_IPV6, align 4
  %342 = call i64 @htons(i32 %341)
  %343 = icmp eq i64 %340, %342
  br i1 %343, label %344, label %576

344:                                              ; preds = %334
  %345 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %346 = shl i32 1, %345
  %347 = load i32, i32* %10, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %10, align 4
  %349 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %350 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %349, i32 0, i32 0
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %350, align 8
  %352 = icmp ne %struct.TYPE_18__* %351, null
  br i1 %352, label %353, label %372

353:                                              ; preds = %344
  %354 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %355 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %354, i32 0, i32 0
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i64 @htons(i32 65535)
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %372

363:                                              ; preds = %353
  %364 = load i32, i32* @OVS_KEY_ATTR_IPV6, align 4
  %365 = shl i32 1, %364
  %366 = load i32, i32* %11, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6, align 4
  %369 = shl i32 1, %368
  %370 = load i32, i32* %11, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %11, align 4
  br label %372

372:                                              ; preds = %363, %353, %344
  %373 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %374 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %373, i32 0, i32 1
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @OVS_FRAG_TYPE_LATER, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %575

381:                                              ; preds = %372
  %382 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %383 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %382, i32 0, i32 1
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @IPPROTO_UDP, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %414

390:                                              ; preds = %381
  %391 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %392 = shl i32 1, %391
  %393 = load i32, i32* %10, align 4
  %394 = or i32 %393, %392
  store i32 %394, i32* %10, align 4
  %395 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %396 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %395, i32 0, i32 0
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  %398 = icmp ne %struct.TYPE_18__* %397, null
  br i1 %398, label %399, label %413

399:                                              ; preds = %390
  %400 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %401 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %400, i32 0, i32 0
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 255
  br i1 %407, label %408, label %413

408:                                              ; preds = %399
  %409 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %410 = shl i32 1, %409
  %411 = load i32, i32* %11, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %11, align 4
  br label %413

413:                                              ; preds = %408, %399, %390
  br label %414

414:                                              ; preds = %413, %381
  %415 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %416 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %415, i32 0, i32 1
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @IPPROTO_SCTP, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %447

423:                                              ; preds = %414
  %424 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %425 = shl i32 1, %424
  %426 = load i32, i32* %10, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* %10, align 4
  %428 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %429 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %428, i32 0, i32 0
  %430 = load %struct.TYPE_18__*, %struct.TYPE_18__** %429, align 8
  %431 = icmp ne %struct.TYPE_18__* %430, null
  br i1 %431, label %432, label %446

432:                                              ; preds = %423
  %433 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %434 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %433, i32 0, i32 0
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, 255
  br i1 %440, label %441, label %446

441:                                              ; preds = %432
  %442 = load i32, i32* @OVS_KEY_ATTR_SCTP, align 4
  %443 = shl i32 1, %442
  %444 = load i32, i32* %11, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %11, align 4
  br label %446

446:                                              ; preds = %441, %432, %423
  br label %447

447:                                              ; preds = %446, %414
  %448 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %449 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %448, i32 0, i32 1
  %450 = load %struct.TYPE_17__*, %struct.TYPE_17__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @IPPROTO_TCP, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %488

456:                                              ; preds = %447
  %457 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %458 = shl i32 1, %457
  %459 = load i32, i32* %10, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %10, align 4
  %461 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %462 = shl i32 1, %461
  %463 = load i32, i32* %10, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %10, align 4
  %465 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %466 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %465, i32 0, i32 0
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = icmp ne %struct.TYPE_18__* %467, null
  br i1 %468, label %469, label %487

469:                                              ; preds = %456
  %470 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %471 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %470, i32 0, i32 0
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = icmp eq i32 %476, 255
  br i1 %477, label %478, label %487

478:                                              ; preds = %469
  %479 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %480 = shl i32 1, %479
  %481 = load i32, i32* %11, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %11, align 4
  %483 = load i32, i32* @OVS_KEY_ATTR_TCP_FLAGS, align 4
  %484 = shl i32 1, %483
  %485 = load i32, i32* %11, align 4
  %486 = or i32 %485, %484
  store i32 %486, i32* %11, align 4
  br label %487

487:                                              ; preds = %478, %469, %456
  br label %488

488:                                              ; preds = %487, %447
  %489 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %490 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %489, i32 0, i32 1
  %491 = load %struct.TYPE_17__*, %struct.TYPE_17__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %574

497:                                              ; preds = %488
  %498 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %499 = shl i32 1, %498
  %500 = load i32, i32* %10, align 4
  %501 = or i32 %500, %499
  store i32 %501, i32* %10, align 4
  %502 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %503 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %502, i32 0, i32 0
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %503, align 8
  %505 = icmp ne %struct.TYPE_18__* %504, null
  br i1 %505, label %506, label %520

506:                                              ; preds = %497
  %507 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %508 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %507, i32 0, i32 0
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp eq i32 %513, 255
  br i1 %514, label %515, label %520

515:                                              ; preds = %506
  %516 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %517 = shl i32 1, %516
  %518 = load i32, i32* %11, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %11, align 4
  br label %520

520:                                              ; preds = %515, %506, %497
  %521 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %522 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %521, i32 0, i32 1
  %523 = load %struct.TYPE_17__*, %struct.TYPE_17__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = load i32, i32* @NDISC_NEIGHBOUR_SOLICITATION, align 4
  %528 = call i64 @htons(i32 %527)
  %529 = icmp eq i64 %526, %528
  br i1 %529, label %540, label %530

530:                                              ; preds = %520
  %531 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %532 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %531, i32 0, i32 1
  %533 = load %struct.TYPE_17__*, %struct.TYPE_17__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i32, i32* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 4
  %538 = call i64 @htons(i32 %537)
  %539 = icmp eq i64 %536, %538
  br i1 %539, label %540, label %573

540:                                              ; preds = %530, %520
  %541 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %542 = shl i32 1, %541
  %543 = load i32, i32* %10, align 4
  %544 = or i32 %543, %542
  store i32 %544, i32* %10, align 4
  %545 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6, align 4
  %546 = zext i32 %545 to i64
  %547 = shl i64 1, %546
  %548 = xor i64 %547, -1
  %549 = load i32, i32* %11, align 4
  %550 = sext i32 %549 to i64
  %551 = and i64 %550, %548
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %11, align 4
  %553 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %554 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %553, i32 0, i32 0
  %555 = load %struct.TYPE_18__*, %struct.TYPE_18__** %554, align 8
  %556 = icmp ne %struct.TYPE_18__* %555, null
  br i1 %556, label %557, label %572

557:                                              ; preds = %540
  %558 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %559 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %558, i32 0, i32 0
  %560 = load %struct.TYPE_18__*, %struct.TYPE_18__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = call i64 @htons(i32 255)
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %572

567:                                              ; preds = %557
  %568 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %569 = shl i32 1, %568
  %570 = load i32, i32* %11, align 4
  %571 = or i32 %570, %569
  store i32 %571, i32* %11, align 4
  br label %572

572:                                              ; preds = %567, %557, %540
  br label %573

573:                                              ; preds = %572, %530
  br label %574

574:                                              ; preds = %573, %488
  br label %575

575:                                              ; preds = %574, %372
  br label %576

576:                                              ; preds = %575, %334
  %577 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %578 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %577, i32 0, i32 1
  %579 = load %struct.TYPE_17__*, %struct.TYPE_17__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load i32, i32* @ETH_P_NSH, align 4
  %584 = call i64 @htons(i32 %583)
  %585 = icmp eq i64 %582, %584
  br i1 %585, label %586, label %611

586:                                              ; preds = %576
  %587 = load i32, i32* @OVS_KEY_ATTR_NSH, align 4
  %588 = shl i32 1, %587
  %589 = load i32, i32* %10, align 4
  %590 = or i32 %589, %588
  store i32 %590, i32* %10, align 4
  %591 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %592 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %591, i32 0, i32 0
  %593 = load %struct.TYPE_18__*, %struct.TYPE_18__** %592, align 8
  %594 = icmp ne %struct.TYPE_18__* %593, null
  br i1 %594, label %595, label %610

595:                                              ; preds = %586
  %596 = load %struct.sw_flow_match*, %struct.sw_flow_match** %6, align 8
  %597 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %596, i32 0, i32 0
  %598 = load %struct.TYPE_18__*, %struct.TYPE_18__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = call i64 @htons(i32 65535)
  %604 = icmp eq i64 %602, %603
  br i1 %604, label %605, label %610

605:                                              ; preds = %595
  %606 = load i32, i32* @OVS_KEY_ATTR_NSH, align 4
  %607 = shl i32 1, %606
  %608 = load i32, i32* %11, align 4
  %609 = or i32 %608, %607
  store i32 %609, i32* %11, align 4
  br label %610

610:                                              ; preds = %605, %595, %586
  br label %611

611:                                              ; preds = %610, %576
  %612 = load i32, i32* %7, align 4
  %613 = load i32, i32* %10, align 4
  %614 = and i32 %612, %613
  %615 = load i32, i32* %10, align 4
  %616 = icmp ne i32 %614, %615
  br i1 %616, label %617, label %624

617:                                              ; preds = %611
  %618 = load i32, i32* %9, align 4
  %619 = load i32, i32* %7, align 4
  %620 = sext i32 %619 to i64
  %621 = load i32, i32* %10, align 4
  %622 = sext i32 %621 to i64
  %623 = call i32 @OVS_NLERR(i32 %618, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %620, i64 %622)
  store i32 0, i32* %5, align 4
  br label %638

624:                                              ; preds = %611
  %625 = load i32, i32* %8, align 4
  %626 = load i32, i32* %11, align 4
  %627 = and i32 %625, %626
  %628 = load i32, i32* %8, align 4
  %629 = icmp ne i32 %627, %628
  br i1 %629, label %630, label %637

630:                                              ; preds = %624
  %631 = load i32, i32* %9, align 4
  %632 = load i32, i32* %8, align 4
  %633 = sext i32 %632 to i64
  %634 = load i32, i32* %11, align 4
  %635 = sext i32 %634 to i64
  %636 = call i32 @OVS_NLERR(i32 %631, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %633, i64 %635)
  store i32 0, i32* %5, align 4
  br label %638

637:                                              ; preds = %624
  store i32 1, i32* %5, align 4
  br label %638

638:                                              ; preds = %637, %630, %617
  %639 = load i32, i32* %5, align 4
  ret i32 %639
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @eth_p_mpls(i64) #1

declare dso_local i32 @OVS_NLERR(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
