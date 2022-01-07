; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.ah_data* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ah_data = type { i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ip_auth_hdr = type { i32, %struct.iphdr*, i8*, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.iphdr* }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i32 0, align 4
@XFRM_STATE_ALIGN4 = common dso_local global i32 0, align 4
@ah_output_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ah_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.ip_auth_hdr*, align 8
  %16 = alloca %struct.ah_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 2
  %23 = load %struct.ah_data*, %struct.ah_data** %22, align 8
  store %struct.ah_data* %23, %struct.ah_data** %16, align 8
  %24 = load %struct.ah_data*, %struct.ah_data** %16, align 8
  %25 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %24, i32 0, i32 1
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %25, align 8
  store %struct.crypto_ahash* %26, %struct.crypto_ahash** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_cow_data(%struct.sk_buff* %27, i32 0, %struct.sk_buff** %9)
  store i32 %28, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %336

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_network_offset(%struct.sk_buff* %34)
  %36 = sub nsw i32 0, %35
  %37 = call i32 @skb_push(%struct.sk_buff* %33, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff* %38)
  store %struct.ip_auth_hdr* %39, %struct.ip_auth_hdr** %15, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @ip_hdrlen(%struct.sk_buff* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XFRM_STATE_ESN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store i32 1, i32* %19, align 4
  store i32 8, i32* %17, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = call %struct.iphdr* @ah_alloc_tmp(%struct.crypto_ahash* %53, i32 %56, i32 %59)
  store %struct.iphdr* %60, %struct.iphdr** %13, align 8
  %61 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %62 = icmp ne %struct.iphdr* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %336

64:                                               ; preds = %50
  %65 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %66 = bitcast %struct.iphdr* %65 to i8*
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to i8**
  store i8** %70, i8*** %18, align 8
  %71 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %72 = load i8**, i8*** %18, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call %struct.iphdr* @ah_tmp_icv(%struct.crypto_ahash* %71, i8** %72, i32 %73)
  store %struct.iphdr* %74, %struct.iphdr** %8, align 8
  %75 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %77 = call %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash* %75, %struct.iphdr* %76)
  store %struct.ahash_request* %77, %struct.ahash_request** %11, align 8
  %78 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %79 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %80 = call %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash* %78, %struct.ahash_request* %79)
  store %struct.scatterlist* %80, %struct.scatterlist** %12, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i64 %83
  store %struct.scatterlist* %84, %struct.scatterlist** %20, align 8
  %85 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %86 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %85, i32 0, i32 1
  %87 = load %struct.iphdr*, %struct.iphdr** %86, align 8
  %88 = load %struct.ah_data*, %struct.ah_data** %16, align 8
  %89 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memset(%struct.iphdr* %87, i32 0, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %92)
  store %struct.iphdr* %93, %struct.iphdr** %14, align 8
  %94 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %98 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %100 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %110 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 5
  br i1 %112, label %113, label %139

