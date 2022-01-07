; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_do_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_do_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.tls_context = type { i32, %struct.tls_prot_info }
%struct.tls_prot_info = type { i64 }
%struct.tls_sw_context_tx = type { %struct.TYPE_6__, i32, %struct.tls_rec* }
%struct.TYPE_6__ = type { i32 }
%struct.tls_rec = type { i64, %struct.sk_msg }
%struct.sk_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TLS_RECORD_TYPE_DATA = common dso_local global i8 0, align 1
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TLS_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@BIT_TX_SCHEDULED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.page*, i32, i64, i32)* @tls_sw_do_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_sw_do_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tls_context*, align 8
  %13 = alloca %struct.tls_sw_context_tx*, align 8
  %14 = alloca %struct.tls_prot_info*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.sk_msg*, align 8
  %17 = alloca %struct.tls_rec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MSG_DONTWAIT, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @sock_sndtimeo(%struct.sock* %26, i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %31)
  store %struct.tls_context* %32, %struct.tls_context** %12, align 8
  %33 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %34 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %33)
  store %struct.tls_sw_context_tx* %34, %struct.tls_sw_context_tx** %13, align 8
  %35 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %36 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %35, i32 0, i32 1
  store %struct.tls_prot_info* %36, %struct.tls_prot_info** %14, align 8
  %37 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  store i8 %37, i8* %15, align 1
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MSG_MORE, align 4
  %40 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = call i32 @sk_clear_bit(i32 %46, %struct.sock* %47)
  br label %49

49:                                               ; preds = %210, %5
  %50 = load i64, i64* %9, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %231

52:                                               ; preds = %49
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %22, align 4
  br label %250

62:                                               ; preds = %52
  %63 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %64 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %63, i32 0, i32 2
  %65 = load %struct.tls_rec*, %struct.tls_rec** %64, align 8
  %66 = icmp ne %struct.tls_rec* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %69 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %68, i32 0, i32 2
  %70 = load %struct.tls_rec*, %struct.tls_rec** %69, align 8
  store %struct.tls_rec* %70, %struct.tls_rec** %17, align 8
  br label %76

71:                                               ; preds = %62
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = call %struct.tls_rec* @tls_get_rec(%struct.sock* %72)
  %74 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %75 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %74, i32 0, i32 2
  store %struct.tls_rec* %73, %struct.tls_rec** %75, align 8
  store %struct.tls_rec* %73, %struct.tls_rec** %17, align 8
  br label %76

76:                                               ; preds = %71, %67
  %77 = load %struct.tls_rec*, %struct.tls_rec** %17, align 8
  %78 = icmp ne %struct.tls_rec* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %22, align 4
  br label %250

82:                                               ; preds = %76
  %83 = load %struct.tls_rec*, %struct.tls_rec** %17, align 8
  %84 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %83, i32 0, i32 1
  store %struct.sk_msg* %84, %struct.sk_msg** %16, align 8
  store i32 0, i32* %20, align 4
  %85 = load i32, i32* @TLS_MAX_PAYLOAD_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %88 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %86, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %21, align 4
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %24, align 8
  %94 = load i64, i64* %24, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp uge i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %24, align 8
  store i32 1, i32* %20, align 4
  br label %101

