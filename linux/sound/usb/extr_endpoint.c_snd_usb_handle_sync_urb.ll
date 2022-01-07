; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_handle_sync_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_handle_sync_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_usb_packet_info* }
%struct.snd_usb_packet_info = type { i32, i32* }
%struct.urb = type { %struct.TYPE_2__*, i32, %struct.snd_urb_ctx* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.snd_urb_ctx = type { i32 }

@MAX_URBS = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_handle_sync_urb(%struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.snd_usb_endpoint*, align 8
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_urb_ctx*, align 8
  %13 = alloca %struct.snd_usb_packet_info*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %4, align 8
  store %struct.snd_usb_endpoint* %1, %struct.snd_usb_endpoint** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %14 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %15 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %16 = icmp eq %struct.snd_usb_endpoint* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @snd_BUG_ON(i32 %17)
  %19 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %20 = call i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %146

22:                                               ; preds = %3
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %146

27:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %29, align 8
  store %struct.snd_urb_ctx* %30, %struct.snd_urb_ctx** %12, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %34 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %47, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %318

66:                                               ; preds = %62
  %67 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %68 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %67, i32 0, i32 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %71, i32 0, i32 9
  %73 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %72, align 8
  %74 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %75 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %73, i64 %77
  store %struct.snd_usb_packet_info* %78, %struct.snd_usb_packet_info** %13, align 8
  %79 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %80 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %83 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %127, %66
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %87 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %84
  %91 = load %struct.urb*, %struct.urb** %6, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %90
  %101 = load %struct.urb*, %struct.urb** %6, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %110 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %108, %111
  %113 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %114 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %126

119:                                              ; preds = %90
  %120 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %121 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %100
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %84

130:                                              ; preds = %84
  %131 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %132 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @MAX_URBS, align 4
  %136 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %137 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = srem i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %141 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %140, i32 0, i32 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %145 = call i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint* %144)
  br label %318

146:                                              ; preds = %22, %3
  %147 = load %struct.urb*, %struct.urb** %6, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %146
  %155 = load %struct.urb*, %struct.urb** %6, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %154, %146
  br label %318

163:                                              ; preds = %154
  %164 = load %struct.urb*, %struct.urb** %6, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le32_to_cpup(i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.urb*, %struct.urb** %6, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, 16777215
  store i32 %177, i32* %8, align 4
  br label %181

178:                                              ; preds = %163
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, 268435455
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %318

185:                                              ; preds = %181
  %186 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %187 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %185
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %194 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 32768
  %197 = icmp ult i32 %192, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 61440
  store i32 %200, i32* %8, align 4
  br label %212

201:                                              ; preds = %191
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %204 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 32768
  %207 = icmp ugt i32 %202, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load i32, i32* %8, align 4
  %210 = sub i32 %209, 61440
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %208, %201
  br label %212

212:                                              ; preds = %211, %198
  br label %280

213:                                              ; preds = %185
  %214 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %215 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @INT_MIN, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %260

222:                                              ; preds = %213
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %234, %222
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %226 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %229 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = sdiv i32 %230, 4
  %232 = sub nsw i32 %227, %231
  %233 = icmp ult i32 %224, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = load i32, i32* %8, align 4
  %236 = shl i32 %235, 1
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %223

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %251, %239
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %243 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %246 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, 2
  %249 = add nsw i32 %244, %248
  %250 = icmp ugt i32 %241, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %240
  %252 = load i32, i32* %8, align 4
  %253 = lshr i32 %252, 1
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %7, align 4
  br label %240

256:                                              ; preds = %240
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %259 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 8
  br label %279

260:                                              ; preds = %213
  %261 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %262 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %267 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = shl i32 %269, %268
  store i32 %270, i32* %8, align 4
  br label %278

271:                                              ; preds = %260
  %272 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %273 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 0, %274
  %276 = load i32, i32* %8, align 4
  %277 = lshr i32 %276, %275
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %271, %265
  br label %279

279:                                              ; preds = %278, %256
  br label %280

280:                                              ; preds = %279, %212
  %281 = load i32, i32* %8, align 4
  %282 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %283 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %286 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = sdiv i32 %287, 8
  %289 = sub nsw i32 %284, %288
  %290 = icmp uge i32 %281, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %280
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %294 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = icmp ule i32 %292, %295
  br label %297

297:                                              ; preds = %291, %280
  %298 = phi i1 [ false, %280 ], [ %296, %291 ]
  %299 = zext i1 %298 to i32
  %300 = call i64 @likely(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %297
  %303 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %304 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %303, i32 0, i32 8
  %305 = load i64, i64* %9, align 8
  %306 = call i32 @spin_lock_irqsave(i32* %304, i64 %305)
  %307 = load i32, i32* %8, align 4
  %308 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %309 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %308, i32 0, i32 7
  store i32 %307, i32* %309, align 8
  %310 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %311 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %310, i32 0, i32 8
  %312 = load i64, i64* %9, align 8
  %313 = call i32 @spin_unlock_irqrestore(i32* %311, i64 %312)
  br label %318

314:                                              ; preds = %297
  %315 = load i32, i32* @INT_MIN, align 4
  %316 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %317 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %65, %130, %162, %184, %314, %302
  ret void
}

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
