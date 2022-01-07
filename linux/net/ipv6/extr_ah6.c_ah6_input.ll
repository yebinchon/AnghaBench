; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.ah_data* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ah_data = type { i32, i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i32 }
%struct.ipv6hdr = type { i64, i64*, i64 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ip_auth_hdr = type { i32, %struct.ipv6hdr* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ipv6hdr* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@ah6_input_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ah6_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah6_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca %struct.ahash_request*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.ip_auth_hdr*, align 8
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.ah_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %26, i32 16)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %312

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i64 @skb_unclone(%struct.sk_buff* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %312

36:                                               ; preds = %30
  %37 = load i32, i32* @CHECKSUM_NONE, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @skb_network_header_len(%struct.sk_buff* %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %45, %struct.ip_auth_hdr** %12, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 1
  %48 = load %struct.ah_data*, %struct.ah_data** %47, align 8
  store %struct.ah_data* %48, %struct.ah_data** %14, align 8
  %49 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %50 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %49, i32 0, i32 2
  %51 = load %struct.crypto_ahash*, %struct.crypto_ahash** %50, align 8
  store %struct.crypto_ahash* %51, %struct.crypto_ahash** %9, align 8
  %52 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %17, align 4
  %55 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %12, align 8
  %56 = call i32 @ipv6_authlen(%struct.ip_auth_hdr* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %59 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add i64 16, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @XFRM_ALIGN8(i32 %63)
  %65 = icmp ne i32 %57, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %36
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %69 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 16, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @XFRM_ALIGN8(i32 %73)
  %75 = icmp ne i32 %67, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %312

77:                                               ; preds = %66, %36
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @pskb_may_pull(%struct.sk_buff* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %312

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @skb_cow_data(%struct.sk_buff* %84, i32 0, %struct.sk_buff** %8)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %312

89:                                               ; preds = %83
  %90 = load i32, i32* %19, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %94, %struct.ip_auth_hdr** %12, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %95)
  store %struct.ipv6hdr* %96, %struct.ipv6hdr** %13, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @skb_push(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @XFRM_STATE_ESN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %89
  store i32 1, i32* %22, align 4
  store i32 4, i32* %20, align 4
  br label %108

108:                                              ; preds = %107, %89
  %109 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %115 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %117, %118
  %120 = call %struct.ipv6hdr* @ah_alloc_tmp(%struct.crypto_ahash* %109, i32 %112, i32 %119)
  store %struct.ipv6hdr* %120, %struct.ipv6hdr** %7, align 8
  %121 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %122 = icmp ne %struct.ipv6hdr* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %108
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %19, align 4
  br label %312

126:                                              ; preds = %108
  %127 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call %struct.ipv6hdr* @ah_tmp_auth(%struct.ipv6hdr* %127, i32 %128)
  store %struct.ipv6hdr* %129, %struct.ipv6hdr** %5, align 8
  %130 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %131 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %132 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %130, i64 %134
  %136 = bitcast %struct.ipv6hdr* %135 to i32*
  store i32* %136, i32** %21, align 8
  %137 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = load i32, i32* %20, align 4
  %140 = call %struct.ipv6hdr* @ah_tmp_icv(%struct.crypto_ahash* %137, i32* %138, i32 %139)
  store %struct.ipv6hdr* %140, %struct.ipv6hdr** %6, align 8
  %141 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %142 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %143 = call %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash* %141, %struct.ipv6hdr* %142)
  store %struct.ahash_request* %143, %struct.ahash_request** %10, align 8
  %144 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %145 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %146 = call %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash* %144, %struct.ahash_request* %145)
  store %struct.scatterlist* %146, %struct.scatterlist** %11, align 8
  %147 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %147, i64 %149
  store %struct.scatterlist* %150, %struct.scatterlist** %23, align 8
  %151 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %152 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @memcpy(%struct.ipv6hdr* %151, %struct.ipv6hdr* %152, i32 %153)
  %155 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %156 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %12, align 8
  %157 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %156, i32 0, i32 1
  %158 = load %struct.ipv6hdr*, %struct.ipv6hdr** %157, align 8
  %159 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %160 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memcpy(%struct.ipv6hdr* %155, %struct.ipv6hdr* %158, i32 %161)
  %163 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %12, align 8
  %164 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %163, i32 0, i32 1
  %165 = load %struct.ipv6hdr*, %struct.ipv6hdr** %164, align 8
  %166 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %167 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @memset(%struct.ipv6hdr* %165, i32 0, i32 %168)
  %170 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @XFRM_POLICY_IN, align 4
  %173 = call i64 @ipv6_clear_mutable_options(%struct.ipv6hdr* %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %126
  br label %309

176:                                              ; preds = %126
  %177 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %178 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  %179 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %180 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  store i64 0, i64* %182, align 8
  %183 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %184 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %188 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 2
  store i64 0, i64* %190, align 8
  %191 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %192 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @sg_init_table(%struct.scatterlist* %193, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %199 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @skb_to_sgvec_nomark(%struct.sk_buff* %198, %struct.scatterlist* %199, i32 0, i64 %202)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp slt i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %176
  br label %309

210:                                              ; preds = %176
  %211 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %212 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @XFRM_STATE_ESN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %210
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = call %struct.TYPE_9__* @XFRM_SKB_CB(%struct.sk_buff* %219)
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %21, align 8
  store i32 %224, i32* %225, align 4
  %226 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %227 = load i32*, i32** %21, align 8
  %228 = load i32, i32* %20, align 4
  %229 = call i32 @sg_set_buf(%struct.scatterlist* %226, i32* %227, i32 %228)
  br label %230

230:                                              ; preds = %218, %210
  %231 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %232 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %233 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %231, %struct.scatterlist* %232, %struct.ipv6hdr* %233, i64 %239)
  %241 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %242 = load i32, i32* @ah6_input_done, align 4
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = call i32 @ahash_request_set_callback(%struct.ahash_request* %241, i32 0, i32 %242, %struct.sk_buff* %243)
  %245 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %246 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %247 = call %struct.TYPE_10__* @AH_SKB_CB(%struct.sk_buff* %246)
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store %struct.ipv6hdr* %245, %struct.ipv6hdr** %248, align 8
  %249 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %250 = call i32 @crypto_ahash_digest(%struct.ahash_request* %249)
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %19, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %230
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* @EINPROGRESS, align 4
  %256 = sub nsw i32 0, %255
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %312

259:                                              ; preds = %253
  br label %309

260:                                              ; preds = %230
  %261 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %262 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %263 = load %struct.ah_data*, %struct.ah_data** %14, align 8
  %264 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @crypto_memneq(%struct.ipv6hdr* %261, %struct.ipv6hdr* %262, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  %269 = load i32, i32* @EBADMSG, align 4
  %270 = sub nsw i32 0, %269
  br label %272

271:                                              ; preds = %260
  br label %272

272:                                              ; preds = %271, %268
  %273 = phi i32 [ %270, %268 ], [ 0, %271 ]
  store i32 %273, i32* %19, align 4
  %274 = load i32, i32* %19, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %309

277:                                              ; preds = %272
  %278 = load i32, i32* %16, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %284 = call %struct.ipv6hdr* @skb_network_header(%struct.sk_buff* %283)
  %285 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %286 = load i32, i32* %15, align 4
  %287 = call i32 @memcpy(%struct.ipv6hdr* %284, %struct.ipv6hdr* %285, i32 %286)
  %288 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %289, %290
  %292 = call i32 @__skb_pull(%struct.sk_buff* %288, i32 %291)
  %293 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %294 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %277
  %300 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %301 = call i32 @skb_reset_transport_header(%struct.sk_buff* %300)
  br label %307

302:                                              ; preds = %277
  %303 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sub nsw i32 0, %304
  %306 = call i32 @skb_set_transport_header(%struct.sk_buff* %303, i32 %305)
  br label %307

307:                                              ; preds = %302, %299
  %308 = load i32, i32* %17, align 4
  store i32 %308, i32* %19, align 4
  br label %309

309:                                              ; preds = %307, %276, %259, %209, %175
  %310 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %311 = call i32 @kfree(%struct.ipv6hdr* %310)
  br label %312

312:                                              ; preds = %309, %258, %123, %88, %82, %76, %35, %29
  %313 = load i32, i32* %19, align 4
  ret i32 %313
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_authlen(%struct.ip_auth_hdr*) #1

declare dso_local i32 @XFRM_ALIGN8(i32) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ah_alloc_tmp(%struct.crypto_ahash*, i32, i32) #1

declare dso_local %struct.ipv6hdr* @ah_tmp_auth(%struct.ipv6hdr*, i32) #1

declare dso_local %struct.ipv6hdr* @ah_tmp_icv(%struct.crypto_ahash*, i32*, i32) #1

declare dso_local %struct.ahash_request* @ah_tmp_req(%struct.crypto_ahash*, %struct.ipv6hdr*) #1

declare dso_local %struct.scatterlist* @ah_req_sg(%struct.crypto_ahash*, %struct.ahash_request*) #1

declare dso_local i32 @memcpy(%struct.ipv6hdr*, %struct.ipv6hdr*, i32) #1

declare dso_local i32 @memset(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i64 @ipv6_clear_mutable_options(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec_nomark(%struct.sk_buff*, %struct.scatterlist*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_9__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, %struct.ipv6hdr*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @AH_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i64 @crypto_memneq(%struct.ipv6hdr*, %struct.ipv6hdr*, i32) #1

declare dso_local %struct.ipv6hdr* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.ipv6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
