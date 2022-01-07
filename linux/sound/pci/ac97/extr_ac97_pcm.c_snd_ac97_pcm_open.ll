; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_pcm = type { i64, i32, i16, %struct.TYPE_4__*, %struct.snd_ac97_bus* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.snd_ac97_bus = type { i32**, %struct.TYPE_5__*, i32, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AC97_PCM_CFG_SPDIF = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot find configuration for AC97 slot %i\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid AC97 slot %i?\0A\00", align 1
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting ac97 reg 0x%x to rate %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"error in snd_ac97_set_rate: cidx=%d, reg=0x%x, rate=%d, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_pcm_open(%struct.ac97_pcm* %0, i32 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ac97_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.snd_ac97_bus*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.ac97_pcm* %0, %struct.ac97_pcm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %18 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 48000
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %22, i32 0, i32 4
  %24 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %23, align 8
  store %struct.snd_ac97_bus* %24, %struct.snd_ac97_bus** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AC97_PCM_CFG_SPDIF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %34 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %32
  %42 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %43 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AC97_EI_SPDIF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %41
  %55 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %56 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @set_spdif_rate(%struct.TYPE_6__* %61, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %5, align 4
  br label %323

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %41, %32
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %29

73:                                               ; preds = %29
  br label %74

74:                                               ; preds = %73, %4
  %75 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %76 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %75, i32 0, i32 4
  %77 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %76, align 8
  %78 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %77, i32 0, i32 2
  %79 = call i32 @spin_lock_irq(i32* %78)
  store i32 3, i32* %11, align 4
  br label %80

80:                                               ; preds = %178, %74
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 12
  br i1 %82, label %83, label %181

83:                                               ; preds = %80
  %84 = load i16, i16* %9, align 2
  %85 = zext i16 %84 to i32
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %178

91:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %156, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %159

95:                                               ; preds = %92
  %96 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %97 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %100 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32*, i32** %98, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %95
  %113 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %114 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %113, i32 0, i32 4
  %115 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %114, align 8
  %116 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %115, i32 0, i32 2
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %17, align 4
  br label %316

120:                                              ; preds = %95
  %121 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %122 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = shl i32 1, %133
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %120
  %138 = load i32, i32* %11, align 4
  %139 = shl i32 1, %138
  %140 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %141 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %144 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32*, i32** %142, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %139
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %137, %120
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %92

159:                                              ; preds = %92
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %159
  %163 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %164 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %163, i32 0, i32 4
  %165 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %164, align 8
  %166 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %165, i32 0, i32 2
  %167 = call i32 @spin_unlock_irq(i32* %166)
  %168 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %169 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %172, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EAGAIN, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %17, align 4
  br label %316

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %90
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %80

181:                                              ; preds = %80
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %184 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %186 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %185, i32 0, i32 4
  %187 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %186, align 8
  %188 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %187, i32 0, i32 2
  %189 = call i32 @spin_unlock_irq(i32* %188)
  store i32 3, i32* %11, align 4
  br label %190

190:                                              ; preds = %309, %181
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %191, 12
  br i1 %192, label %193, label %312

193:                                              ; preds = %190
  %194 = load i16, i16* %9, align 2
  %195 = zext i16 %194 to i32
  %196 = load i32, i32* %11, align 4
  %197 = shl i32 1, %196
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  br label %309

201:                                              ; preds = %193
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %305, %201
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %308

205:                                              ; preds = %202
  %206 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %207 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %206, i32 0, i32 3
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %11, align 4
  %219 = shl i32 1, %218
  %220 = and i32 %217, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %304

222:                                              ; preds = %205
  %223 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call zeroext i8 @get_slot_reg(%struct.ac97_pcm* %223, i32 %224, i32 %225, i32 %226)
  store i8 %227, i8* %16, align 1
  %228 = load i8, i8* %16, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 255
  br i1 %230, label %231, label %239

231:                                              ; preds = %222
  %232 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %233 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %232, i32 0, i32 1
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %11, align 4
  %238 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  br label %305

239:                                              ; preds = %222
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i8, i8* %16, align 1
  %245 = zext i8 %244 to i32
  %246 = load i8, i8* @AC97_PCM_FRONT_DAC_RATE, align 1
  %247 = zext i8 %246 to i32
  %248 = sub nsw i32 %245, %247
  %249 = shl i32 1, %248
  %250 = and i32 %243, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %239
  br label %305

253:                                              ; preds = %239
  %254 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %255 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %254, i32 0, i32 1
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i8, i8* %16, align 1
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @dev_dbg(i32 %258, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %259, i32 %260)
  %262 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %263 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %262, i32 0, i32 3
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i8, i8* %16, align 1
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @snd_ac97_set_rate(i32 %273, i8 zeroext %274, i32 %275)
  store i32 %276, i32* %17, align 4
  %277 = load i32, i32* %17, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %253
  %280 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %10, align 8
  %281 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %280, i32 0, i32 1
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i8, i8* %16, align 1
  %287 = zext i8 %286 to i32
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %17, align 4
  %290 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %284, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %285, i32 %287, i32 %288, i32 %289)
  br label %303

291:                                              ; preds = %253
  %292 = load i8, i8* %16, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8, i8* @AC97_PCM_FRONT_DAC_RATE, align 1
  %295 = zext i8 %294 to i32
  %296 = sub nsw i32 %293, %295
  %297 = shl i32 1, %296
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %297
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %291, %279
  br label %304

304:                                              ; preds = %303, %205
  br label %305

305:                                              ; preds = %304, %252, %231
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %202

308:                                              ; preds = %202
  br label %309

309:                                              ; preds = %308, %200
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  br label %190

312:                                              ; preds = %190
  %313 = load i16, i16* %9, align 2
  %314 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %315 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %314, i32 0, i32 2
  store i16 %313, i16* %315, align 4
  store i32 0, i32* %5, align 4
  br label %323

316:                                              ; preds = %162, %112
  %317 = load i16, i16* %9, align 2
  %318 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %319 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %318, i32 0, i32 2
  store i16 %317, i16* %319, align 4
  %320 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %321 = call i32 @snd_ac97_pcm_close(%struct.ac97_pcm* %320)
  %322 = load i32, i32* %17, align 4
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %316, %312, %66
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_spdif_rate(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #2

declare dso_local zeroext i8 @get_slot_reg(%struct.ac97_pcm*, i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i32) #2

declare dso_local i32 @snd_ac97_set_rate(i32, i8 zeroext, i32) #2

declare dso_local i32 @snd_ac97_pcm_close(%struct.ac97_pcm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
