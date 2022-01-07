; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_data_ep_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_data_ep_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i32, i64, i64 }
%struct.snd_usb_endpoint = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.snd_urb_ctx*, i8*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_urb_ctx = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.snd_usb_endpoint* }
%struct.TYPE_4__ = type { i32, i32, %struct.snd_urb_ctx*, i32, i32, i32, i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@MAX_PACKS_HS = common dso_local global i32 0, align 4
@MAX_PACKS = common dso_local global i32 0, align 4
@USB_SPEED_WIRELESS = common dso_local global i64 0, align 8
@MAX_URBS = common dso_local global i32 0, align 4
@MAX_QUEUE = common dso_local global i32 0, align 4
@UAC_FORMAT_TYPE_II = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@snd_complete_urb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*, i32, i32, i32, i32, i32, %struct.audioformat*, %struct.snd_usb_endpoint*)* @data_ep_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_ep_set_params(%struct.snd_usb_endpoint* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.audioformat* %6, %struct.snd_usb_endpoint* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_usb_endpoint*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.audioformat*, align 8
  %17 = alloca %struct.snd_usb_endpoint*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.snd_urb_ctx*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.audioformat* %6, %struct.audioformat** %16, align 8
  store %struct.snd_usb_endpoint* %7, %struct.snd_usb_endpoint** %17, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @snd_pcm_format_physical_width(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %27, align 4
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %36, i32 0, i32 10
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %8
  %43 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %44 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @usb_pipeout(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %42, %8
  %49 = phi i1 [ false, %8 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %28, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 132
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.audioformat*, %struct.audioformat** %16, align 8
  %55 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 3
  %61 = load i32, i32* %27, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %27, align 4
  br label %63

63:                                               ; preds = %58, %53, %48
  %64 = load %struct.audioformat*, %struct.audioformat** %16, align 8
  %65 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %68 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %27, align 4
  %70 = ashr i32 %69, 3
  %71 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %80 [
    i32 128, label %74
    i32 129, label %77
    i32 132, label %77
    i32 130, label %77
    i32 133, label %77
    i32 131, label %77
  ]

74:                                               ; preds = %63
  %75 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %76 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %75, i32 0, i32 2
  store i32 128, i32* %76, align 8
  br label %83

77:                                               ; preds = %63, %63, %63, %63, %63
  %78 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %78, i32 0, i32 2
  store i32 105, i32* %79, align 8
  br label %83

80:                                               ; preds = %63
  %81 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %82 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77, %74
  %84 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %85 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %88 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 %86, %90
  %92 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %93 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %95 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %98 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %96, %99
  %101 = add nsw i32 %100, 65535
  %102 = ashr i32 %101, 16
  %103 = load i32, i32* %27, align 4
  %104 = ashr i32 %103, 3
  %105 = mul nsw i32 %102, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %83
  %109 = load i32, i32* %18, align 4
  %110 = zext i32 %109 to i64
  %111 = add i64 %110, 4
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %108, %83
  %114 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %115 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %113
  %119 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %120 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %126 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  store i32 %127, i32* %29, align 4
  %128 = load i32, i32* %28, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* %29, align 4
  %132 = zext i32 %131 to i64
  %133 = sub i64 %132, 4
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %29, align 4
  br label %135

135:                                              ; preds = %130, %124
  %136 = load i32, i32* %29, align 4
  %137 = load i32, i32* %27, align 4
  %138 = ashr i32 %137, 3
  %139 = udiv i32 %136, %138
  %140 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %141 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 16, %142
  %144 = shl i32 %139, %143
  %145 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %146 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %135, %118, %113
  %148 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %149 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %148, i32 0, i32 13
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %154 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %157 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 8
  br label %162

158:                                              ; preds = %147
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %161 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %152
  %163 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %164 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %163, i32 0, i32 10
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @snd_usb_get_speed(i32 %167)
  %169 = load i64, i64* @USB_SPEED_FULL, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %173 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 8, %174
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* @MAX_PACKS_HS, align 4
  store i32 %176, i32* %21, align 4
  br label %179

177:                                              ; preds = %162
  store i32 1, i32* %20, align 4
  %178 = load i32, i32* @MAX_PACKS, align 4
  store i32 %178, i32* %21, align 4
  br label %179

179:                                              ; preds = %177, %171
  %180 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %17, align 8
  %181 = icmp ne %struct.snd_usb_endpoint* %180, null
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %184 = call i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %21, align 4
  %188 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %17, align 8
  %189 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 1, %190
  %192 = call i8* @min(i32 %187, i32 %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %21, align 4
  br label %194

194:                                              ; preds = %186, %182, %179
  %195 = load i32, i32* %21, align 4
  %196 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %197 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = lshr i32 %195, %198
  %200 = call i32 @max(i32 1, i32 %199)
  store i32 %200, i32* %21, align 4
  %201 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %202 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @usb_pipein(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %194
  %207 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %208 = call i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %256

210:                                              ; preds = %206, %194
  %211 = load i32, i32* %20, align 4
  store i32 %211, i32* %24, align 4
  %212 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %213 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %212, i32 0, i32 10
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @snd_usb_get_speed(i32 %216)
  %218 = load i64, i64* @USB_SPEED_WIRELESS, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %210
  %221 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %222 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %30, align 4
  br label %224

224:                                              ; preds = %227, %220
  %225 = load i32, i32* %30, align 4
  %226 = icmp slt i32 %225, 5
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32, i32* %24, align 4
  %229 = shl i32 %228, 1
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %30, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %30, align 4
  br label %224

232:                                              ; preds = %224
  br label %233

233:                                              ; preds = %232, %210
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %24, align 4
  %236 = call i8* @min(i32 %234, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  store i32 %237, i32* %24, align 4
  br label %238

238:                                              ; preds = %249, %233
  %239 = load i32, i32* %24, align 4
  %240 = icmp ugt i32 %239, 1
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %18, align 4
  %244 = mul i32 %242, %243
  %245 = load i32, i32* %13, align 4
  %246 = icmp uge i32 %244, %245
  br label %247

247:                                              ; preds = %241, %238
  %248 = phi i1 [ false, %238 ], [ %246, %241 ]
  br i1 %248, label %249, label %252

249:                                              ; preds = %247
  %250 = load i32, i32* %24, align 4
  %251 = lshr i32 %250, 1
  store i32 %251, i32* %24, align 4
  br label %238

252:                                              ; preds = %247
  %253 = load i32, i32* @MAX_URBS, align 4
  %254 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %255 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %254, i32 0, i32 8
  store i32 %253, i32* %255, align 8
  br label %311

256:                                              ; preds = %206
  %257 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %258 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %261 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 16, %262
  %264 = ashr i32 %259, %263
  %265 = load i32, i32* %27, align 4
  %266 = ashr i32 %265, 3
  %267 = mul nsw i32 %264, %266
  store i32 %267, i32* %19, align 4
  %268 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %17, align 8
  %269 = icmp ne %struct.snd_usb_endpoint* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %256
  %271 = load i32, i32* %19, align 4
  %272 = lshr i32 %271, 3
  %273 = load i32, i32* %19, align 4
  %274 = sub i32 %273, %272
  store i32 %274, i32* %19, align 4
  br label %275

275:                                              ; preds = %270, %256
  %276 = load i32, i32* %19, align 4
  %277 = call i32 @max(i32 %276, i32 1)
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %19, align 4
  %280 = call i8* @DIV_ROUND_UP(i32 %278, i32 %279)
  %281 = ptrtoint i8* %280 to i32
  store i32 %281, i32* %22, align 4
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %21, align 4
  %284 = call i8* @DIV_ROUND_UP(i32 %282, i32 %283)
  %285 = ptrtoint i8* %284 to i32
  store i32 %285, i32* %23, align 4
  %286 = load i32, i32* %22, align 4
  %287 = load i32, i32* %23, align 4
  %288 = call i8* @DIV_ROUND_UP(i32 %286, i32 %287)
  %289 = ptrtoint i8* %288 to i32
  store i32 %289, i32* %24, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %23, align 4
  %292 = call i8* @DIV_ROUND_UP(i32 %290, i32 %291)
  %293 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %294 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %293, i32 0, i32 12
  store i8* %292, i8** %294, align 8
  %295 = load i32, i32* @MAX_URBS, align 4
  %296 = load i32, i32* @MAX_QUEUE, align 4
  %297 = load i32, i32* %20, align 4
  %298 = mul i32 %296, %297
  %299 = load i32, i32* %24, align 4
  %300 = udiv i32 %298, %299
  %301 = call i8* @min(i32 %295, i32 %300)
  %302 = ptrtoint i8* %301 to i32
  store i32 %302, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %23, align 4
  %305 = load i32, i32* %15, align 4
  %306 = mul i32 %304, %305
  %307 = call i8* @min(i32 %303, i32 %306)
  %308 = ptrtoint i8* %307 to i32
  %309 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %310 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %309, i32 0, i32 8
  store i32 %308, i32* %310, align 8
  br label %311

311:                                              ; preds = %275, %252
  store i32 0, i32* %26, align 4
  br label %312

312:                                              ; preds = %424, %311
  %313 = load i32, i32* %26, align 4
  %314 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %315 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %314, i32 0, i32 8
  %316 = load i32, i32* %315, align 8
  %317 = icmp ult i32 %313, %316
  br i1 %317, label %318, label %427

318:                                              ; preds = %312
  %319 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %320 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %319, i32 0, i32 11
  %321 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %320, align 8
  %322 = load i32, i32* %26, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %321, i64 %323
  store %struct.snd_urb_ctx* %324, %struct.snd_urb_ctx** %31, align 8
  %325 = load i32, i32* %26, align 4
  %326 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %327 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %329 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %330 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %329, i32 0, i32 5
  store %struct.snd_usb_endpoint* %328, %struct.snd_usb_endpoint** %330, align 8
  %331 = load i32, i32* %24, align 4
  %332 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %333 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %18, align 4
  %335 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %336 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = mul i32 %334, %337
  %339 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %340 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 8
  %341 = load %struct.audioformat*, %struct.audioformat** %16, align 8
  %342 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @UAC_FORMAT_TYPE_II, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %351

346:                                              ; preds = %318
  %347 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %348 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %346, %318
  %352 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %353 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @GFP_KERNEL, align 4
  %356 = call %struct.TYPE_4__* @usb_alloc_urb(i32 %354, i32 %355)
  %357 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %358 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %357, i32 0, i32 4
  store %struct.TYPE_4__* %356, %struct.TYPE_4__** %358, align 8
  %359 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %360 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %359, i32 0, i32 4
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = icmp ne %struct.TYPE_4__* %361, null
  br i1 %362, label %364, label %363

363:                                              ; preds = %351
  br label %428

364:                                              ; preds = %351
  %365 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %366 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %365, i32 0, i32 10
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %371 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @GFP_KERNEL, align 4
  %374 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %375 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %374, i32 0, i32 4
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 6
  %378 = call i32 @usb_alloc_coherent(i32 %369, i32 %372, i32 %373, i32* %377)
  %379 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %380 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %379, i32 0, i32 4
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 5
  store i32 %378, i32* %382, align 8
  %383 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %384 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %383, i32 0, i32 4
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %364
  br label %428

390:                                              ; preds = %364
  %391 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %392 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %391, i32 0, i32 9
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %395 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %394, i32 0, i32 4
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 4
  store i32 %393, i32* %397, align 4
  %398 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %399 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %400 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %399, i32 0, i32 4
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  store i32 %398, i32* %402, align 8
  %403 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %404 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = shl i32 1, %405
  %407 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %408 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %407, i32 0, i32 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  store i32 %406, i32* %410, align 8
  %411 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %412 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %413 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %412, i32 0, i32 4
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 2
  store %struct.snd_urb_ctx* %411, %struct.snd_urb_ctx** %415, align 8
  %416 = load i32, i32* @snd_complete_urb, align 4
  %417 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %418 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %417, i32 0, i32 4
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  store i32 %416, i32* %420, align 4
  %421 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %31, align 8
  %422 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %421, i32 0, i32 3
  %423 = call i32 @INIT_LIST_HEAD(i32* %422)
  br label %424

424:                                              ; preds = %390
  %425 = load i32, i32* %26, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %26, align 4
  br label %312

427:                                              ; preds = %312
  store i32 0, i32* %9, align 4
  br label %433

428:                                              ; preds = %389, %363
  %429 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %10, align 8
  %430 = call i32 @release_urbs(%struct.snd_usb_endpoint* %429, i32 0)
  %431 = load i32, i32* @ENOMEM, align 4
  %432 = sub nsw i32 0, %431
  store i32 %432, i32* %9, align 4
  br label %433

433:                                              ; preds = %428, %427
  %434 = load i32, i32* %9, align 4
  ret i32 %434
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i64 @snd_usb_get_speed(i32) #1

declare dso_local i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @release_urbs(%struct.snd_usb_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
