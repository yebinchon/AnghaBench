; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.msghdr = type { i32, i32, i32 }
%struct.tls_context = type { i32, i32, %struct.tls_prot_info }
%struct.tls_prot_info = type { i64 }
%struct.tls_sw_context_tx = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_8__, i32, i32, %struct.tls_rec* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tls_rec = type { i64, %struct.sk_msg, %struct.sk_msg }
%struct.sk_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TLS_RECORD_TYPE_DATA = common dso_local global i8 0, align 1
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TLS_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@BIT_TX_SCHEDULED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_sw_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tls_context*, align 8
  %10 = alloca %struct.tls_prot_info*, align 8
  %11 = alloca %struct.tls_sw_context_tx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_msg*, align 8
  %19 = alloca %struct.sk_msg*, align 8
  %20 = alloca %struct.tls_rec*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MSG_DONTWAIT, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @sock_sndtimeo(%struct.sock* %29, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %36)
  store %struct.tls_context* %37, %struct.tls_context** %9, align 8
  %38 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %39 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %38, i32 0, i32 2
  store %struct.tls_prot_info* %39, %struct.tls_prot_info** %10, align 8
  %40 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %41 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %40)
  store %struct.tls_sw_context_tx* %41, %struct.tls_sw_context_tx** %11, align 8
  %42 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %43 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  store i8 %45, i8* %13, align 1
  %46 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i32 0, i32 1
  %48 = call i32 @iov_iter_is_kvec(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MSG_MORE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %15, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %57 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MSG_MORE, align 4
  %61 = load i32, i32* @MSG_DONTWAIT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MSG_NOSIGNAL, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %59, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @ENOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %522

71:                                               ; preds = %3
  %72 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %73 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %72, i32 0, i32 1
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = call i32 @lock_sock(%struct.sock* %75)
  %77 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %71
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %85 = call i32 @tls_proccess_cmsg(%struct.sock* %83, %struct.msghdr* %84, i8* %13)
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* %27, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* @EINPROGRESS, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %103

96:                                               ; preds = %88
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %500

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %71
  br label %106

106:                                              ; preds = %438, %412, %281, %105
  %107 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %108 = call i64 @msg_data_left(%struct.msghdr* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %439

110:                                              ; preds = %106
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %27, align 4
  br label %500

120:                                              ; preds = %110
  %121 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %122 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %121, i32 0, i32 6
  %123 = load %struct.tls_rec*, %struct.tls_rec** %122, align 8
  %124 = icmp ne %struct.tls_rec* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %127 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %126, i32 0, i32 6
  %128 = load %struct.tls_rec*, %struct.tls_rec** %127, align 8
  store %struct.tls_rec* %128, %struct.tls_rec** %20, align 8
  br label %134

129:                                              ; preds = %120
  %130 = load %struct.sock*, %struct.sock** %5, align 8
  %131 = call %struct.tls_rec* @tls_get_rec(%struct.sock* %130)
  %132 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %133 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %132, i32 0, i32 6
  store %struct.tls_rec* %131, %struct.tls_rec** %133, align 8
  store %struct.tls_rec* %131, %struct.tls_rec** %20, align 8
  br label %134

134:                                              ; preds = %129, %125
  %135 = load %struct.tls_rec*, %struct.tls_rec** %20, align 8
  %136 = icmp ne %struct.tls_rec* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %27, align 4
  br label %500

140:                                              ; preds = %134
  %141 = load %struct.tls_rec*, %struct.tls_rec** %20, align 8
  %142 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %141, i32 0, i32 2
  store %struct.sk_msg* %142, %struct.sk_msg** %18, align 8
  %143 = load %struct.tls_rec*, %struct.tls_rec** %20, align 8
  %144 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %143, i32 0, i32 1
  store %struct.sk_msg* %144, %struct.sk_msg** %19, align 8
  %145 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %146 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %26, align 4
  store i32 0, i32* %23, align 4
  %149 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %150 = call i64 @msg_data_left(%struct.msghdr* %149)
  store i64 %150, i64* %16, align 8
  %151 = load i32, i32* @TLS_MAX_PAYLOAD_SIZE, align 4
  %152 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %153 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %151, %155
  store i32 %156, i32* %24, align 4
  %157 = load i64, i64* %16, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp uge i64 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %140
  %162 = load i32, i32* %24, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %16, align 8
  store i32 1, i32* %23, align 4
  br label %164

164:                                              ; preds = %161, %140
  %165 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %166 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %16, align 8
  %171 = add i64 %169, %170
  %172 = load %struct.tls_prot_info*, %struct.tls_prot_info** %10, align 8
  %173 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %171, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %21, align 4
  %177 = load %struct.sock*, %struct.sock** %5, align 8
  %178 = call i32 @sk_stream_memory_free(%struct.sock* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %164
  br label %413

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %437, %181
  %183 = load %struct.sock*, %struct.sock** %5, align 8
  %184 = load i32, i32* %21, align 4
  %185 = call i32 @tls_alloc_encrypted_msg(%struct.sock* %183, i32 %184)
  store i32 %185, i32* %27, align 4
  %186 = load i32, i32* %27, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %182
  %189 = load i32, i32* %27, align 4
  %190 = load i32, i32* @ENOSPC, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %420

194:                                              ; preds = %188
  %195 = load i32, i32* %21, align 4
  %196 = load %struct.sk_msg*, %struct.sk_msg** %19, align 8
  %197 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %195, %199
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %16, align 8
  %203 = sub i64 %202, %201
  store i64 %203, i64* %16, align 8
  store i32 1, i32* %23, align 4
  br label %204

204:                                              ; preds = %194, %182
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %303, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %23, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %303

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %303, label %216

216:                                              ; preds = %213
  %217 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %218 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %28, align 4
  %221 = load %struct.sock*, %struct.sock** %5, align 8
  %222 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %223 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %222, i32 0, i32 1
  %224 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %225 = load i64, i64* %16, align 8
  %226 = call i32 @sk_msg_zerocopy_from_iter(%struct.sock* %221, i32* %223, %struct.sk_msg* %224, i64 %225)
  store i32 %226, i32* %27, align 4
  %227 = load i32, i32* %27, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %216
  br label %298

230:                                              ; preds = %216
  %231 = load %struct.tls_rec*, %struct.tls_rec** %20, align 8
  %232 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load i32, i32* %25, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %25, align 4
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* %17, align 8
  %237 = add i64 %236, %235
  store i64 %237, i64* %17, align 8
  %238 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %239 = load i32, i32* %28, align 4
  %240 = call i32 @sk_msg_sg_copy_set(%struct.sk_msg* %238, i32 %239)
  %241 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %242 = load %struct.sock*, %struct.sock** %5, align 8
  %243 = load i32, i32* %23, align 4
  %244 = load i8, i8* %13, align 1
  %245 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %246 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @bpf_exec_tx_verdict(%struct.sk_msg* %241, %struct.sock* %242, i32 %243, i8 zeroext %244, i64* %17, i32 %247)
  store i32 %248, i32* %27, align 4
  %249 = load i32, i32* %27, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %281

251:                                              ; preds = %230
  %252 = load i32, i32* %27, align 4
  %253 = load i32, i32* @EINPROGRESS, align 4
  %254 = sub nsw i32 0, %253
  %255 = icmp eq i32 %252, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i32, i32* %22, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %22, align 4
  br label %280

259:                                              ; preds = %251
  %260 = load i32, i32* %27, align 4
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %420

265:                                              ; preds = %259
  %266 = load i32, i32* %27, align 4
  %267 = load i32, i32* @ENOSPC, align 4
  %268 = sub nsw i32 0, %267
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %282

271:                                              ; preds = %265
  %272 = load i32, i32* %27, align 4
  %273 = load i32, i32* @EAGAIN, align 4
  %274 = sub nsw i32 0, %273
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %500

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279, %256
  br label %281

281:                                              ; preds = %280, %230
  br label %106

282:                                              ; preds = %270
  %283 = load i64, i64* %16, align 8
  %284 = load i64, i64* %17, align 8
  %285 = sub i64 %284, %283
  store i64 %285, i64* %17, align 8
  %286 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %287 = load i32, i32* %28, align 4
  %288 = call i32 @sk_msg_sg_copy_clear(%struct.sk_msg* %286, i32 %287)
  %289 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %290 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %289, i32 0, i32 1
  %291 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %292 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %26, align 4
  %296 = sub nsw i32 %294, %295
  %297 = call i32 @iov_iter_revert(i32* %290, i32 %296)
  br label %298

298:                                              ; preds = %282, %229
  %299 = load %struct.sock*, %struct.sock** %5, align 8
  %300 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %301 = load i32, i32* %26, align 4
  %302 = call i32 @sk_msg_trim(%struct.sock* %299, %struct.sk_msg* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %213, %210, %204
  %304 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %305 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* %16, align 8
  %310 = add i64 %308, %309
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %21, align 4
  %312 = load %struct.sock*, %struct.sock** %5, align 8
  %313 = load i32, i32* %21, align 4
  %314 = call i32 @tls_clone_plaintext_msg(%struct.sock* %312, i32 %313)
  store i32 %314, i32* %27, align 4
  %315 = load i32, i32* %27, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %346

317:                                              ; preds = %303
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* @ENOSPC, align 4
  %320 = sub nsw i32 0, %319
  %321 = icmp ne i32 %318, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %500

323:                                              ; preds = %317
  %324 = load i32, i32* %21, align 4
  %325 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %326 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %324, %328
  %330 = sext i32 %329 to i64
  %331 = load i64, i64* %16, align 8
  %332 = sub i64 %331, %330
  store i64 %332, i64* %16, align 8
  store i32 1, i32* %23, align 4
  %333 = load %struct.sock*, %struct.sock** %5, align 8
  %334 = load %struct.sk_msg*, %struct.sk_msg** %19, align 8
  %335 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %336 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = load %struct.tls_prot_info*, %struct.tls_prot_info** %10, align 8
  %341 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %339, %342
  %344 = trunc i64 %343 to i32
  %345 = call i32 @sk_msg_trim(%struct.sock* %333, %struct.sk_msg* %334, i32 %344)
  br label %346

346:                                              ; preds = %323, %303
  %347 = load i64, i64* %16, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %346
  %350 = load %struct.sock*, %struct.sock** %5, align 8
  %351 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %352 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %351, i32 0, i32 1
  %353 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %354 = load i64, i64* %16, align 8
  %355 = call i32 @sk_msg_memcopy_from_iter(%struct.sock* %350, i32* %352, %struct.sk_msg* %353, i64 %354)
  store i32 %355, i32* %27, align 4
  %356 = load i32, i32* %27, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %349
  br label %426

359:                                              ; preds = %349
  br label %360

360:                                              ; preds = %359, %346
  %361 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %362 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %361, i32 0, i32 0
  store i32 1, i32* %362, align 8
  %363 = load i64, i64* %16, align 8
  %364 = load i64, i64* %17, align 8
  %365 = add i64 %364, %363
  store i64 %365, i64* %17, align 8
  %366 = load i32, i32* %23, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %360
  %369 = load i32, i32* %15, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %412

371:                                              ; preds = %368, %360
  %372 = load %struct.sk_msg*, %struct.sk_msg** %18, align 8
  %373 = load %struct.sock*, %struct.sock** %5, align 8
  %374 = load i32, i32* %23, align 4
  %375 = load i8, i8* %13, align 1
  %376 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %377 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @bpf_exec_tx_verdict(%struct.sk_msg* %372, %struct.sock* %373, i32 %374, i8 zeroext %375, i64* %17, i32 %378)
  store i32 %379, i32* %27, align 4
  %380 = load i32, i32* %27, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %411

382:                                              ; preds = %371
  %383 = load i32, i32* %27, align 4
  %384 = load i32, i32* @EINPROGRESS, align 4
  %385 = sub nsw i32 0, %384
  %386 = icmp eq i32 %383, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load i32, i32* %22, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %22, align 4
  br label %410

390:                                              ; preds = %382
  %391 = load i32, i32* %27, align 4
  %392 = load i32, i32* @ENOMEM, align 4
  %393 = sub nsw i32 0, %392
  %394 = icmp eq i32 %391, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  br label %420

396:                                              ; preds = %390
  %397 = load i32, i32* %27, align 4
  %398 = load i32, i32* @EAGAIN, align 4
  %399 = sub nsw i32 0, %398
  %400 = icmp ne i32 %397, %399
  br i1 %400, label %401, label %408

401:                                              ; preds = %396
  %402 = load i32, i32* %27, align 4
  %403 = load i32, i32* @ENOSPC, align 4
  %404 = sub nsw i32 0, %403
  %405 = icmp eq i32 %402, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  store i32 0, i32* %27, align 4
  br label %407

407:                                              ; preds = %406, %401
  br label %500

408:                                              ; preds = %396
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409, %387
  br label %411

411:                                              ; preds = %410, %371
  br label %412

412:                                              ; preds = %411, %368
  br label %106

413:                                              ; preds = %180
  %414 = load i32, i32* @SOCK_NOSPACE, align 4
  %415 = load %struct.sock*, %struct.sock** %5, align 8
  %416 = getelementptr inbounds %struct.sock, %struct.sock* %415, i32 0, i32 1
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 0
  %419 = call i32 @set_bit(i32 %414, i32* %418)
  br label %420

420:                                              ; preds = %413, %395, %264, %193
  %421 = load %struct.sock*, %struct.sock** %5, align 8
  %422 = call i32 @sk_stream_wait_memory(%struct.sock* %421, i64* %8)
  store i32 %422, i32* %27, align 4
  %423 = load i32, i32* %27, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %420
  br label %426

426:                                              ; preds = %425, %358
  %427 = load %struct.sock*, %struct.sock** %5, align 8
  %428 = load i32, i32* %26, align 4
  %429 = call i32 @tls_trim_both_msgs(%struct.sock* %427, i32 %428)
  br label %500

430:                                              ; preds = %420
  %431 = load %struct.sk_msg*, %struct.sk_msg** %19, align 8
  %432 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %21, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %430
  br label %182

438:                                              ; preds = %430
  br label %106

439:                                              ; preds = %106
  %440 = load i32, i32* %22, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  br label %500

443:                                              ; preds = %439
  %444 = load i32, i32* %25, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %482

446:                                              ; preds = %443
  %447 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %448 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @smp_store_mb(i32 %449, i32 1)
  %451 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %452 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %451, i32 0, i32 5
  %453 = call i64 @atomic_read(i32* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %446
  %456 = load i32, i32* @EINPROGRESS, align 4
  %457 = sub nsw i32 0, %456
  %458 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %459 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %458, i32 0, i32 3
  %460 = call i32 @crypto_wait_req(i32 %457, %struct.TYPE_8__* %459)
  br label %466

461:                                              ; preds = %446
  %462 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %463 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  %465 = call i32 @reinit_completion(i32* %464)
  br label %466

466:                                              ; preds = %461, %455
  %467 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %468 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @WRITE_ONCE(i32 %469, i32 0)
  %471 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %472 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %466
  %477 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %478 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %27, align 4
  store i64 0, i64* %17, align 8
  br label %481

481:                                              ; preds = %476, %466
  br label %482

482:                                              ; preds = %481, %443
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* @BIT_TX_SCHEDULED, align 4
  %485 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %486 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %485, i32 0, i32 2
  %487 = call i64 @test_and_clear_bit(i32 %484, i32* %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %499

489:                                              ; preds = %483
  %490 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %11, align 8
  %491 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 0
  %493 = call i32 @cancel_delayed_work(i32* %492)
  %494 = load %struct.sock*, %struct.sock** %5, align 8
  %495 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %496 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @tls_tx_records(%struct.sock* %494, i32 %497)
  br label %499

499:                                              ; preds = %489, %483
  br label %500

500:                                              ; preds = %499, %442, %426, %407, %322, %276, %137, %115, %101
  %501 = load %struct.sock*, %struct.sock** %5, align 8
  %502 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %503 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %27, align 4
  %506 = call i32 @sk_stream_error(%struct.sock* %501, i32 %504, i32 %505)
  store i32 %506, i32* %27, align 4
  %507 = load %struct.sock*, %struct.sock** %5, align 8
  %508 = call i32 @release_sock(%struct.sock* %507)
  %509 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %510 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %509, i32 0, i32 1
  %511 = call i32 @mutex_unlock(i32* %510)
  %512 = load i64, i64* %17, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %500
  %515 = load i64, i64* %17, align 8
  br label %519

516:                                              ; preds = %500
  %517 = load i32, i32* %27, align 4
  %518 = sext i32 %517 to i64
  br label %519

519:                                              ; preds = %516, %514
  %520 = phi i64 [ %515, %514 ], [ %518, %516 ]
  %521 = trunc i64 %520 to i32
  store i32 %521, i32* %4, align 4
  br label %522

522:                                              ; preds = %519, %68
  %523 = load i32, i32* %4, align 4
  ret i32 %523
}

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @iov_iter_is_kvec(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tls_proccess_cmsg(%struct.sock*, %struct.msghdr*, i8*) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local %struct.tls_rec* @tls_get_rec(%struct.sock*) #1

declare dso_local i32 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @tls_alloc_encrypted_msg(%struct.sock*, i32) #1

declare dso_local i32 @sk_msg_zerocopy_from_iter(%struct.sock*, i32*, %struct.sk_msg*, i64) #1

declare dso_local i32 @sk_msg_sg_copy_set(%struct.sk_msg*, i32) #1

declare dso_local i32 @bpf_exec_tx_verdict(%struct.sk_msg*, %struct.sock*, i32, i8 zeroext, i64*, i32) #1

declare dso_local i32 @sk_msg_sg_copy_clear(%struct.sk_msg*, i32) #1

declare dso_local i32 @iov_iter_revert(i32*, i32) #1

declare dso_local i32 @sk_msg_trim(%struct.sock*, %struct.sk_msg*, i32) #1

declare dso_local i32 @tls_clone_plaintext_msg(%struct.sock*, i32) #1

declare dso_local i32 @sk_msg_memcopy_from_iter(%struct.sock*, i32*, %struct.sk_msg*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sk_stream_wait_memory(%struct.sock*, i64*) #1

declare dso_local i32 @tls_trim_both_msgs(%struct.sock*, i32) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tls_tx_records(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