113:                                              ; preds = %64
  %114 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i64 1
  %121 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i64 1
  %123 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 48
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memcpy(%struct.iphdr* %120, %struct.iphdr* %122, i32 %129)
  %131 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %132 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 1
  %134 = call i32 @ip_clear_mutable_options(%struct.iphdr* %131, i32* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %113
  br label %333

138:                                              ; preds = %113
  br label %139

139:                                              ; preds = %138, %64
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = call i32* @skb_mac_header(%struct.sk_buff* %140)
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %144 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @IPPROTO_AH, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32* @skb_mac_header(%struct.sk_buff* %146)
  store i32 %145, i32* %147, align 4
  %148 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @htons(i64 %152)
  %154 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %155 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 8
  %156 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %163 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @XFRM_STATE_ALIGN4, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %139
  %170 = load %struct.ah_data*, %struct.ah_data** %16, align 8
  %171 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = add i64 48, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @XFRM_ALIGN4(i32 %175)
  %177 = ashr i32 %176, 2
  %178 = sub nsw i32 %177, 2
  %179 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %180 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %193

181:                                              ; preds = %139
  %182 = load %struct.ah_data*, %struct.ah_data** %16, align 8
  %183 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add i64 48, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @XFRM_ALIGN8(i32 %187)
  %189 = ashr i32 %188, 2
  %190 = sub nsw i32 %189, 2
  %191 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %192 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %181, %169
  %194 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %195 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %194, i32 0, i32 4
  store i64 0, i64* %195, align 8
  %196 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %197 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %201 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = call %struct.TYPE_11__* @XFRM_SKB_CB(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @htonl(i32 %207)
  %209 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %210 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %19, align 4
  %214 = add nsw i32 %212, %213
  %215 = call i32 @sg_init_table(%struct.scatterlist* %211, i32 %214)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @skb_to_sgvec_nomark(%struct.sk_buff* %216, %struct.scatterlist* %217, i32 0, i64 %220)
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %193
  br label %333

228:                                              ; preds = %193
  %229 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %230 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @XFRM_STATE_ESN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %228
  %237 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %238 = call %struct.TYPE_11__* @XFRM_SKB_CB(%struct.sk_buff* %237)
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @htonl(i32 %242)
  %244 = load i8**, i8*** %18, align 8
  store i8* %243, i8** %244, align 8
  %245 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %246 = load i8**, i8*** %18, align 8
  %247 = load i32, i32* %17, align 4
  %248 = call i32 @sg_set_buf(%struct.scatterlist* %245, i8** %246, i32 %247)
  br label %249

249:                                              ; preds = %236, %228
  %250 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %251 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %252 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %254 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %255, %257
  %259 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %250, %struct.scatterlist* %251, %struct.iphdr* %252, i64 %258)
  %260 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %261 = load i32, i32* @ah_output_done, align 4
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = call i32 @ahash_request_set_callback(%struct.ahash_request* %260, i32 0, i32 %261, %struct.sk_buff* %262)
  %264 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %266 = call %struct.TYPE_12__* @AH_SKB_CB(%struct.sk_buff* %265)
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  store %struct.iphdr* %264, %struct.iphdr** %267, align 8
  %268 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %269 = call i32 @crypto_ahash_digest(%struct.ahash_request* %268)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* %5, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %249
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @EINPROGRESS, align 4
  %275 = sub nsw i32 0, %274
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %336

278:                                              ; preds = %272
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @ENOSPC, align 4
  %281 = sub nsw i32 0, %280
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %284, i32* %5, align 4
  br label %285

285:                                              ; preds = %283, %278
  br label %333

286:                                              ; preds = %249
  %287 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %15, align 8
  %288 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %287, i32 0, i32 1
  %289 = load %struct.iphdr*, %struct.iphdr** %288, align 8
  %290 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %291 = load %struct.ah_data*, %struct.ah_data** %16, align 8
  %292 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @memcpy(%struct.iphdr* %289, %struct.iphdr* %290, i32 %293)
  %295 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %296 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %299 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %298, i32 0, i32 4
  store i64 %297, i64* %299, align 8
  %300 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %301 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %304 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %303, i32 0, i32 3
  store i64 %302, i64* %304, align 8
  %305 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %306 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %309 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %308, i32 0, i32 2
  store i64 %307, i64* %309, align 8
  %310 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %311 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 5
  br i1 %313, label %314, label %332

314:                                              ; preds = %286
  %315 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %316 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %319 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  %320 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i64 1
  %322 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %323 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %322, i64 1
  %324 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = mul nsw i32 %326, 4
  %328 = sext i32 %327 to i64
  %329 = sub i64 %328, 48
  %330 = trunc i64 %329 to i32
  %331 = call i32 @memcpy(%struct.iphdr* %321, %struct.iphdr* %323, i32 %330)
  br label %332

332:                                              ; preds = %314, %286
  br label %333

333:                                              ; preds = %332, %285, %227, %137
  %334 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %335 = call i32 @kfree(%struct.iphdr* %334)
  br label %336

336:                                              ; preds = %333, %277, %63, %30
  %337 = load i32, i32* %5, align 4
  ret i32 %337
}

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ip_auth_hdr* @ip_auth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ah_alloc_tmp(%struct.crypto_ahash*, i32, i32) #1

declare dso_local %struct.iphdr* @ah_tmp_icv(%struct.crypto_ahash*, i8**, i32) #1

declare dso_local %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash*, %struct.iphdr*) #1

declare dso_local %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash*, %struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.iphdr*, i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.iphdr*, %struct.iphdr*, i32) #1

declare dso_local i32 @ip_clear_mutable_options(%struct.iphdr*, i32*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @XFRM_ALIGN4(i32) #1

declare dso_local i32 @XFRM_ALIGN8(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local %struct.TYPE_11__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec_nomark(%struct.sk_buff*, %struct.scatterlist*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8**, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, %struct.iphdr*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @kfree(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
