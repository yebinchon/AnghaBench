; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_prepare_playback_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_prepare_playback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__*, %struct.snd_usb_endpoint* }
%struct.TYPE_6__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.snd_usb_endpoint = type { i64, i32 }
%struct.urb = type { i32, i32*, i64, %struct.TYPE_4__*, %struct.snd_urb_ctx* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_urb_ctx = type { i32, i32* }

@UAC_FORMAT_TYPE_II = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_DSD_U16_LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_DSD_U8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*)* @prepare_playback_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_playback_urb(%struct.snd_usb_substream* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_usb_endpoint*, align 8
  %7 = alloca %struct.snd_urb_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %17 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %17, i32 0, i32 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %5, align 8
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 13
  %24 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %23, align 8
  store %struct.snd_usb_endpoint* %24, %struct.snd_usb_endpoint** %6, align 8
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 4
  %27 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %26, align 8
  store %struct.snd_urb_ctx* %27, %struct.snd_urb_ctx** %7, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %34, i32 0, i32 9
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %216, %2
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %219

51:                                               ; preds = %45
  %52 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %51
  %69 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %70 = call i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint* %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %74 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul i32 %72, %75
  %77 = load %struct.urb*, %struct.urb** %4, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %86 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %84, %87
  %89 = load %struct.urb*, %struct.urb** %4, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.urb*, %struct.urb** %4, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %106 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %110 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %199

116:                                              ; preds = %71
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %121 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %125 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  store i32 1, i32* %13, align 4
  %126 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %127 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @UAC_FORMAT_TYPE_II, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %198

131:                                              ; preds = %116
  %132 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %133 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %131
  %137 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %138 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = sub nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %145 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = sub nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %153 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = mul i32 %151, %154
  %156 = load %struct.urb*, %struct.urb** %4, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 3
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 %155, i32* %162, align 4
  %163 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %164 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %136, %131
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %170 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %176 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = mul i32 %174, %177
  %179 = load %struct.urb*, %struct.urb** %4, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 3
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 4
  %186 = load %struct.urb*, %struct.urb** %4, align 8
  %187 = getelementptr inbounds %struct.urb, %struct.urb* %186, i32 0, i32 3
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  %193 = load %struct.urb*, %struct.urb** %4, align 8
  %194 = getelementptr inbounds %struct.urb, %struct.urb* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %173, %165
  br label %219

198:                                              ; preds = %116
  br label %199

199:                                              ; preds = %198, %71
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %199
  %203 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %204 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %207 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %202, %199
  %211 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %212 = call i32 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  br label %219

215:                                              ; preds = %210, %202
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %45

219:                                              ; preds = %214, %197, %45
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %222 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = mul i32 %220, %223
  store i32 %224, i32* %10, align 4
  %225 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %226 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SNDRV_PCM_FORMAT_DSD_U16_LE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %219
  %231 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %232 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %231, i32 0, i32 12
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br label %237

237:                                              ; preds = %230, %219
  %238 = phi i1 [ false, %219 ], [ %236, %230 ]
  %239 = zext i1 %238 to i32
  %240 = call i64 @unlikely(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %244 = load %struct.urb*, %struct.urb** %4, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @fill_playback_urb_dsd_dop(%struct.snd_usb_substream* %243, %struct.urb* %244, i32 %245)
  br label %345

247:                                              ; preds = %237
  %248 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %249 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @SNDRV_PCM_FORMAT_DSD_U8, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %255 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %254, i32 0, i32 12
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br label %260

260:                                              ; preds = %253, %247
  %261 = phi i1 [ false, %247 ], [ %259, %253 ]
  %262 = zext i1 %261 to i32
  %263 = call i64 @unlikely(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %326

265:                                              ; preds = %260
  %266 = load %struct.urb*, %struct.urb** %4, align 8
  %267 = getelementptr inbounds %struct.urb, %struct.urb* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  store i32* %268, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %269

269:                                              ; preds = %297, %265
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %269
  %274 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %275 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %276, %277
  %279 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %280 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = mul nsw i32 %281, %282
  %284 = srem i32 %278, %283
  store i32 %284, i32* %16, align 4
  %285 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %286 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %285, i32 0, i32 5
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @bitrev8(i32 %291)
  %293 = load i32*, i32** %15, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %292, i32* %296, align 4
  br label %297

297:                                              ; preds = %273
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  br label %269

300:                                              ; preds = %269
  %301 = load i32, i32* %10, align 4
  %302 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %303 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = add i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %307 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %310 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %12, align 4
  %313 = mul nsw i32 %311, %312
  %314 = icmp sge i32 %308, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %300
  %316 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %317 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %12, align 4
  %320 = mul nsw i32 %318, %319
  %321 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %322 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %315, %300
  br label %344

326:                                              ; preds = %260
  %327 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %328 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %327, i32 0, i32 11
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %326
  %332 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %333 = load %struct.urb*, %struct.urb** %4, align 8
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @copy_to_urb(%struct.snd_usb_substream* %332, %struct.urb* %333, i32 0, i32 %334, i32 %335)
  br label %343

337:                                              ; preds = %326
  %338 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %339 = load %struct.urb*, %struct.urb** %4, align 8
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %10, align 4
  %342 = call i32 @copy_to_urb_quirk(%struct.snd_usb_substream* %338, %struct.urb* %339, i32 %340, i32 %341)
  store i32 %342, i32* %10, align 4
  br label %343

343:                                              ; preds = %337, %331
  br label %344

344:                                              ; preds = %343, %325
  br label %345

345:                                              ; preds = %344, %242
  %346 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %347 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %350 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %349, i32 0, i32 3
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %353 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = add i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %357 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %360 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %359, i32 0, i32 5
  store i32 %358, i32* %360, align 4
  %361 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %362 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @usb_get_current_frame_number(i32 %363)
  %365 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %366 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %365, i32 0, i32 6
  store i32 %364, i32* %366, align 8
  %367 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %368 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, 255
  store i32 %370, i32* %368, align 8
  %371 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %372 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %345
  %376 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %377 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %378 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %377, i32 0, i32 4
  %379 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %376, i32* %378)
  %380 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %381 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %380, i32 0, i32 7
  store i32 0, i32* %381, align 4
  br label %382

382:                                              ; preds = %375, %345
  %383 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %384 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %383, i32 0, i32 9
  %385 = load i64, i64* %14, align 8
  %386 = call i32 @spin_unlock_irqrestore(i32* %384, i64 %385)
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.urb*, %struct.urb** %4, align 8
  %389 = getelementptr inbounds %struct.urb, %struct.urb* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  %390 = load i32, i32* %13, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %382
  %393 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %394 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %393, i32 0, i32 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %394, align 8
  %396 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_6__* %395)
  br label %397

397:                                              ; preds = %392, %382
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fill_playback_urb_dsd_dop(%struct.snd_usb_substream*, %struct.urb*, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @copy_to_urb(%struct.snd_usb_substream*, %struct.urb*, i32, i32, i32) #1

declare dso_local i32 @copy_to_urb_quirk(%struct.snd_usb_substream*, %struct.urb*, i32, i32) #1

declare dso_local i32 @usb_get_current_frame_number(i32) #1

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
