; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.ah_data* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ah_data = type { i32, i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i32 }
%struct.iphdr = type { i64, i64, i64, i64 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ip_auth_hdr = type { i32, i32, %struct.iphdr* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.iphdr* }

@ENOMEM = common dso_local global i32 0, align 4
@XFRM_STATE_ALIGN4 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@ah_input_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ah_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.crypto_ahash*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca %struct.ip_auth_hdr*, align 8
  %18 = alloca %struct.ah_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.scatterlist*, align 8
  %24 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 16)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %343

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %35, %struct.ip_auth_hdr** %17, align 8
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 1
  %38 = load %struct.ah_data*, %struct.ah_data** %37, align 8
  store %struct.ah_data* %38, %struct.ah_data** %18, align 8
  %39 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %40 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %39, i32 0, i32 2
  %41 = load %struct.crypto_ahash*, %struct.crypto_ahash** %40, align 8
  store %struct.crypto_ahash* %41, %struct.crypto_ahash** %12, align 8
  %42 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %17, align 8
  %43 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %17, align 8
  %46 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  %49 = shl i32 %48, 2
  store i32 %49, i32* %5, align 4
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @XFRM_STATE_ALIGN4, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %31
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %60 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 16, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @XFRM_ALIGN4(i32 %64)
  %66 = icmp ne i32 %58, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %70 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 16, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @XFRM_ALIGN4(i32 %74)
  %76 = icmp ne i32 %68, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %343

78:                                               ; preds = %67, %57
  br label %101

79:                                               ; preds = %31
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %82 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 16, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @XFRM_ALIGN8(i32 %86)
  %88 = icmp ne i32 %80, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %92 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 16, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @XFRM_ALIGN8(i32 %96)
  %98 = icmp ne i32 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %343

100:                                              ; preds = %89, %79
  br label %101

101:                                              ; preds = %100, %78
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @pskb_may_pull(%struct.sk_buff* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %343

107:                                              ; preds = %101
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call i64 @skb_unclone(%struct.sk_buff* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %343

113:                                              ; preds = %107
  %114 = load i32, i32* @CHECKSUM_NONE, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i32 @skb_cow_data(%struct.sk_buff* %117, i32 0, %struct.sk_buff** %11)
  store i32 %118, i32* %19, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %343

121:                                              ; preds = %113
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %8, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %126, %struct.ip_auth_hdr** %17, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %127)
  store %struct.iphdr* %128, %struct.iphdr** %15, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @ip_hdrlen(%struct.sk_buff* %129)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %132 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @XFRM_STATE_ESN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %121
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %139

139:                                              ; preds = %138, %121
  %140 = load %struct.crypto_ahash*, %struct.crypto_ahash** %12, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %146 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %144, %147
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %148, %149
  %151 = call %struct.iphdr* @ah_alloc_tmp(%struct.crypto_ahash* %140, i32 %143, i32 %150)
  store %struct.iphdr* %151, %struct.iphdr** %16, align 8
  %152 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %153 = icmp ne %struct.iphdr* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %139
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %19, align 4
  br label %343

157:                                              ; preds = %139
  %158 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %159 = bitcast %struct.iphdr* %158 to i8*
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = bitcast i8* %162 to i32*
  store i32* %163, i32** %21, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = load i32, i32* %20, align 4
  %166 = call %struct.iphdr* @ah_tmp_auth(i32* %164, i32 %165)
  store %struct.iphdr* %166, %struct.iphdr** %9, align 8
  %167 = load %struct.crypto_ahash*, %struct.crypto_ahash** %12, align 8
  %168 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %169 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %170 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.iphdr* @ah_tmp_icv(%struct.crypto_ahash* %167, %struct.iphdr* %168, i32 %171)
  store %struct.iphdr* %172, %struct.iphdr** %10, align 8
  %173 = load %struct.crypto_ahash*, %struct.crypto_ahash** %12, align 8
  %174 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %175 = call %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash* %173, %struct.iphdr* %174)
  store %struct.ahash_request* %175, %struct.ahash_request** %13, align 8
  %176 = load %struct.crypto_ahash*, %struct.crypto_ahash** %12, align 8
  %177 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %178 = call %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash* %176, %struct.ahash_request* %177)
  store %struct.scatterlist* %178, %struct.scatterlist** %14, align 8
  %179 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %179, i64 %181
  store %struct.scatterlist* %182, %struct.scatterlist** %23, align 8
  %183 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %184 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @memcpy(%struct.iphdr* %183, %struct.iphdr* %184, i32 %185)
  %187 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %188 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %17, align 8
  %189 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %188, i32 0, i32 2
  %190 = load %struct.iphdr*, %struct.iphdr** %189, align 8
  %191 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %192 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @memcpy(%struct.iphdr* %187, %struct.iphdr* %190, i32 %193)
  %195 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %17, align 8
  %196 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %195, i32 0, i32 2
  %197 = load %struct.iphdr*, %struct.iphdr** %196, align 8
  %198 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %199 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @memset(%struct.iphdr* %197, i32 0, i32 %200)
  %202 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %203 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %202, i32 0, i32 3
  store i64 0, i64* %203, align 8
  %204 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  %206 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = icmp ugt i64 %211, 32
  br i1 %212, label %213, label %220

