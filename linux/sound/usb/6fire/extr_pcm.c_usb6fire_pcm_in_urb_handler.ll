; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_in_urb_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_in_urb_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.pcm_urb* }
%struct.pcm_urb = type { i32, %struct.TYPE_11__*, i32*, %struct.TYPE_7__*, %struct.pcm_urb* }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.pcm_runtime* }
%struct.pcm_runtime = type { i32, i64, i32, i32, %struct.pcm_substream, %struct.pcm_substream, %struct.TYPE_9__* }
%struct.pcm_substream = type { i32, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@STREAM_STOPPING = common dso_local global i64 0, align 8
@PCM_N_PACKETS_PER_URB = common dso_local global i32 0, align 4
@STREAM_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"internal error: stream disabled in in-urb handler.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb6fire_pcm_in_urb_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_pcm_in_urb_handler(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.pcm_urb*, align 8
  %4 = alloca %struct.pcm_urb*, align 8
  %5 = alloca %struct.pcm_runtime*, align 8
  %6 = alloca %struct.pcm_substream*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 1
  %16 = load %struct.pcm_urb*, %struct.pcm_urb** %15, align 8
  store %struct.pcm_urb* %16, %struct.pcm_urb** %3, align 8
  %17 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %18 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %17, i32 0, i32 4
  %19 = load %struct.pcm_urb*, %struct.pcm_urb** %18, align 8
  store %struct.pcm_urb* %19, %struct.pcm_urb** %4, align 8
  %20 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %21 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.pcm_runtime*, %struct.pcm_runtime** %23, align 8
  store %struct.pcm_runtime* %24, %struct.pcm_runtime** %5, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %1
  %30 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STREAM_STOPPING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29, %1
  br label %336

41:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %48 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %58 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %336

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @STREAM_DISABLED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %70, i32 0, i32 6
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %336

77:                                               ; preds = %63
  %78 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %79 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %78, i32 0, i32 5
  store %struct.pcm_substream* %79, %struct.pcm_substream** %6, align 8
  %80 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %81 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %80, i32 0, i32 0
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %85 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %77
  %89 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %90 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %91 = call i32 @usb6fire_pcm_capture(%struct.pcm_substream* %89, %struct.pcm_urb* %90)
  %92 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %93 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %96 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %94, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %88
  %104 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %105 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %112 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = srem i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %116 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %115, i32 0, i32 0
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %120 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_12__* %121)
  br label %128

123:                                              ; preds = %88
  %124 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %125 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %124, i32 0, i32 0
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %123, %103
  br label %134

129:                                              ; preds = %77
  %130 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %131 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %130, i32 0, i32 0
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  br label %134

134:                                              ; preds = %129, %128
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %192, %134
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %195

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %142 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %141, i32 0, i32 1
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 8
  %148 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %149 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 4
  %157 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %158 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 2
  %161 = sdiv i32 %156, %160
  %162 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %163 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 2
  %166 = mul nsw i32 %161, %165
  %167 = add nsw i32 %166, 4
  %168 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %169 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %168, i32 0, i32 1
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  store i32 %167, i32* %174, align 4
  %175 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %176 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  store i64 0, i64* %181, align 8
  %182 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %183 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %139
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %135

195:                                              ; preds = %135
  %196 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %197 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @memset(i32* %198, i32 0, i32 %199)
  %201 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %202 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %201, i32 0, i32 4
  store %struct.pcm_substream* %202, %struct.pcm_substream** %6, align 8
  %203 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %204 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %203, i32 0, i32 0
  %205 = load i64, i64* %7, align 8
  %206 = call i32 @spin_lock_irqsave(i32* %204, i64 %205)
  %207 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %208 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %252

211:                                              ; preds = %195
  %212 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %213 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %214 = call i32 @usb6fire_pcm_playback(%struct.pcm_substream* %212, %struct.pcm_urb* %213)
  %215 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %216 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %219 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %218, i32 0, i32 1
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp sge i32 %217, %224
  br i1 %225, label %226, label %246

226:                                              ; preds = %211
  %227 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %228 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %227, i32 0, i32 1
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %235 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = srem i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %239 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %238, i32 0, i32 0
  %240 = load i64, i64* %7, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  %242 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %243 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %242, i32 0, i32 1
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_12__* %244)
  br label %251

246:                                              ; preds = %211
  %247 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %248 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %247, i32 0, i32 0
  %249 = load i64, i64* %7, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  br label %251

251:                                              ; preds = %246, %226
  br label %257

252:                                              ; preds = %195
  %253 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %254 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %253, i32 0, i32 0
  %255 = load i64, i64* %7, align 8
  %256 = call i32 @spin_unlock_irqrestore(i32* %254, i64 %255)
  br label %257

257:                                              ; preds = %252, %251
  %258 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %259 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  store i32* %260, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %261

261:                                              ; preds = %324, %257
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %327

265:                                              ; preds = %261
  %266 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %267 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %266, i32 0, i32 1
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp sge i32 %273, 4
  br i1 %274, label %275, label %323

275:                                              ; preds = %265
  %276 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %277 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %276, i32 0, i32 1
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %283, 4
  %285 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %286 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 2
  %289 = sdiv i32 %284, %288
  store i32 %289, i32* %9, align 4
  %290 = load i32*, i32** %13, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %13, align 8
  store i32 170, i32* %290, align 4
  %292 = load i32*, i32** %13, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %13, align 8
  store i32 170, i32* %292, align 4
  %294 = load i32, i32* %9, align 4
  %295 = load i32*, i32** %13, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %296, i32** %13, align 8
  store i32 %294, i32* %295, align 4
  %297 = load i32*, i32** %13, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %13, align 8
  store i32 0, i32* %297, align 4
  store i32 0, i32* %10, align 4
  br label %299

299:                                              ; preds = %319, %275
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %299
  store i32 0, i32* %11, align 4
  br label %304

304:                                              ; preds = %315, %303
  %305 = load i32, i32* %11, align 4
  %306 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %307 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %304
  %311 = load i32*, i32** %13, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  store i32* %312, i32** %13, align 8
  %313 = load i32*, i32** %13, align 8
  %314 = getelementptr inbounds i32, i32* %313, i32 1
  store i32* %314, i32** %13, align 8
  store i32 64, i32* %313, align 4
  br label %315

315:                                              ; preds = %310
  %316 = load i32, i32* %11, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %11, align 4
  br label %304

318:                                              ; preds = %304
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %10, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %10, align 4
  br label %299

322:                                              ; preds = %299
  br label %323

323:                                              ; preds = %322, %265
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %12, align 4
  br label %261

327:                                              ; preds = %261
  %328 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %329 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %328, i32 0, i32 0
  %330 = load i32, i32* @GFP_ATOMIC, align 4
  %331 = call i32 @usb_submit_urb(i32* %329, i32 %330)
  %332 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %333 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %332, i32 0, i32 0
  %334 = load i32, i32* @GFP_ATOMIC, align 4
  %335 = call i32 @usb_submit_urb(i32* %333, i32 %334)
  br label %336

336:                                              ; preds = %327, %69, %56, %40
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb6fire_pcm_capture(%struct.pcm_substream*, %struct.pcm_urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb6fire_pcm_playback(%struct.pcm_substream*, %struct.pcm_urb*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
