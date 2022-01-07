; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_dai_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_dai_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32 }

@DAC33_MODE7_MARGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unhandled FIFO mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @dac33_dai_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_dai_delay(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.tlv320dac33_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %5, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %21 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.tlv320dac33_priv* %21, %struct.tlv320dac33_priv** %6, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %23 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %283 [
    i32 130, label %25
    i32 129, label %26
    i32 128, label %194
  ]

25:                                               ; preds = %2
  br label %291

26:                                               ; preds = %2
  %27 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %28 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %27, i32 0, i32 10
  %29 = load i64, i64* %16, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %32 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %35 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %38 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %37, i32 0, i32 10
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = call i32 (...) @ktime_get()
  %42 = call i64 @ktime_to_us(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  br label %292

46:                                               ; preds = %26
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @US_TO_SAMPLES(i32 %62, i32 %63)
  br label %66

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %57
  %67 = phi i32 [ %64, %57 ], [ 0, %65 ]
  store i32 %67, i32* %12, align 4
  %68 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %69 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @likely(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %78 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %15, align 4
  br label %83

82:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %76
  br label %193

84:                                               ; preds = %46
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub i64 %85, %86
  %88 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %89 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ule i64 %87, %90
  br i1 %91, label %92, label %142

92:                                               ; preds = %84
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @US_TO_SAMPLES(i32 %104, i32 %105)
  br label %108

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %99
  %109 = phi i32 [ %106, %99 ], [ 0, %107 ]
  store i32 %109, i32* %12, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %118 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @US_TO_SAMPLES(i32 %119, i32 %120)
  br label %123

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i32 [ %121, %116 ], [ 0, %122 ]
  store i32 %124, i32* %13, align 4
  %125 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %126 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @likely(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %123
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %15, align 4
  br label %141

140:                                              ; preds = %123
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %140, %138
  br label %192

142:                                              ; preds = %84
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %7, align 8
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @US_TO_SAMPLES(i32 %154, i32 %155)
  br label %158

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %149
  %159 = phi i32 [ %156, %149 ], [ 0, %157 ]
  store i32 %159, i32* %12, align 4
  %160 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %161 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %13, align 4
  %163 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %164 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp sgt i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @likely(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %158
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %179 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %184 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  br label %188

186:                                              ; preds = %176
  %187 = load i32, i32* %14, align 4
  br label %188

188:                                              ; preds = %186, %182
  %189 = phi i32 [ %185, %182 ], [ %187, %186 ]
  store i32 %189, i32* %15, align 4
  br label %191

190:                                              ; preds = %158
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %190, %188
  br label %192

192:                                              ; preds = %191, %141
  br label %193

193:                                              ; preds = %192, %83
  br label %291

194:                                              ; preds = %2
  %195 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %196 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %195, i32 0, i32 10
  %197 = load i64, i64* %16, align 8
  %198 = call i32 @spin_lock_irqsave(i32* %196, i64 %197)
  %199 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %200 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %7, align 8
  %202 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %203 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %11, align 4
  %205 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %206 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %205, i32 0, i32 10
  %207 = load i64, i64* %16, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = call i32 (...) @ktime_get()
  %210 = call i64 @ktime_to_us(i32 %209)
  store i64 %210, i64* %9, align 8
  %211 = load i64, i64* %7, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %194
  br label %292

214:                                              ; preds = %194
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* %7, align 8
  %217 = icmp ule i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %15, align 4
  br label %292

220:                                              ; preds = %214
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* %7, align 8
  %223 = sub i64 %221, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %227 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = icmp ule i32 %225, %228
  br i1 %229, label %230, label %250

230:                                              ; preds = %220
  %231 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %232 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %231, i32 0, i32 0
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @US_TO_SAMPLES(i32 %235, i32 %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp ugt i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @likely(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %230
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %12, align 4
  %247 = sub i32 %245, %246
  store i32 %247, i32* %15, align 4
  br label %249

248:                                              ; preds = %230
  store i32 0, i32* %15, align 4
  br label %249

249:                                              ; preds = %248, %244
  br label %282

250:                                              ; preds = %220
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %253 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 4
  %255 = sub i32 %251, %254
  store i32 %255, i32* %10, align 4
  %256 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %257 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @US_TO_SAMPLES(i32 %260, i32 %261)
  store i32 %262, i32* %12, align 4
  %263 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %264 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @US_TO_SAMPLES(i32 %265, i32 %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %268, %269
  %271 = load i32, i32* %12, align 4
  %272 = sub nsw i32 %270, %271
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp ugt i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @unlikely(i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %250
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %15, align 4
  br label %281

281:                                              ; preds = %279, %250
  br label %282

282:                                              ; preds = %281, %249
  br label %291

283:                                              ; preds = %2
  %284 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %285 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %6, align 8
  %288 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @dev_warn(i32 %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %283, %282, %193, %25
  br label %292

292:                                              ; preds = %291, %218, %213, %45
  %293 = load i32, i32* %15, align 4
  ret i32 %293
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @US_TO_SAMPLES(i32, i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
