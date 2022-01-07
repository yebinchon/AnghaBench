; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_do_tcp_sendpages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_do_tcp_sendpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i32, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.tcp_sock = type { i32, i64 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CONFIG_DEBUG_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"page must not be a Slab one\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@sysctl_max_skb_frags = common dso_local global i32 0, align 4
@MSG_NO_SHARED_FRAGS = common dso_local global i32 0, align 4
@SKBTX_SHARED_FRAG = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@TCPHDR_PSH = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@TCP_NAGLE_PUSH = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TCP_CHRONO_SNDBUF_LIMITED = common dso_local global i32 0, align 4
@MSG_SENDPAGE_DECRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_tcp_sendpages(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %22)
  store %struct.tcp_sock* %23, %struct.tcp_sock** %12, align 8
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @sock_sndtimeo(%struct.sock* %24, i32 %27)
  store i64 %28, i64* %17, align 8
  %29 = load i32, i32* @CONFIG_DEBUG_VM, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call i32 @PageSlab(%struct.page* %33)
  %35 = call i64 @WARN_ONCE(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %387

40:                                               ; preds = %32, %5
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %46 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = call i32 @tcp_passive_fastopen(%struct.sock* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = call i32 @sk_stream_wait_connect(%struct.sock* %56, i64* %17)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %358

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %51, %40
  %63 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 @sk_clear_bit(i32 %63, %struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @tcp_send_mss(%struct.sock* %66, i32* %14, i32 %67)
  store i32 %68, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %69 = load i32, i32* @EPIPE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %62
  %76 = load %struct.sock*, %struct.sock** %7, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SEND_SHUTDOWN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %62
  br label %358

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %319, %296, %273, %83
  %85 = load i64, i64* %10, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %323

87:                                               ; preds = %84
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  %89 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %18, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %19, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %101 = call i32 @tcp_skb_can_collapse_to(%struct.sk_buff* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %99, %92, %87
  br label %104

104:                                              ; preds = %149, %103
  %105 = load %struct.sock*, %struct.sock** %7, align 8
  %106 = call i32 @sk_stream_memory_free(%struct.sock* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %297

109:                                              ; preds = %104
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sock*, %struct.sock** %7, align 8
  %115 = call i32 @tcp_rtx_and_write_queues_empty(%struct.sock* %114)
  %116 = call %struct.sk_buff* @sk_stream_alloc_skb(%struct.sock* %110, i32 0, i32 %113, i32 %115)
  store %struct.sk_buff* %116, %struct.sk_buff** %18, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  br label %304

120:                                              ; preds = %109
  %121 = load %struct.sock*, %struct.sock** %7, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %123 = call i32 @skb_entail(%struct.sock* %121, %struct.sk_buff* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %120, %99
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %10, align 8
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i64, i64* %10, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %135 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %20, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.page*, %struct.page** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @skb_can_coalesce(%struct.sk_buff* %138, i32 %139, %struct.page* %140, i32 %141)
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* @sysctl_max_skb_frags, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %152 = call i32 @tcp_mark_push(%struct.tcp_sock* %150, %struct.sk_buff* %151)
  br label %104

153:                                              ; preds = %145, %133
  %154 = load %struct.sock*, %struct.sock** %7, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @sk_wmem_schedule(%struct.sock* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %304

159:                                              ; preds = %153
  %160 = load i32, i32* %21, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %164 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %163)
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @skb_frag_size_add(i32* %170, i32 %171)
  br label %182

173:                                              ; preds = %159
  %174 = load %struct.page*, %struct.page** %8, align 8
  %175 = call i32 @get_page(%struct.page* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %177 = load i32, i32* %20, align 4
  %178 = load %struct.page*, %struct.page** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @skb_fill_page_desc(%struct.sk_buff* %176, i32 %177, %struct.page* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %173, %162
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @MSG_NO_SHARED_FRAGS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @SKBTX_SHARED_FRAG, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %190 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %187, %182
  %195 = load i32, i32* %19, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.sock*, %struct.sock** %7, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @sk_wmem_queued_add(%struct.sock* %210, i32 %211)
  %213 = load %struct.sock*, %struct.sock** %7, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @sk_mem_charge(%struct.sock* %213, i32 %214)
  %216 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %220 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %223 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %224, %226
  %228 = call i32 @WRITE_ONCE(i64 %221, i64 %227)
  %229 = load i32, i32* %19, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %231 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %230)
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %229
  store i32 %234, i32* %232, align 4
  %235 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %236 = call i32 @tcp_skb_pcount_set(%struct.sk_buff* %235, i32 0)
  %237 = load i64, i64* %16, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %194
  %240 = load i32, i32* @TCPHDR_PSH, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %243 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %242)
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %241
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %239, %194
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %16, align 8
  %251 = add nsw i64 %250, %249
  store i64 %251, i64* %16, align 8
  %252 = load i32, i32* %19, align 4
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %10, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %10, align 8
  %259 = load i64, i64* %10, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %247
  br label %324

262:                                              ; preds = %247
  %263 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %273, label %268

268:                                              ; preds = %262
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @MSG_OOB, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268, %262
  br label %84

274:                                              ; preds = %268
  %275 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %276 = call i64 @forced_push(%struct.tcp_sock* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %274
  %279 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %281 = call i32 @tcp_mark_push(%struct.tcp_sock* %279, %struct.sk_buff* %280)
  %282 = load %struct.sock*, %struct.sock** %7, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @TCP_NAGLE_PUSH, align 4
  %285 = call i32 @__tcp_push_pending_frames(%struct.sock* %282, i32 %283, i32 %284)
  br label %296

286:                                              ; preds = %274
  %287 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %288 = load %struct.sock*, %struct.sock** %7, align 8
  %289 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %288)
  %290 = icmp eq %struct.sk_buff* %287, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load %struct.sock*, %struct.sock** %7, align 8
  %293 = load i32, i32* %13, align 4
  %294 = call i32 @tcp_push_one(%struct.sock* %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %286
  br label %296

296:                                              ; preds = %295, %278
  br label %84

297:                                              ; preds = %108
  %298 = load i32, i32* @SOCK_NOSPACE, align 4
  %299 = load %struct.sock*, %struct.sock** %7, align 8
  %300 = getelementptr inbounds %struct.sock, %struct.sock* %299, i32 0, i32 5
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = call i32 @set_bit(i32 %298, i32* %302)
  br label %304

304:                                              ; preds = %297, %158, %119
  %305 = load %struct.sock*, %struct.sock** %7, align 8
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @MSG_MORE, align 4
  %308 = xor i32 %307, -1
  %309 = and i32 %306, %308
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* @TCP_NAGLE_PUSH, align 4
  %312 = load i32, i32* %14, align 4
  %313 = call i32 @tcp_push(%struct.sock* %305, i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load %struct.sock*, %struct.sock** %7, align 8
  %315 = call i32 @sk_stream_wait_memory(%struct.sock* %314, i64* %17)
  store i32 %315, i32* %15, align 4
  %316 = load i32, i32* %15, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %304
  br label %349

319:                                              ; preds = %304
  %320 = load %struct.sock*, %struct.sock** %7, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @tcp_send_mss(%struct.sock* %320, i32* %14, i32 %321)
  store i32 %322, i32* %13, align 4
  br label %84

323:                                              ; preds = %84
  br label %324

324:                                              ; preds = %356, %323, %261
  %325 = load i64, i64* %16, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %324
  %328 = load %struct.sock*, %struct.sock** %7, align 8
  %329 = load %struct.sock*, %struct.sock** %7, align 8
  %330 = getelementptr inbounds %struct.sock, %struct.sock* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @tcp_tx_timestamp(%struct.sock* %328, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %327
  %338 = load %struct.sock*, %struct.sock** %7, align 8
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* %13, align 4
  %341 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %342 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %14, align 4
  %345 = call i32 @tcp_push(%struct.sock* %338, i32 %339, i32 %340, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %337, %327
  br label %347

347:                                              ; preds = %346, %324
  %348 = load i64, i64* %16, align 8
  store i64 %348, i64* %6, align 8
  br label %387

349:                                              ; preds = %318
  %350 = load %struct.sock*, %struct.sock** %7, align 8
  %351 = load %struct.sock*, %struct.sock** %7, align 8
  %352 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %351)
  %353 = call i32 @tcp_remove_empty_skb(%struct.sock* %350, %struct.sk_buff* %352)
  %354 = load i64, i64* %16, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  br label %324

357:                                              ; preds = %349
  br label %358

358:                                              ; preds = %357, %82, %60
  %359 = load %struct.sock*, %struct.sock** %7, align 8
  %360 = getelementptr inbounds %struct.sock, %struct.sock* %359, i32 0, i32 3
  %361 = call i64 @skb_queue_len(i32* %360)
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* @EAGAIN, align 4
  %366 = sub nsw i32 0, %365
  %367 = icmp eq i32 %364, %366
  br label %368

368:                                              ; preds = %363, %358
  %369 = phi i1 [ false, %358 ], [ %367, %363 ]
  %370 = zext i1 %369 to i32
  %371 = call i64 @unlikely(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %368
  %374 = load %struct.sock*, %struct.sock** %7, align 8
  %375 = getelementptr inbounds %struct.sock, %struct.sock* %374, i32 0, i32 2
  %376 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %375, align 8
  %377 = load %struct.sock*, %struct.sock** %7, align 8
  %378 = call i32 %376(%struct.sock* %377)
  %379 = load %struct.sock*, %struct.sock** %7, align 8
  %380 = load i32, i32* @TCP_CHRONO_SNDBUF_LIMITED, align 4
  %381 = call i32 @tcp_chrono_stop(%struct.sock* %379, i32 %380)
  br label %382

382:                                              ; preds = %373, %368
  %383 = load %struct.sock*, %struct.sock** %7, align 8
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %15, align 4
  %386 = call i64 @sk_stream_error(%struct.sock* %383, i32 %384, i32 %385)
  store i64 %386, i64* %6, align 8
  br label %387

387:                                              ; preds = %382, %347, %37
  %388 = load i64, i64* %6, align 8
  ret i64 %388
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @tcp_passive_fastopen(%struct.sock*) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @tcp_send_mss(%struct.sock*, i32*, i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local i32 @tcp_skb_can_collapse_to(%struct.sk_buff*) #1

declare dso_local i32 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sk_stream_alloc_skb(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @tcp_rtx_and_write_queues_empty(%struct.sock*) #1

declare dso_local i32 @skb_entail(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @tcp_mark_push(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_wmem_schedule(%struct.sock*, i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @sk_wmem_queued_add(%struct.sock*, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_pcount_set(%struct.sk_buff*, i32) #1

declare dso_local i64 @forced_push(%struct.tcp_sock*) #1

declare dso_local i32 @__tcp_push_pending_frames(%struct.sock*, i32, i32) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local i32 @tcp_push_one(%struct.sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tcp_push(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local i32 @sk_stream_wait_memory(%struct.sock*, i64*) #1

declare dso_local i32 @tcp_tx_timestamp(%struct.sock*, i32) #1

declare dso_local i32 @tcp_remove_empty_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @tcp_chrono_stop(%struct.sock*, i32) #1

declare dso_local i64 @sk_stream_error(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
