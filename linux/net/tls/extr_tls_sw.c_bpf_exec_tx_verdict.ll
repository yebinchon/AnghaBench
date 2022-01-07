; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_bpf_exec_tx_verdict.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_bpf_exec_tx_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_msg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_tx = type { %struct.tls_rec* }
%struct.tls_rec = type { %struct.sk_msg }
%struct.sk_psock = type { i32, %struct.sock* }

@MSG_SENDPAGE_NOPOLICY = common dso_local global i32 0, align 4
@__SK_NONE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_msg*, %struct.sock*, i32, i32, i64*, i32)* @bpf_exec_tx_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_exec_tx_verdict(%struct.sk_msg* %0, %struct.sock* %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_msg*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tls_context*, align 8
  %15 = alloca %struct.tls_sw_context_tx*, align 8
  %16 = alloca %struct.sk_msg, align 8
  %17 = alloca %struct.sk_psock*, align 8
  %18 = alloca %struct.sock*, align 8
  %19 = alloca %struct.tls_rec*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.sk_msg* %0, %struct.sk_msg** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %26)
  store %struct.tls_context* %27, %struct.tls_context** %14, align 8
  %28 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %29 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %28)
  store %struct.tls_sw_context_tx* %29, %struct.tls_sw_context_tx** %15, align 8
  %30 = bitcast %struct.sk_msg* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  store i32 0, i32* %22, align 4
  store i64 0, i64* %24, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @MSG_SENDPAGE_NOPOLICY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %21, align 4
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %37)
  store %struct.sk_psock* %38, %struct.sk_psock** %17, align 8
  %39 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %40 = icmp ne %struct.sk_psock* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %6
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41, %6
  %45 = load %struct.sock*, %struct.sock** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @tls_push_record(%struct.sock* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %308

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %300, %49
  %51 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %52 = call i32 @sk_msg_full(%struct.sk_msg* %51)
  store i32 %52, i32* %20, align 4
  %53 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %54 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @__SK_NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %60 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %24, align 8
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %65 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %66 = call i32 @sk_psock_msg_verdict(%struct.sock* %63, %struct.sk_psock* %64, %struct.sk_msg* %65)
  %67 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %68 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %24, align 8
  %70 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %71 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %58
  %76 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %77 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %24, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %24, align 8
  br label %83

82:                                               ; preds = %58
  store i64 0, i64* %24, align 8
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %50
  %85 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %86 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %91 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %94 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ugt i64 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @ENOSPC, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %22, align 4
  br label %303

107:                                              ; preds = %101, %98, %89, %84
  %108 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %109 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %111 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %23, align 4
  %115 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %116 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %107
  %120 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %121 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %23, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %127 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %125, %119, %107
  %130 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %131 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %212 [
    i32 129, label %133
    i32 128, label %150
    i32 130, label %211
  ]

133:                                              ; preds = %129
  %134 = load %struct.sock*, %struct.sock** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @tls_push_record(%struct.sock* %134, i32 %135, i32 %136)
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load %struct.sock*, %struct.sock** %9, align 8
  %142 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %143 = call i64 @sk_msg_free(%struct.sock* %141, %struct.sk_msg* %142)
  %144 = load i64*, i64** %12, align 8
  %145 = load i64, i64* %144, align 8
  %146 = sub i64 %145, %143
  store i64 %146, i64* %144, align 8
  %147 = load %struct.sock*, %struct.sock** %9, align 8
  %148 = call i32 @tls_free_open_rec(%struct.sock* %147)
  br label %303

149:                                              ; preds = %133
  br label %250

150:                                              ; preds = %129
  %151 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %152 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %151, i32 0, i32 1
  %153 = load %struct.sock*, %struct.sock** %152, align 8
  store %struct.sock* %153, %struct.sock** %18, align 8
  %154 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %155 = call i32 @memcpy(%struct.sk_msg* %16, %struct.sk_msg* %154, i32 24)
  %156 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %157 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %163 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %162, i32 0, i32 1
  store i32 0, i32* %163, align 8
  br label %170

164:                                              ; preds = %150
  %165 = load i32, i32* %23, align 4
  %166 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %167 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %161
  %171 = load %struct.sock*, %struct.sock** %9, align 8
  %172 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %173 = load i32, i32* %23, align 4
  %174 = call i32 @sk_msg_return_zero(%struct.sock* %171, %struct.sk_msg* %172, i32 %173)
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %178 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 %180, %176
  store i64 %181, i64* %179, align 8
  %182 = load %struct.sock*, %struct.sock** %9, align 8
  %183 = call i32 @release_sock(%struct.sock* %182)
  %184 = load %struct.sock*, %struct.sock** %18, align 8
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @tcp_bpf_sendmsg_redir(%struct.sock* %184, %struct.sk_msg* %16, i32 %185, i32 %186)
  store i32 %187, i32* %22, align 4
  %188 = load %struct.sock*, %struct.sock** %9, align 8
  %189 = call i32 @lock_sock(%struct.sock* %188)
  %190 = load i32, i32* %22, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %170
  %193 = load %struct.sock*, %struct.sock** %9, align 8
  %194 = call i64 @sk_msg_free_nocharge(%struct.sock* %193, %struct.sk_msg* %16)
  %195 = load i64*, i64** %12, align 8
  %196 = load i64, i64* %195, align 8
  %197 = sub i64 %196, %194
  store i64 %197, i64* %195, align 8
  %198 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %199 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %192, %170
  %202 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %203 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.sock*, %struct.sock** %9, align 8
  %209 = call i32 @tls_free_open_rec(%struct.sock* %208)
  br label %210

210:                                              ; preds = %207, %201
  br label %250

211:                                              ; preds = %129
  br label %212

212:                                              ; preds = %129, %211
  %213 = load %struct.sock*, %struct.sock** %9, align 8
  %214 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %215 = load i32, i32* %23, align 4
  %216 = call i32 @sk_msg_free_partial(%struct.sock* %213, %struct.sk_msg* %214, i32 %215)
  %217 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %218 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %23, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %212
  %223 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %224 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %223, i32 0, i32 1
  store i32 0, i32* %224, align 8
  br label %231

225:                                              ; preds = %212
  %226 = load i32, i32* %23, align 4
  %227 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %228 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %222
  %232 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %233 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load %struct.sock*, %struct.sock** %9, align 8
  %239 = call i32 @tls_free_open_rec(%struct.sock* %238)
  br label %240

240:                                              ; preds = %237, %231
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %24, align 8
  %244 = add i64 %242, %243
  %245 = load i64*, i64** %12, align 8
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %246, %244
  store i64 %247, i64* %245, align 8
  %248 = load i32, i32* @EACCES, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %22, align 4
  br label %250

250:                                              ; preds = %240, %210, %149
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = call i64 @likely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %302

257:                                              ; preds = %250
  %258 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %15, align 8
  %259 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %258, i32 0, i32 0
  %260 = load %struct.tls_rec*, %struct.tls_rec** %259, align 8
  %261 = icmp ne %struct.tls_rec* %260, null
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %25, align 4
  %264 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %15, align 8
  %265 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %264, i32 0, i32 0
  %266 = load %struct.tls_rec*, %struct.tls_rec** %265, align 8
  store %struct.tls_rec* %266, %struct.tls_rec** %19, align 8
  %267 = load %struct.tls_rec*, %struct.tls_rec** %19, align 8
  %268 = icmp ne %struct.tls_rec* %267, null
  br i1 %268, label %269, label %278

269:                                              ; preds = %257
  %270 = load %struct.tls_rec*, %struct.tls_rec** %19, align 8
  %271 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %270, i32 0, i32 0
  store %struct.sk_msg* %271, %struct.sk_msg** %8, align 8
  %272 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %273 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %269
  store i32 1, i32* %25, align 4
  br label %277

277:                                              ; preds = %276, %269
  br label %278

278:                                              ; preds = %277, %257
  %279 = load i32, i32* %25, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %278
  %282 = load i32, i32* @__SK_NONE, align 4
  %283 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %284 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %286 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %285, i32 0, i32 1
  %287 = load %struct.sock*, %struct.sock** %286, align 8
  %288 = icmp ne %struct.sock* %287, null
  br i1 %288, label %289, label %296

289:                                              ; preds = %281
  %290 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %291 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %290, i32 0, i32 1
  %292 = load %struct.sock*, %struct.sock** %291, align 8
  %293 = call i32 @sock_put(%struct.sock* %292)
  %294 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %295 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %294, i32 0, i32 1
  store %struct.sock* null, %struct.sock** %295, align 8
  br label %296

296:                                              ; preds = %289, %281
  br label %297

297:                                              ; preds = %296, %278
  %298 = load %struct.tls_rec*, %struct.tls_rec** %19, align 8
  %299 = icmp ne %struct.tls_rec* %298, null
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %50

301:                                              ; preds = %297
  br label %302

302:                                              ; preds = %301, %250
  br label %303

303:                                              ; preds = %302, %140, %104
  %304 = load %struct.sock*, %struct.sock** %9, align 8
  %305 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %306 = call i32 @sk_psock_put(%struct.sock* %304, %struct.sk_psock* %305)
  %307 = load i32, i32* %22, align 4
  store i32 %307, i32* %7, align 4
  br label %308

308:                                              ; preds = %303, %44
  %309 = load i32, i32* %7, align 4
  ret i32 %309
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i32 @tls_push_record(%struct.sock*, i32, i32) #1

declare dso_local i32 @sk_msg_full(%struct.sk_msg*) #1

declare dso_local i32 @sk_psock_msg_verdict(%struct.sock*, %struct.sk_psock*, %struct.sk_msg*) #1

declare dso_local i64 @sk_msg_free(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @tls_free_open_rec(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.sk_msg*, %struct.sk_msg*, i32) #1

declare dso_local i32 @sk_msg_return_zero(%struct.sock*, %struct.sk_msg*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @tcp_bpf_sendmsg_redir(%struct.sock*, %struct.sk_msg*, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sk_msg_free_nocharge(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @sk_msg_free_partial(%struct.sock*, %struct.sk_msg*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