213:                                              ; preds = %157
  %214 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %215 = call i32 @ip_clear_mutable_options(%struct.iphdr* %214, i32* %24)
  store i32 %215, i32* %19, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %340

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %157
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @skb_push(%struct.sk_buff* %221, i32 %222)
  %224 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %22, align 4
  %227 = add nsw i32 %225, %226
  %228 = call i32 @sg_init_table(%struct.scatterlist* %224, i32 %227)
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @skb_to_sgvec_nomark(%struct.sk_buff* %229, %struct.scatterlist* %230, i32 0, i64 %233)
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp slt i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %220
  br label %340

241:                                              ; preds = %220
  %242 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %243 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @XFRM_STATE_ESN, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %241
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = call %struct.TYPE_9__* @XFRM_SKB_CB(%struct.sk_buff* %250)
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %21, align 8
  store i32 %255, i32* %256, align 4
  %257 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %258 = load i32*, i32** %21, align 8
  %259 = load i32, i32* %20, align 4
  %260 = call i32 @sg_set_buf(%struct.scatterlist* %257, i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %249, %241
  %262 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %263 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %266 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %262, %struct.scatterlist* %263, %struct.iphdr* %264, i64 %270)
  %272 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %273 = load i32, i32* @ah_input_done, align 4
  %274 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %275 = call i32 @ahash_request_set_callback(%struct.ahash_request* %272, i32 0, i32 %273, %struct.sk_buff* %274)
  %276 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %277 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %278 = call %struct.TYPE_10__* @AH_SKB_CB(%struct.sk_buff* %277)
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  store %struct.iphdr* %276, %struct.iphdr** %279, align 8
  %280 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %281 = call i32 @crypto_ahash_digest(%struct.ahash_request* %280)
  store i32 %281, i32* %19, align 4
  %282 = load i32, i32* %19, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %261
  %285 = load i32, i32* %19, align 4
  %286 = load i32, i32* @EINPROGRESS, align 4
  %287 = sub nsw i32 0, %286
  %288 = icmp eq i32 %285, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %343

290:                                              ; preds = %284
  br label %340

291:                                              ; preds = %261
  %292 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %293 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %294 = load %struct.ah_data*, %struct.ah_data** %18, align 8
  %295 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @crypto_memneq(%struct.iphdr* %292, %struct.iphdr* %293, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %291
  %300 = load i32, i32* @EBADMSG, align 4
  %301 = sub nsw i32 0, %300
  br label %303

302:                                              ; preds = %291
  br label %303

303:                                              ; preds = %302, %299
  %304 = phi i32 [ %301, %299 ], [ 0, %302 ]
  store i32 %304, i32* %19, align 4
  %305 = load i32, i32* %19, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  br label %340

308:                                              ; preds = %303
  %309 = load i32, i32* %5, align 4
  %310 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %311 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, %309
  store i32 %313, i32* %311, align 8
  %314 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %315 = call %struct.iphdr* @skb_network_header(%struct.sk_buff* %314)
  %316 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @memcpy(%struct.iphdr* %315, %struct.iphdr* %316, i32 %317)
  %319 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %320 = load i32, i32* %5, align 4
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %320, %321
  %323 = call i32 @__skb_pull(%struct.sk_buff* %319, i32 %322)
  %324 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %325 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %308
  %331 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %332 = call i32 @skb_reset_transport_header(%struct.sk_buff* %331)
  br label %338

333:                                              ; preds = %308
  %334 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sub nsw i32 0, %335
  %337 = call i32 @skb_set_transport_header(%struct.sk_buff* %334, i32 %336)
  br label %338

338:                                              ; preds = %333, %330
  %339 = load i32, i32* %7, align 4
  store i32 %339, i32* %19, align 4
  br label %340

340:                                              ; preds = %338, %307, %290, %240, %218
  %341 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %342 = call i32 @kfree(%struct.iphdr* %341)
  br label %343

343:                                              ; preds = %340, %289, %154, %120, %112, %106, %99, %77, %30
  %344 = load i32, i32* %19, align 4
  ret i32 %344
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @XFRM_ALIGN4(i32) #1

declare dso_local i32 @XFRM_ALIGN8(i32) #1

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ah_alloc_tmp(%struct.crypto_ahash*, i32, i32) #1

declare dso_local %struct.iphdr* @ah_tmp_auth(i32*, i32) #1

declare dso_local %struct.iphdr* @ah_tmp_icv(%struct.crypto_ahash*, %struct.iphdr*, i32) #1

declare dso_local %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash*, %struct.iphdr*) #1

declare dso_local %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash*, %struct.ahash_request*) #1

declare dso_local i32 @memcpy(%struct.iphdr*, %struct.iphdr*, i32) #1

declare dso_local i32 @memset(%struct.iphdr*, i32, i32) #1

declare dso_local i32 @ip_clear_mutable_options(%struct.iphdr*, i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec_nomark(%struct.sk_buff*, %struct.scatterlist*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_9__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, %struct.iphdr*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i64 @crypto_memneq(%struct.iphdr*, %struct.iphdr*, i32) #1

declare dso_local %struct.iphdr* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
