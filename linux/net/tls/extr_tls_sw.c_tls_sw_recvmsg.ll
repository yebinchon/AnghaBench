; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i64, i32 }
%struct.tls_sw_context_rx = type { i8, i32, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_psock = type { i32 }
%struct.strp_msg = type { i64, i64 }
%struct.tls_msg = type { i8 }
%struct.sk_buff = type { i32 }

@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_RECVERR = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TLS_1_3_VERSION = common dso_local global i64 0, align 8
@TLS_RECORD_TYPE_DATA = common dso_local global i8 0, align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@SOL_TLS = common dso_local global i32 0, align 4
@TLS_GET_RECORD_TYPE = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_sw_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tls_context*, align 8
  %15 = alloca %struct.tls_sw_context_rx*, align 8
  %16 = alloca %struct.tls_prot_info*, align 8
  %17 = alloca %struct.sk_psock*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca %struct.strp_msg*, align 8
  %21 = alloca %struct.tls_msg*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %39)
  store %struct.tls_context* %40, %struct.tls_context** %14, align 8
  %41 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %42 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %41)
  store %struct.tls_sw_context_rx* %42, %struct.tls_sw_context_rx** %15, align 8
  %43 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %44 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %43, i32 0, i32 0
  store %struct.tls_prot_info* %44, %struct.tls_prot_info** %16, align 8
  store i8 0, i8* %18, align 1
  store i64 0, i64* %19, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %45 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %45, i32 0, i32 1
  %47 = call i32 @iov_iter_is_kvec(i32* %46)
  store i32 %47, i32* %28, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MSG_PEEK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MSG_ERRQUEUE, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %6
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @SOL_IP, align 4
  %64 = load i32, i32* @IP_RECVERR, align 4
  %65 = call i32 @sock_recv_errqueue(%struct.sock* %60, %struct.msghdr* %61, i64 %62, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %499

66:                                               ; preds = %6
  %67 = load %struct.sock*, %struct.sock** %8, align 8
  %68 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %67)
  store %struct.sk_psock* %68, %struct.sk_psock** %17, align 8
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = call i32 @lock_sock(%struct.sock* %69)
  %71 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %72 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %29, align 4
  %75 = call i32 @process_rx_list(%struct.tls_sw_context_rx* %71, %struct.msghdr* %72, i8* %18, i32* %24, i64 0, i64 %73, i32 0, i32 %74)
  store i32 %75, i32* %26, align 4
  %76 = load i32, i32* %26, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = load i32, i32* %26, align 4
  %81 = call i32 @tls_err_abort(%struct.sock* %79, i32 %80)
  br label %480

82:                                               ; preds = %66
  %83 = load i32, i32* %26, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %23, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %23, align 8
  %88 = icmp ule i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %415

90:                                               ; preds = %85
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @MSG_WAITALL, align 4
  %94 = and i32 %92, %93
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @sock_rcvlowat(%struct.sock* %91, i32 %94, i64 %95)
  store i32 %96, i32* %25, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %23, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %10, align 8
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @MSG_DONTWAIT, align 4
  %103 = and i32 %101, %102
  %104 = call i64 @sock_rcvtimeo(%struct.sock* %100, i32 %103)
  store i64 %104, i64* %27, align 8
  br label %105

105:                                              ; preds = %413, %144, %90
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %23, align 8
  %111 = add i64 %109, %110
  %112 = load i32, i32* %25, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %117 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %115, %108
  %121 = phi i1 [ true, %108 ], [ %119, %115 ]
  br label %122

122:                                              ; preds = %120, %105
  %123 = phi i1 [ false, %105 ], [ %121, %120 ]
  br i1 %123, label %124, label %414

124:                                              ; preds = %122
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %36, align 4
  %125 = load %struct.sock*, %struct.sock** %8, align 8
  %126 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i64, i64* %27, align 8
  %129 = call %struct.sk_buff* @tls_wait_data(%struct.sock* %125, %struct.sk_psock* %126, i32 %127, i64 %128, i32* %26)
  store %struct.sk_buff* %129, %struct.sk_buff** %22, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %131 = icmp ne %struct.sk_buff* %130, null
  br i1 %131, label %155, label %132

132:                                              ; preds = %124
  %133 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %134 = icmp ne %struct.sk_psock* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.sock*, %struct.sock** %8, align 8
  %137 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %138 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @__tcp_bpf_recvmsg(%struct.sock* %136, %struct.sk_psock* %137, %struct.msghdr* %138, i64 %139, i32 %140)
  store i32 %141, i32* %37, align 4
  %142 = load i32, i32* %37, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %135
  %145 = load i32, i32* %37, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %19, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %19, align 8
  %149 = load i32, i32* %37, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %10, align 8
  br label %105

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153, %132
  br label %415