101:                                              ; preds = %98, %82
  %102 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %103 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %24, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %109 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  store i64 %111, i64* %25, align 8
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = call i32 @sk_stream_memory_free(%struct.sock* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %101
  br label %211

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %230, %116
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load i64, i64* %25, align 8
  %120 = call i32 @tls_alloc_encrypted_msg(%struct.sock* %118, i64 %119)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %218

129:                                              ; preds = %123
  %130 = load i64, i64* %25, align 8
  %131 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %132 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %130, %134
  %136 = load i64, i64* %24, align 8
  %137 = sub i64 %136, %135
  store i64 %137, i64* %24, align 8
  store i32 1, i32* %20, align 4
  br label %138

138:                                              ; preds = %129, %117
  %139 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %140 = load %struct.page*, %struct.page** %7, align 8
  %141 = load i64, i64* %24, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @sk_msg_page_add(%struct.sk_msg* %139, %struct.page* %140, i64 %141, i32 %142)
  %144 = load %struct.sock*, %struct.sock** %6, align 8
  %145 = load i64, i64* %24, align 8
  %146 = call i32 @sk_mem_charge(%struct.sock* %144, i64 %145)
  %147 = load i64, i64* %24, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %8, align 4
  %152 = load i64, i64* %24, align 8
  %153 = load i64, i64* %9, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %24, align 8
  %156 = load i64, i64* %19, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %19, align 8
  %158 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %159 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %138
  %163 = load i32, i32* %23, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %167 = call i64 @sk_msg_full(%struct.sk_msg* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %210

169:                                              ; preds = %165, %162, %138
  %170 = load %struct.tls_rec*, %struct.tls_rec** %17, align 8
  %171 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %173 = load %struct.sock*, %struct.sock** %6, align 8
  %174 = load i32, i32* %20, align 4
  %175 = load i8, i8* %15, align 1
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @bpf_exec_tx_verdict(%struct.sk_msg* %172, %struct.sock* %173, i32 %174, i8 zeroext %175, i64* %19, i32 %176)
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %22, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %209

180:                                              ; preds = %169
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* @EINPROGRESS, align 4
  %183 = sub nsw i32 0, %182
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %208

188:                                              ; preds = %180
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %218

194:                                              ; preds = %188
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* @EAGAIN, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* @ENOSPC, align 4
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 0, i32* %22, align 4
  br label %205

205:                                              ; preds = %204, %199
  br label %250

206:                                              ; preds = %194
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %185
  br label %209

209:                                              ; preds = %208, %169
  br label %210

210:                                              ; preds = %209, %165
  br label %49

211:                                              ; preds = %115
  %212 = load i32, i32* @SOCK_NOSPACE, align 4
  %213 = load %struct.sock*, %struct.sock** %6, align 8
  %214 = getelementptr inbounds %struct.sock, %struct.sock* %213, i32 0, i32 1
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = call i32 @set_bit(i32 %212, i32* %216)
  br label %218

218:                                              ; preds = %211, %193, %128
  %219 = load %struct.sock*, %struct.sock** %6, align 8
  %220 = call i32 @sk_stream_wait_memory(%struct.sock* %219, i64* %11)
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load %struct.sock*, %struct.sock** %6, align 8
  %225 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %226 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @tls_trim_both_msgs(%struct.sock* %224, i64 %228)
  br label %250

230:                                              ; preds = %218
  br label %117

231:                                              ; preds = %49
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %231
  %235 = load i32, i32* @BIT_TX_SCHEDULED, align 4
  %236 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %237 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %236, i32 0, i32 1
  %238 = call i64 @test_and_clear_bit(i32 %235, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %242 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = call i32 @cancel_delayed_work(i32* %243)
  %245 = load %struct.sock*, %struct.sock** %6, align 8
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @tls_tx_records(%struct.sock* %245, i32 %246)
  br label %248

248:                                              ; preds = %240, %234
  br label %249

249:                                              ; preds = %248, %231
  br label %250

250:                                              ; preds = %249, %223, %205, %79, %57
  %251 = load %struct.sock*, %struct.sock** %6, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %22, align 4
  %254 = call i32 @sk_stream_error(%struct.sock* %251, i32 %252, i32 %253)
  store i32 %254, i32* %22, align 4
  %255 = load i64, i64* %19, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i64, i64* %19, align 8
  br label %262

259:                                              ; preds = %250
  %260 = load i32, i32* %22, align 4
  %261 = sext i32 %260 to i64
  br label %262

262:                                              ; preds = %259, %257
  %263 = phi i64 [ %258, %257 ], [ %261, %259 ]
  %264 = trunc i64 %263 to i32
  ret i32 %264
}

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local %struct.tls_rec* @tls_get_rec(%struct.sock*) #1

declare dso_local i32 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @tls_alloc_encrypted_msg(%struct.sock*, i64) #1

declare dso_local i32 @sk_msg_page_add(%struct.sk_msg*, %struct.page*, i64, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i64) #1

declare dso_local i64 @sk_msg_full(%struct.sk_msg*) #1

declare dso_local i32 @bpf_exec_tx_verdict(%struct.sk_msg*, %struct.sock*, i32, i8 zeroext, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sk_stream_wait_memory(%struct.sock*, i64*) #1

declare dso_local i32 @tls_trim_both_msgs(%struct.sock*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tls_tx_records(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
