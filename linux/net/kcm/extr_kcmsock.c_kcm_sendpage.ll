; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)*, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.kcm_sock = type { i32, %struct.TYPE_6__, %struct.sk_buff*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32, %struct.sk_buff* }
%struct.TYPE_8__ = type { %struct.sk_buff* }
%struct.TYPE_7__ = type { i32, i32, %struct.sk_buff*, i32* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SKBTX_SHARED_FRAG = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@MSG_BATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"KCM: Hard failure on kcm_write_msgs\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.socket*, %struct.page*, i32, i64, i32)* @kcm_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_sendpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.kcm_sock*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %12, align 8
  %25 = load %struct.sock*, %struct.sock** %12, align 8
  %26 = call %struct.kcm_sock* @kcm_sk(%struct.sock* %25)
  store %struct.kcm_sock* %26, %struct.kcm_sock** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  %27 = load %struct.sock*, %struct.sock** %12, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MSG_DONTWAIT, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @sock_sndtimeo(%struct.sock* %27, i32 %30)
  store i64 %31, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i32, i32* @MSG_MORE, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %5
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MSG_MORE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load %struct.sock*, %struct.sock** %12, align 8
  %48 = call i32 @lock_sock(%struct.sock* %47)
  %49 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %50 = load %struct.sock*, %struct.sock** %12, align 8
  %51 = call i32 @sk_clear_bit(i32 %49, %struct.sock* %50)
  %52 = load i32, i32* @EPIPE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %18, align 4
  %54 = load %struct.sock*, %struct.sock** %12, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %303

59:                                               ; preds = %40
  %60 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %61 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %60, i32 0, i32 2
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %64, label %140

64:                                               ; preds = %59
  %65 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %66 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %65, i32 0, i32 2
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %15, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = call %struct.TYPE_8__* @kcm_tx_msg(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %14, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %73 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %19, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load %struct.page*, %struct.page** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @skb_can_coalesce(%struct.sk_buff* %76, i32 %77, %struct.page* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %64
  %83 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %84 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @skb_frag_size_add(i32* %90, i64 %91)
  %93 = load i32, i32* @SKBTX_SHARED_FRAG, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %95 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %194

99:                                               ; preds = %64
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %99
  %104 = load %struct.sock*, %struct.sock** %12, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %20, align 8
  br label %108

108:                                              ; preds = %120, %103
  %109 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  %111 = xor i1 %110, true
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %114 = call i32 @kcm_push(%struct.kcm_sock* %113)
  %115 = load %struct.sock*, %struct.sock** %12, align 8
  %116 = call i32 @sk_stream_wait_memory(%struct.sock* %115, i64* %16)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %303

120:                                              ; preds = %112
  br label %108

121:                                              ; preds = %108
  %122 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %124 = icmp eq %struct.sk_buff* %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %128 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store %struct.sk_buff* %126, %struct.sk_buff** %129, align 8
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 4
  store %struct.sk_buff* %131, %struct.sk_buff** %133, align 8
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %14, align 8
  %136 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %19, align 4
  br label %139

139:                                              ; preds = %134, %99
  br label %179

140:                                              ; preds = %59
  %141 = load %struct.sock*, %struct.sock** %12, align 8
  %142 = call i32 @sk_stream_memory_free(%struct.sock* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %140
  %145 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %146 = call i32 @kcm_push(%struct.kcm_sock* %145)
  %147 = load i32, i32* @SOCK_NOSPACE, align 4
  %148 = load %struct.sock*, %struct.sock** %12, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = call i32 @set_bit(i32 %147, i32* %151)
  %153 = load %struct.sock*, %struct.sock** %12, align 8
  %154 = call i32 @sk_stream_wait_memory(%struct.sock* %153, i64* %16)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %303

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %140
  %160 = load %struct.sock*, %struct.sock** %12, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %162)
  store %struct.sk_buff* %163, %struct.sk_buff** %15, align 8
  br label %164

164:                                              ; preds = %176, %159
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = icmp ne %struct.sk_buff* %165, null
  %167 = xor i1 %166, true
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %170 = call i32 @kcm_push(%struct.kcm_sock* %169)
  %171 = load %struct.sock*, %struct.sock** %12, align 8
  %172 = call i32 @sk_stream_wait_memory(%struct.sock* %171, i64* %16)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %303

176:                                              ; preds = %168
  br label %164

177:                                              ; preds = %164
  %178 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %178, %struct.sk_buff** %14, align 8
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %177, %139
  %180 = load %struct.page*, %struct.page** %8, align 8
  %181 = call i32 @get_page(%struct.page* %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load %struct.page*, %struct.page** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @skb_fill_page_desc(%struct.sk_buff* %182, i32 %183, %struct.page* %184, i32 %185, i64 %186)
  %188 = load i32, i32* @SKBTX_SHARED_FRAG, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %190 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %179, %82
  %195 = load i64, i64* %10, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load %struct.sock*, %struct.sock** %12, align 8
  %212 = getelementptr inbounds %struct.sock, %struct.sock* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load %struct.sock*, %struct.sock** %12, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @sk_mem_charge(%struct.sock* %215, i64 %216)
  %218 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %220 = icmp ne %struct.sk_buff* %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %194
  %222 = load i64, i64* %10, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %227
  store i64 %231, i64* %229, align 8
  %232 = load i64, i64* %10, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, %232
  store i64 %236, i64* %234, align 8
  br label %237

237:                                              ; preds = %221, %194
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %285

240:                                              ; preds = %237
  %241 = load %struct.sock*, %struct.sock** %12, align 8
  %242 = getelementptr inbounds %struct.sock, %struct.sock* %241, i32 0, i32 2
  %243 = call i32 @skb_queue_empty(i32* %242)
  store i32 %243, i32* %21, align 4
  %244 = load %struct.sock*, %struct.sock** %12, align 8
  %245 = getelementptr inbounds %struct.sock, %struct.sock* %244, i32 0, i32 2
  %246 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %247 = call i32 @__skb_queue_tail(i32* %245, %struct.sk_buff* %246)
  %248 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %249 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %248, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %249, align 8
  %250 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %251 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @KCM_STATS_INCR(i32 %253)
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @MSG_BATCH, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %240
  %260 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %261 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  br label %284

262:                                              ; preds = %240
  %263 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %264 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* %21, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %267, %262
  %271 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %272 = call i32 @kcm_write_msgs(%struct.kcm_sock* %271)
  store i32 %272, i32* %18, align 4
  %273 = load i32, i32* %18, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %270
  %276 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %277 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %278 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %277, i32 0, i32 3
  %279 = load i32, i32* %18, align 4
  %280 = sub nsw i32 0, %279
  %281 = call i32 @report_csk_error(i32* %278, i32 %280)
  br label %282

282:                                              ; preds = %275, %270
  br label %283

283:                                              ; preds = %282, %267
  br label %284

284:                                              ; preds = %283, %259
  br label %293

285:                                              ; preds = %237
  %286 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %287 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %288 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %287, i32 0, i32 2
  store %struct.sk_buff* %286, %struct.sk_buff** %288, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %291 = call %struct.TYPE_8__* @kcm_tx_msg(%struct.sk_buff* %290)
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  store %struct.sk_buff* %289, %struct.sk_buff** %292, align 8
  br label %293

293:                                              ; preds = %285, %284
  %294 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %295 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i64, i64* %10, align 8
  %299 = call i32 @KCM_STATS_ADD(i32 %297, i64 %298)
  %300 = load %struct.sock*, %struct.sock** %12, align 8
  %301 = call i32 @release_sock(%struct.sock* %300)
  %302 = load i64, i64* %10, align 8
  store i64 %302, i64* %6, align 8
  br label %335

303:                                              ; preds = %175, %157, %119, %58
  %304 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %305 = call i32 @kcm_push(%struct.kcm_sock* %304)
  %306 = load %struct.sock*, %struct.sock** %12, align 8
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %18, align 4
  %309 = call i32 @sk_stream_error(%struct.sock* %306, i32 %307, i32 %308)
  store i32 %309, i32* %18, align 4
  %310 = load %struct.sock*, %struct.sock** %12, align 8
  %311 = getelementptr inbounds %struct.sock, %struct.sock* %310, i32 0, i32 2
  %312 = call i64 @skb_queue_len(i32* %311)
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %303
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* @EAGAIN, align 4
  %317 = sub nsw i32 0, %316
  %318 = icmp eq i32 %315, %317
  br label %319

319:                                              ; preds = %314, %303
  %320 = phi i1 [ false, %303 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = call i64 @unlikely(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = load %struct.sock*, %struct.sock** %12, align 8
  %326 = getelementptr inbounds %struct.sock, %struct.sock* %325, i32 0, i32 1
  %327 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %326, align 8
  %328 = load %struct.sock*, %struct.sock** %12, align 8
  %329 = call i32 %327(%struct.sock* %328)
  br label %330

330:                                              ; preds = %324, %319
  %331 = load %struct.sock*, %struct.sock** %12, align 8
  %332 = call i32 @release_sock(%struct.sock* %331)
  %333 = load i32, i32* %18, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %6, align 8
  br label %335

335:                                              ; preds = %330, %293
  %336 = load i64, i64* %6, align 8
  ret i64 %336
}

declare dso_local %struct.kcm_sock* @kcm_sk(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local %struct.TYPE_8__* @kcm_tx_msg(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @kcm_push(%struct.kcm_sock*) #1

declare dso_local i32 @sk_stream_wait_memory(%struct.sock*, i64*) #1

declare dso_local i32 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i64) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i32 @kcm_write_msgs(%struct.kcm_sock*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @report_csk_error(i32*, i32) #1

declare dso_local i32 @KCM_STATS_ADD(i32, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
