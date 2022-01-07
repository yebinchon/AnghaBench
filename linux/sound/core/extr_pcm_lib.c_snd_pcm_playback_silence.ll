; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_playback_silence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_playback_silence(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %5, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %110

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 7
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @READ_ONCE(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %24
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %66

63:                                               ; preds = %51
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %24
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %260

79:                                               ; preds = %70
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %81 = call i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime* %80)
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %260

92:                                               ; preds = %79
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %95, %96
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp sgt i64 %98, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %104, %92
  br label %201

110:                                              ; preds = %2
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @ULONG_MAX, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %110
  %115 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %116 = call i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime* %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %122, %114
  %127 = load i64, i64* %13, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i64, i64* %13, align 8
  br label %132

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i64 [ %130, %129 ], [ 0, %131 ]
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 6
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %143 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = srem i64 %145, %149
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  br label %193

153:                                              ; preds = %110
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %155 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %154, i32 0, i32 6
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %7, align 8
  %162 = sub nsw i64 %160, %161
  store i64 %162, i64* %6, align 8
  %163 = load i64, i64* %6, align 8
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %6, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, i64* %6, align 8
  br label %172

172:                                              ; preds = %165, %153
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %179 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %172
  %183 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %184 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %187 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  br label %192

188:                                              ; preds = %172
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %191 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %188, %182
  br label %193

193:                                              ; preds = %192, %132
  %194 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %198 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  store i64 %200, i64* %6, align 8
  br label %201

201:                                              ; preds = %193, %109
  %202 = load i64, i64* %6, align 8
  %203 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %204 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %202, %205
  %207 = zext i1 %206 to i32
  %208 = call i64 @snd_BUG_ON(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %260

211:                                              ; preds = %201
  %212 = load i64, i64* %6, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %260

215:                                              ; preds = %211
  %216 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %217 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %220 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = srem i64 %218, %221
  store i64 %222, i64* %7, align 8
  br label %223

223:                                              ; preds = %242, %215
  %224 = load i64, i64* %6, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %260

226:                                              ; preds = %223
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* %6, align 8
  %229 = add nsw i64 %227, %228
  %230 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %231 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %236 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %7, align 8
  %239 = sub nsw i64 %237, %238
  br label %242

240:                                              ; preds = %226
  %241 = load i64, i64* %6, align 8
  br label %242

242:                                              ; preds = %240, %234
  %243 = phi i64 [ %239, %234 ], [ %241, %240 ]
  store i64 %243, i64* %8, align 8
  %244 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load i64, i64* %8, align 8
  %247 = call i32 @fill_silence_frames(%struct.snd_pcm_substream* %244, i64 %245, i64 %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i64 @snd_BUG_ON(i32 %250)
  %252 = load i64, i64* %8, align 8
  %253 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %254 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %252
  store i64 %256, i64* %254, align 8
  %257 = load i64, i64* %8, align 8
  %258 = load i64, i64* %6, align 8
  %259 = sub nsw i64 %258, %257
  store i64 %259, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %223

260:                                              ; preds = %78, %91, %210, %214, %223
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @fill_silence_frames(%struct.snd_pcm_substream*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
