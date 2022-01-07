; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_receive_generic_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_receive_generic_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i32*, i64 }
%struct.bpf_prog = type { i32 }
%struct.netdev_rx_queue = type { i32 }
%struct.ethhdr = type { i64, i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@NET_SKB_PAD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xdp_buff*, %struct.bpf_prog*)* @netif_receive_generic_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netif_receive_generic_xdp(%struct.sk_buff* %0, %struct.xdp_buff* %1, %struct.bpf_prog* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.netdev_rx_queue*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ethhdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %6, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %7, align 8
  store i32 131, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_cloned(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_is_tc_redirected(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %3
  store i32 130, i32* %4, align 4
  br label %282

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i64 @skb_is_nonlinear(%struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @skb_headroom(%struct.sk_buff* %34)
  %36 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %33, %29
  %39 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i64 @skb_headroom(%struct.sk_buff* %40)
  %42 = sub nsw i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %19, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %20, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %19, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @NET_SKB_PAD, align 4
  %61 = call i32 @ALIGN(i32 %59, i32 %60)
  br label %63

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 0, %62 ]
  %65 = load i32, i32* %20, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 128
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i64 @pskb_expand_head(%struct.sk_buff* %55, i32 %64, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %277

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i64 @skb_linearize(%struct.sk_buff* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %277

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %33
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_mac_header(%struct.sk_buff* %87)
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %18, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @skb_headlen(%struct.sk_buff* %90)
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %16, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %18, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %102 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %104 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %107 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %109 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %115 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i64 @skb_headroom(%struct.sk_buff* %120)
  %122 = sub nsw i64 %119, %121
  %123 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %124 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  %125 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %126 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %10, align 8
  %128 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %129 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  %131 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %132 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = bitcast i8* %133 to %struct.ethhdr*
  store %struct.ethhdr* %134, %struct.ethhdr** %14, align 8
  %135 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %136 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @is_multicast_ether_addr_64bits(i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %140 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %13, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = call %struct.netdev_rx_queue* @netif_get_rxqueue(%struct.sk_buff* %142)
  store %struct.netdev_rx_queue* %143, %struct.netdev_rx_queue** %8, align 8
  %144 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %8, align 8
  %145 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %144, i32 0, i32 0
  %146 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %147 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %146, i32 0, i32 3
  store i32* %145, i32** %147, align 8
  %148 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %149 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %150 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %148, %struct.xdp_buff* %149)
  store i32 %150, i32* %12, align 4
  %151 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %152 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %83
  %162 = load i32, i32* %17, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @__skb_pull(%struct.sk_buff* %165, i32 %166)
  br label %177

168:                                              ; preds = %161
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sub nsw i32 0, %173
  %175 = call i32 @__skb_push(%struct.sk_buff* %172, i32 %174)
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %164
  %178 = load i32, i32* %17, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %184 = call i32 @skb_reset_network_header(%struct.sk_buff* %183)
  br label %185

185:                                              ; preds = %177, %83
  %186 = load i8*, i8** %10, align 8
  %187 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %188 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %186 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %185
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %199 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %202 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = ptrtoint i8* %200 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  %208 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %197, i32 %207)
  %209 = load i32, i32* %17, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %196, %185
  %215 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %216 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = bitcast i8* %217 to %struct.ethhdr*
  store %struct.ethhdr* %218, %struct.ethhdr** %14, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %221 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %231, label %224

224:                                              ; preds = %214
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %227 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @is_multicast_ether_addr_64bits(i32 %228)
  %230 = icmp ne i32 %225, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %224, %214
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = load i32, i32* @ETH_HLEN, align 4
  %234 = call i32 @__skb_push(%struct.sk_buff* %232, i32 %233)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @eth_type_trans(%struct.sk_buff* %235, i32 %238)
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %231, %224
  %243 = load i32, i32* %12, align 4
  switch i32 %243, label %266 [
    i32 129, label %244
    i32 128, label %244
    i32 130, label %248
    i32 132, label %269
    i32 131, label %276
  ]

244:                                              ; preds = %242, %242
  %245 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @__skb_push(%struct.sk_buff* %245, i32 %246)
  br label %280

248:                                              ; preds = %242
  %249 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %250 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %253 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = ptrtoint i8* %251 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %248
  %262 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @skb_metadata_set(%struct.sk_buff* %262, i32 %263)
  br label %265

265:                                              ; preds = %261, %248
  br label %280

266:                                              ; preds = %242
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @bpf_warn_invalid_xdp_action(i32 %267)
  br label %269

269:                                              ; preds = %242, %266
  %270 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @trace_xdp_exception(i32 %272, %struct.bpf_prog* %273, i32 %274)
  br label %276

276:                                              ; preds = %242, %269
  br label %277

277:                                              ; preds = %276, %81, %76
  %278 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %279 = call i32 @kfree_skb(%struct.sk_buff* %278)
  br label %280

280:                                              ; preds = %277, %265, %244
  %281 = load i32, i32* %12, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %280, %28
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_tc_redirected(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @is_multicast_ether_addr_64bits(i32) #1

declare dso_local %struct.netdev_rx_queue* @netif_get_rxqueue(%struct.sk_buff*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
