; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_net_grow.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_net_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.skb_shared_info = type { i32, i64 }

@BPF_ADJ_ROOM_ENCAP_L2_SHIFT = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_ENCAP_L3_MASK = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_FIXED_GSO = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_ENCAP_L3_IPV4 = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_ENCAP_L3_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_ENCAP_L4_GRE = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_ENCAP_L4_UDP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@SKB_GSO_GRE = common dso_local global i32 0, align 4
@SKB_GSO_IPXIP6 = common dso_local global i32 0, align 4
@SKB_GSO_IPXIP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i32)* @bpf_skb_net_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_skb_net_grow(%struct.sk_buff* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BPF_ADJ_ROOM_ENCAP_L2_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %26 = load i32, i32* @SKB_GSO_DODGY, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @skb_is_gso(%struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_is_gso_tcp(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %34
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %296

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %30, %4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @skb_cow_head(%struct.sk_buff* %52, i64 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %5, align 4
  br label %296

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %137

65:                                               ; preds = %62
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @ETH_P_IP, align 4
  %70 = call i64 @htons(i32 %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_IPV6, align 4
  %77 = call i64 @htons(i32 %76)
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %296

82:                                               ; preds = %72, %65
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV4, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV6, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %296

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_GRE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_UDP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %296

108:                                              ; preds = %100, %95
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EALREADY, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %296

116:                                              ; preds = %108
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  store i64 %123, i64* %12, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %296

133:                                              ; preds = %116
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %133, %62
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @bpf_skb_net_hdr_push(%struct.sk_buff* %138, i64 %139, i64 %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %5, align 4
  br label %296

149:                                              ; preds = %137
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %272

152:                                              ; preds = %149
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %10, align 8
  %155 = sub nsw i64 %153, %154
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 7
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 6
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %164, i64 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  store i32 1, i32* %170, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @skb_set_network_header(%struct.sk_buff* %171, i64 %172)
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_UDP, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %152
  %179 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  %180 = load i32, i32* %15, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %15, align 4
  br label %212

182:                                              ; preds = %152
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_GRE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @SKB_GSO_GRE, align 4
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %15, align 4
  br label %211

191:                                              ; preds = %182
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV6, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* @SKB_GSO_IPXIP6, align 4
  %198 = load i32, i32* %15, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %15, align 4
  br label %210

200:                                              ; preds = %191
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV4, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @SKB_GSO_IPXIP4, align 4
  %207 = load i32, i32* %15, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209, %196
  br label %211

211:                                              ; preds = %210, %187
  br label %212

212:                                              ; preds = %211, %178
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_GRE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L4_UDP, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %217, %212
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV6, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i64 4, i64 4
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %17, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = load i64, i64* %12, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %231, %233
  %235 = call i32 @skb_set_transport_header(%struct.sk_buff* %230, i64 %234)
  br label %236

236:                                              ; preds = %222, %217
  %237 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @ETH_P_IP, align 4
  %241 = call i64 @htons(i32 %240)
  %242 = icmp eq i64 %239, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %236
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV6, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* @ETH_P_IPV6, align 4
  %250 = call i64 @htons(i32 %249)
  %251 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  br label %271

253:                                              ; preds = %243, %236
  %254 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* @ETH_P_IPV6, align 4
  %258 = call i64 @htons(i32 %257)
  %259 = icmp eq i64 %256, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %253
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @BPF_F_ADJ_ROOM_ENCAP_L3_IPV4, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load i32, i32* @ETH_P_IP, align 4
  %267 = call i64 @htons(i32 %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %265, %260, %253
  br label %271

271:                                              ; preds = %270, %248
  br label %272

272:                                              ; preds = %271, %149
  %273 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %274 = call i64 @skb_is_gso(%struct.sk_buff* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %272
  %277 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %278 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %277)
  store %struct.skb_shared_info* %278, %struct.skb_shared_info** %18, align 8
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %276
  %284 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %285 = load i64, i64* %8, align 8
  %286 = call i32 @skb_decrease_gso_size(%struct.skb_shared_info* %284, i64 %285)
  br label %287

287:                                              ; preds = %283, %276
  %288 = load i32, i32* %15, align 4
  %289 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %290 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %294 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %293, i32 0, i32 1
  store i64 0, i64* %294, align 8
  br label %295

295:                                              ; preds = %287, %272
  store i32 0, i32* %5, align 4
  br label %296

296:                                              ; preds = %295, %147, %130, %113, %105, %92, %79, %60, %47
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso_tcp(%struct.sk_buff*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @bpf_skb_net_hdr_push(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_decrease_gso_size(%struct.skb_shared_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
