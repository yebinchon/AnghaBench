; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_retire_capture_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_retire_capture_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, i32, i64, i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"frame %d active: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Corrected urb data len. %d->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*)* @retire_capture_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retire_capture_urb(%struct.snd_usb_substream* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %17 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @usb_get_current_frame_number(%struct.TYPE_5__* %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %248, %2
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %251

36:                                               ; preds = %30
  %37 = load %struct.urb*, %struct.urb** %4, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %40, i64 %49
  %51 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8* %55, i8** %13, align 8
  %56 = load %struct.urb*, %struct.urb** %4, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %36
  %66 = call i64 (...) @printk_ratelimit()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %69, i32 0, i32 7
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.urb*, %struct.urb** %4, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %81)
  br label %83

83:                                               ; preds = %68, %65, %36
  %84 = load %struct.urb*, %struct.urb** %4, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = udiv i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %96 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = mul i32 %100, %101
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %83
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 3
  %109 = urem i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = mul i32 %113, %114
  store i32 %115, i32* %8, align 4
  %116 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %117 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %116, i32 0, i32 7
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @dev_warn_ratelimited(i32* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %103
  %124 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %125 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %124, i32 0, i32 5
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @spin_lock_irqsave(i32* %125, i64 %126)
  %128 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %129 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %133 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %137 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = mul i32 %141, %142
  %144 = icmp uge i32 %138, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %123
  %146 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = mul i32 %148, %149
  %151 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %152 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %145, %123
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %6, align 4
  %159 = urem i32 %157, %158
  %160 = add i32 %156, %159
  %161 = load i32, i32* %6, align 4
  %162 = udiv i32 %160, %161
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = zext i32 %163 to i64
  %165 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %166 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %170 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %155
  %177 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %178 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %181 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  store i32 1, i32* %11, align 4
  br label %184

184:                                              ; preds = %176, %155
  %185 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %186 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %185, i32 0, i32 6
  store i64 0, i64* %186, align 8
  %187 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %188 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %191 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %193 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 255
  store i32 %195, i32* %193, align 8
  %196 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %197 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %196, i32 0, i32 5
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %200, %201
  %203 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %204 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = mul i32 %205, %206
  %208 = icmp ugt i32 %202, %207
  br i1 %208, label %209, label %237

209:                                              ; preds = %184
  %210 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %211 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = mul i32 %212, %213
  %215 = load i32, i32* %9, align 4
  %216 = sub i32 %214, %215
  store i32 %216, i32* %16, align 4
  %217 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = zext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = load i8*, i8** %13, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @memcpy(i64 %222, i8* %223, i32 %224)
  %226 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %227 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = load i32, i32* %16, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %16, align 4
  %235 = sub i32 %233, %234
  %236 = call i32 @memcpy(i64 %228, i8* %232, i32 %235)
  br label %247

237:                                              ; preds = %184
  %238 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %239 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = zext i32 %241 to i64
  %243 = add nsw i64 %240, %242
  %244 = load i8*, i8** %13, align 8
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @memcpy(i64 %243, i8* %244, i32 %245)
  br label %247

247:                                              ; preds = %237, %209
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %30

251:                                              ; preds = %30
  %252 = load i32, i32* %11, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %256 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %255, i32 0, i32 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_6__* %257)
  br label %259

259:                                              ; preds = %254, %251
  ret void
}

declare dso_local i32 @usb_get_current_frame_number(%struct.TYPE_5__*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