155:                                              ; preds = %124
  %156 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %157 = call %struct.tls_msg* @tls_msg(%struct.sk_buff* %156)
  store %struct.tls_msg* %157, %struct.tls_msg** %21, align 8
  %158 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %159 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TLS_1_3_VERSION, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.tls_msg*, %struct.tls_msg** %21, align 8
  %165 = getelementptr inbounds %struct.tls_msg, %struct.tls_msg* %164, i32 0, i32 0
  store i8 0, i8* %165, align 1
  br label %172

166:                                              ; preds = %155
  %167 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %168 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %167, i32 0, i32 0
  %169 = load i8, i8* %168, align 8
  %170 = load %struct.tls_msg*, %struct.tls_msg** %21, align 8
  %171 = getelementptr inbounds %struct.tls_msg, %struct.tls_msg* %170, i32 0, i32 0
  store i8 %169, i8* %171, align 1
  br label %172

172:                                              ; preds = %166, %163
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %175 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %174)
  store %struct.strp_msg* %175, %struct.strp_msg** %20, align 8
  %176 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %177 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %180 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = sub i64 %178, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %33, align 4
  %185 = load i32, i32* %33, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %10, align 8
  %188 = icmp ule i64 %186, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %173
  %190 = load i32, i32* %28, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %210, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %29, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %192
  %196 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %197 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %196, i32 0, i32 0
  %198 = load i8, i8* %197, align 8
  %199 = zext i8 %198 to i32
  %200 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %195
  %204 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %205 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TLS_1_3_VERSION, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 1, i32* %32, align 4
  br label %210

210:                                              ; preds = %209, %203, %195, %192, %189, %173
  %211 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %212 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %211, i32 0, i32 0
  %213 = load i8, i8* %212, align 8
  %214 = zext i8 %213 to i32
  %215 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %210
  %219 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %220 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %35, align 4
  br label %223

222:                                              ; preds = %210
  store i32 0, i32* %35, align 4
  br label %223

223:                                              ; preds = %222, %218
  %224 = load %struct.sock*, %struct.sock** %8, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %226 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %227 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %226, i32 0, i32 1
  %228 = load i32, i32* %35, align 4
  %229 = call i32 @decrypt_skb_update(%struct.sock* %224, %struct.sk_buff* %225, i32* %227, i32* %34, i32* %32, i32 %228)
  store i32 %229, i32* %26, align 4
  %230 = load i32, i32* %26, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %223
  %233 = load i32, i32* %26, align 4
  %234 = load i32, i32* @EINPROGRESS, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load %struct.sock*, %struct.sock** %8, align 8
  %239 = load i32, i32* @EBADMSG, align 4
  %240 = call i32 @tls_err_abort(%struct.sock* %238, i32 %239)
  br label %415

241:                                              ; preds = %232, %223
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* @EINPROGRESS, align 4
  %244 = sub nsw i32 0, %243
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  store i32 1, i32* %36, align 4
  %247 = load i32, i32* %30, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %30, align 4
  br label %262

249:                                              ; preds = %241
  %250 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %251 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TLS_1_3_VERSION, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %257 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %256, i32 0, i32 0
  %258 = load i8, i8* %257, align 8
  %259 = load %struct.tls_msg*, %struct.tls_msg** %21, align 8
  %260 = getelementptr inbounds %struct.tls_msg, %struct.tls_msg* %259, i32 0, i32 0
  store i8 %258, i8* %260, align 1
  br label %261

261:                                              ; preds = %255, %249
  br label %262

262:                                              ; preds = %261, %246
  %263 = load i8, i8* %18, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = load %struct.tls_msg*, %struct.tls_msg** %21, align 8
  %267 = getelementptr inbounds %struct.tls_msg, %struct.tls_msg* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 1
  store i8 %268, i8* %18, align 1
  br label %279

269:                                              ; preds = %262
  %270 = load i8, i8* %18, align 1
  %271 = zext i8 %270 to i32
  %272 = load %struct.tls_msg*, %struct.tls_msg** %21, align 8
  %273 = getelementptr inbounds %struct.tls_msg, %struct.tls_msg* %272, i32 0, i32 0
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp ne i32 %271, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  br label %415

278:                                              ; preds = %269
  br label %279

279:                                              ; preds = %278, %265
  %280 = load i32, i32* %24, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %307, label %282

282:                                              ; preds = %279
  %283 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %284 = load i32, i32* @SOL_TLS, align 4
  %285 = load i32, i32* @TLS_GET_RECORD_TYPE, align 4
  %286 = call i32 @put_cmsg(%struct.msghdr* %283, i32 %284, i32 %285, i32 1, i8* %18)
  store i32 %286, i32* %38, align 4
  store i32 1, i32* %24, align 4
  %287 = load i8, i8* %18, align 1
  %288 = zext i8 %287 to i32
  %289 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp ne i32 %288, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %282
  %293 = load i32, i32* %38, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %292
  %296 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %297 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @MSG_CTRUNC, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %295, %292
  %303 = load i32, i32* @EIO, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %26, align 4
  br label %415

305:                                              ; preds = %295
  br label %306

306:                                              ; preds = %305, %282
  br label %307

307:                                              ; preds = %306, %279
  %308 = load i32, i32* %36, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  br label %361

311:                                              ; preds = %307
  %312 = load i32, i32* %32, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %360, label %314

314:                                              ; preds = %311
  %315 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %316 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %10, align 8
  %319 = icmp ugt i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %314
  store i32 1, i32* %31, align 4
  %321 = load i64, i64* %10, align 8
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %34, align 4
  br label %328

323:                                              ; preds = %314
  %324 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %325 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %34, align 4
  br label %328

328:                                              ; preds = %323, %320
  %329 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %330 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %331 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %334 = load i32, i32* %34, align 4
  %335 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %329, i64 %332, %struct.msghdr* %333, i32 %334)
  store i32 %335, i32* %26, align 4
  %336 = load i32, i32* %26, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  br label %415

339:                                              ; preds = %328
  %340 = load i32, i32* %29, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %359, label %342

342:                                              ; preds = %339
  %343 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %344 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i32, i32* %34, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %345, %347
  %349 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %350 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %349, i32 0, i32 1
  store i64 %348, i64* %350, align 8
  %351 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %352 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i32, i32* %34, align 4
  %355 = sext i32 %354 to i64
  %356 = sub i64 %353, %355
  %357 = load %struct.strp_msg*, %struct.strp_msg** %20, align 8
  %358 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %357, i32 0, i32 0
  store i64 %356, i64* %358, align 8
  br label %359

359:                                              ; preds = %342, %339
  br label %360

360:                                              ; preds = %359, %311
  br label %361

361:                                              ; preds = %360, %310
  %362 = load i32, i32* %34, align 4
  %363 = sext i32 %362 to i64
  %364 = load i64, i64* %10, align 8
  %365 = icmp ugt i64 %363, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load i64, i64* %10, align 8
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %34, align 4
  br label %369

369:                                              ; preds = %366, %361
  %370 = load i32, i32* %34, align 4
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %19, align 8
  %373 = add i64 %372, %371
  store i64 %373, i64* %19, align 8
  %374 = load i32, i32* %34, align 4
  %375 = sext i32 %374 to i64
  %376 = load i64, i64* %10, align 8
  %377 = sub i64 %376, %375
  store i64 %377, i64* %10, align 8
  %378 = load i32, i32* %36, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %369
  %381 = load i32, i32* %29, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %31, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %383, %380, %369
  %387 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %388 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %387, i32 0, i32 5
  %389 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %390 = call i32 @skb_queue_tail(i32* %388, %struct.sk_buff* %389)
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  br label %391

391:                                              ; preds = %386, %383
  %392 = load %struct.sock*, %struct.sock** %8, align 8
  %393 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %394 = load i32, i32* %34, align 4
  %395 = call i64 @tls_sw_advance_skb(%struct.sock* %392, %struct.sk_buff* %393, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %412

397:                                              ; preds = %391
  %398 = load i32, i32* @MSG_EOR, align 4
  %399 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %400 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %404 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %403, i32 0, i32 0
  %405 = load i8, i8* %404, align 8
  %406 = zext i8 %405 to i32
  %407 = load i8, i8* @TLS_RECORD_TYPE_DATA, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp ne i32 %406, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %397
  br label %415

411:                                              ; preds = %397
  br label %413

412:                                              ; preds = %391
  br label %414

413:                                              ; preds = %411
  br label %105

414:                                              ; preds = %412, %122
  br label %415

415:                                              ; preds = %414, %410, %338, %302, %277, %237, %154, %89
  %416 = load i32, i32* %30, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %476

418:                                              ; preds = %415
  %419 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %420 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @smp_store_mb(i32 %421, i32 1)
  %423 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %424 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %423, i32 0, i32 4
  %425 = call i64 @atomic_read(i32* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %440

427:                                              ; preds = %418
  %428 = load i32, i32* @EINPROGRESS, align 4
  %429 = sub nsw i32 0, %428
  %430 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %431 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %430, i32 0, i32 3
  %432 = call i32 @crypto_wait_req(i32 %429, %struct.TYPE_2__* %431)
  store i32 %432, i32* %26, align 4
  %433 = load i32, i32* %26, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %427
  %436 = load %struct.sock*, %struct.sock** %8, align 8
  %437 = load i32, i32* %26, align 4
  %438 = call i32 @tls_err_abort(%struct.sock* %436, i32 %437)
  store i64 0, i64* %23, align 8
  store i64 0, i64* %19, align 8
  br label %480

439:                                              ; preds = %427
  br label %445

440:                                              ; preds = %418
  %441 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %442 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 0
  %444 = call i32 @reinit_completion(i32* %443)
  br label %445

445:                                              ; preds = %440, %439
  %446 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %447 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @WRITE_ONCE(i32 %448, i32 0)
  %450 = load i32, i32* %29, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %445
  %453 = load i32, i32* %28, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %462

455:                                              ; preds = %452, %445
  %456 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %457 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %458 = load i64, i64* %23, align 8
  %459 = load i64, i64* %19, align 8
  %460 = load i32, i32* %29, align 4
  %461 = call i32 @process_rx_list(%struct.tls_sw_context_rx* %456, %struct.msghdr* %457, i8* %18, i32* %24, i64 %458, i64 %459, i32 0, i32 %460)
  store i32 %461, i32* %26, align 4
  br label %468

462:                                              ; preds = %452
  %463 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %464 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %465 = load i64, i64* %19, align 8
  %466 = load i32, i32* %29, align 4
  %467 = call i32 @process_rx_list(%struct.tls_sw_context_rx* %463, %struct.msghdr* %464, i8* %18, i32* %24, i64 0, i64 %465, i32 1, i32 %466)
  store i32 %467, i32* %26, align 4
  br label %468

468:                                              ; preds = %462, %455
  %469 = load i32, i32* %26, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %468
  %472 = load %struct.sock*, %struct.sock** %8, align 8
  %473 = load i32, i32* %26, align 4
  %474 = call i32 @tls_err_abort(%struct.sock* %472, i32 %473)
  store i64 0, i64* %23, align 8
  br label %480

475:                                              ; preds = %468
  br label %476

476:                                              ; preds = %475, %415
  %477 = load i64, i64* %19, align 8
  %478 = load i64, i64* %23, align 8
  %479 = add i64 %478, %477
  store i64 %479, i64* %23, align 8
  br label %480

480:                                              ; preds = %476, %471, %435, %78
  %481 = load %struct.sock*, %struct.sock** %8, align 8
  %482 = call i32 @release_sock(%struct.sock* %481)
  %483 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %484 = icmp ne %struct.sk_psock* %483, null
  br i1 %484, label %485, label %489

485:                                              ; preds = %480
  %486 = load %struct.sock*, %struct.sock** %8, align 8
  %487 = load %struct.sk_psock*, %struct.sk_psock** %17, align 8
  %488 = call i32 @sk_psock_put(%struct.sock* %486, %struct.sk_psock* %487)
  br label %489

489:                                              ; preds = %485, %480
  %490 = load i64, i64* %23, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  br label %496

493:                                              ; preds = %489
  %494 = load i32, i32* %26, align 4
  %495 = sext i32 %494 to i64
  br label %496

496:                                              ; preds = %493, %492
  %497 = phi i64 [ %490, %492 ], [ %495, %493 ]
  %498 = trunc i64 %497 to i32
  store i32 %498, i32* %7, align 4
  br label %499

499:                                              ; preds = %496, %59
  %500 = load i32, i32* %7, align 4
  ret i32 %500
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @iov_iter_is_kvec(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sock_recv_errqueue(%struct.sock*, %struct.msghdr*, i64, i32, i32) #1

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @process_rx_list(%struct.tls_sw_context_rx*, %struct.msghdr*, i8*, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @tls_err_abort(%struct.sock*, i32) #1

declare dso_local i32 @sock_rcvlowat(%struct.sock*, i32, i64) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @tls_wait_data(%struct.sock*, %struct.sk_psock*, i32, i64, i32*) #1

declare dso_local i32 @__tcp_bpf_recvmsg(%struct.sock*, %struct.sk_psock*, %struct.msghdr*, i64, i32) #1

declare dso_local %struct.tls_msg* @tls_msg(%struct.sk_buff*) #1

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i32 @decrypt_skb_update(%struct.sock*, %struct.sk_buff*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i8*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i64, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @tls_sw_advance_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
