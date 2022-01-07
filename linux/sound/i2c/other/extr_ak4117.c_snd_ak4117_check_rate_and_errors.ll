; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_check_rate_and_errors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_check_rate_and_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8, i32, i8, %struct.TYPE_7__*, i32 (%struct.ak4117*, i8, i8)*, %struct.TYPE_6__**, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AK4117_REG_RCS1 = common dso_local global i32 0, align 4
@AK4117_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4117_REG_RCS0 = common dso_local global i32 0, align 4
@AK4117_REG_RCS2 = common dso_local global i32 0, align 4
@AK4117_PAR = common dso_local global i8 0, align 1
@AK4117_PARITY_ERRORS = common dso_local global i64 0, align 8
@AK4117_V = common dso_local global i8 0, align 1
@AK4117_V_BIT_ERRORS = common dso_local global i64 0, align 8
@AK4117_CCRC = common dso_local global i8 0, align 1
@AK4117_CCRC_ERRORS = common dso_local global i64 0, align 8
@AK4117_QCRC = common dso_local global i8 0, align 1
@AK4117_QCRC_ERRORS = common dso_local global i64 0, align 8
@AK4117_QINT = common dso_local global i8 0, align 1
@AK4117_CINT = common dso_local global i8 0, align 1
@AK4117_STC = common dso_local global i8 0, align 1
@AK4117_AUDION = common dso_local global i8 0, align 1
@AK4117_AUTO = common dso_local global i8 0, align 1
@AK4117_UNLCK = common dso_local global i8 0, align 1
@AK4117_DTSCD = common dso_local global i32 0, align 4
@AK4117_NPCM = common dso_local global i32 0, align 4
@AK4117_PEM = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AK4117_CHECK_NO_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4117_check_rate_and_errors(%struct.ak4117* %0, i32 %1) #0 {
  %3 = alloca %struct.ak4117*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %14 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %19 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi %struct.snd_pcm_runtime* [ %22, %17 ], [ null, %23 ]
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %27 = load i32, i32* @AK4117_REG_RCS1, align 4
  %28 = call zeroext i8 @reg_read(%struct.ak4117* %26, i32 %27)
  store i8 %28, i8* %9, align 1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AK4117_CHECK_NO_STAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %407

34:                                               ; preds = %24
  %35 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %36 = load i32, i32* @AK4117_REG_RCS0, align 4
  %37 = call zeroext i8 @reg_read(%struct.ak4117* %35, i32 %36)
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %39 = load i32, i32* @AK4117_REG_RCS2, align 4
  %40 = call zeroext i8 @reg_read(%struct.ak4117* %38, i32 %39)
  store i8 %40, i8* %10, align 1
  %41 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %42 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %41, i32 0, i32 7
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @AK4117_PAR, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %53 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @AK4117_PARITY_ERRORS, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %34
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @AK4117_V, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %68 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @AK4117_V_BIT_ERRORS, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %66, %59
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @AK4117_CCRC, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %83 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @AK4117_CCRC_ERRORS, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @AK4117_QCRC, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %98 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @AK4117_QCRC_ERRORS, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %106 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @AK4117_QINT, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @AK4117_CINT, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = load i8, i8* @AK4117_STC, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = load i8, i8* @AK4117_AUDION, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = load i8, i8* @AK4117_AUTO, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %119, %121
  %123 = load i8, i8* @AK4117_UNLCK, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %122, %124
  %126 = and i32 %108, %125
  %127 = load i8, i8* %8, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @AK4117_QINT, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @AK4117_CINT, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = load i8, i8* @AK4117_STC, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = load i8, i8* @AK4117_AUDION, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = load i8, i8* @AK4117_AUTO, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = load i8, i8* @AK4117_UNLCK, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = and i32 %128, %145
  %147 = xor i32 %126, %146
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %11, align 1
  %149 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %150 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AK4117_DTSCD, align 4
  %153 = load i32, i32* @AK4117_NPCM, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @AK4117_PEM, align 4
  %156 = or i32 %154, %155
  %157 = or i32 %156, 15
  %158 = and i32 %151, %157
  %159 = load i8, i8* %9, align 1
  %160 = zext i8 %159 to i32
  %161 = load i32, i32* @AK4117_DTSCD, align 4
  %162 = load i32, i32* @AK4117_NPCM, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @AK4117_PEM, align 4
  %165 = or i32 %163, %164
  %166 = or i32 %165, 15
  %167 = and i32 %160, %166
  %168 = xor i32 %158, %167
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %12, align 1
  %170 = load i8, i8* %8, align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* @AK4117_QINT, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* @AK4117_CINT, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %173, %175
  %177 = load i8, i8* @AK4117_STC, align 1
  %178 = zext i8 %177 to i32
  %179 = or i32 %176, %178
  %180 = xor i32 %179, -1
  %181 = and i32 %171, %180
  %182 = trunc i32 %181 to i8
  %183 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %184 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %183, i32 0, i32 0
  store i8 %182, i8* %184, align 8
  %185 = load i8, i8* %9, align 1
  %186 = zext i8 %185 to i32
  %187 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %188 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i8, i8* %10, align 1
  %190 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %191 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %190, i32 0, i32 2
  store i8 %189, i8* %191, align 8
  %192 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %193 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %192, i32 0, i32 7
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  %196 = load i8, i8* %8, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @AK4117_PAR, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %104
  %203 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %204 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %207 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %208 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %207, i32 0, i32 5
  %209 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %209, i64 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = call i32 @snd_ctl_notify(i32 %205, i32 %206, i32* %212)
  br label %214

214:                                              ; preds = %202, %104
  %215 = load i8, i8* %8, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* @AK4117_V, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %214
  %222 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %223 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %226 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %227 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %226, i32 0, i32 5
  %228 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %228, i64 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = call i32 @snd_ctl_notify(i32 %224, i32 %225, i32* %231)
  br label %233

233:                                              ; preds = %221, %214
  %234 = load i8, i8* %10, align 1
  %235 = zext i8 %234 to i32
  %236 = load i8, i8* @AK4117_CCRC, align 1
  %237 = zext i8 %236 to i32
  %238 = and i32 %235, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %233
  %241 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %242 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %245 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %246 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %245, i32 0, i32 5
  %247 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %247, i64 2
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = call i32 @snd_ctl_notify(i32 %243, i32 %244, i32* %250)
  br label %252

252:                                              ; preds = %240, %233
  %253 = load i8, i8* %10, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, i8* @AK4117_QCRC, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %254, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %252
  %260 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %261 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %264 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %265 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %264, i32 0, i32 5
  %266 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %266, i64 3
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = call i32 @snd_ctl_notify(i32 %262, i32 %263, i32* %269)
  br label %271

271:                                              ; preds = %259, %252
  %272 = load i8, i8* %12, align 1
  %273 = zext i8 %272 to i32
  %274 = and i32 %273, 15
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %271
  %277 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %278 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %281 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %282 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %281, i32 0, i32 5
  %283 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %283, i64 4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = call i32 @snd_ctl_notify(i32 %279, i32 %280, i32* %286)
  br label %288

288:                                              ; preds = %276, %271
  %289 = load i8, i8* %12, align 1
  %290 = zext i8 %289 to i32
  %291 = load i32, i32* @AK4117_PEM, align 4
  %292 = and i32 %290, %291
  %293 = load i8, i8* %11, align 1
  %294 = zext i8 %293 to i32
  %295 = load i8, i8* @AK4117_CINT, align 1
  %296 = zext i8 %295 to i32
  %297 = and i32 %294, %296
  %298 = or i32 %292, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %288
  %301 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %302 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %305 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %306 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %305, i32 0, i32 5
  %307 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %307, i64 6
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = call i32 @snd_ctl_notify(i32 %303, i32 %304, i32* %310)
  br label %312

312:                                              ; preds = %300, %288
  %313 = load i8, i8* %11, align 1
  %314 = zext i8 %313 to i32
  %315 = load i8, i8* @AK4117_QINT, align 1
  %316 = zext i8 %315 to i32
  %317 = and i32 %314, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %312
  %320 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %321 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %324 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %325 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %324, i32 0, i32 5
  %326 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %326, i64 8
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = call i32 @snd_ctl_notify(i32 %322, i32 %323, i32* %329)
  br label %331

331:                                              ; preds = %319, %312
  %332 = load i8, i8* %11, align 1
  %333 = zext i8 %332 to i32
  %334 = load i8, i8* @AK4117_AUDION, align 1
  %335 = zext i8 %334 to i32
  %336 = and i32 %333, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %331
  %339 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %340 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %343 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %344 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %343, i32 0, i32 5
  %345 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %345, i64 9
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = call i32 @snd_ctl_notify(i32 %341, i32 %342, i32* %348)
  br label %350

350:                                              ; preds = %338, %331
  %351 = load i8, i8* %12, align 1
  %352 = zext i8 %351 to i32
  %353 = load i32, i32* @AK4117_NPCM, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %368

356:                                              ; preds = %350
  %357 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %358 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %361 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %362 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %361, i32 0, i32 5
  %363 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %363, i64 10
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = call i32 @snd_ctl_notify(i32 %359, i32 %360, i32* %366)
  br label %368

368:                                              ; preds = %356, %350
  %369 = load i8, i8* %12, align 1
  %370 = zext i8 %369 to i32
  %371 = load i32, i32* @AK4117_DTSCD, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %368
  %375 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %376 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %379 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %380 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %379, i32 0, i32 5
  %381 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %381, i64 11
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = call i32 @snd_ctl_notify(i32 %377, i32 %378, i32* %384)
  br label %386

386:                                              ; preds = %374, %368
  %387 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %388 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %387, i32 0, i32 4
  %389 = load i32 (%struct.ak4117*, i8, i8)*, i32 (%struct.ak4117*, i8, i8)** %388, align 8
  %390 = icmp ne i32 (%struct.ak4117*, i8, i8)* %389, null
  br i1 %390, label %391, label %406

391:                                              ; preds = %386
  %392 = load i8, i8* %11, align 1
  %393 = zext i8 %392 to i32
  %394 = load i8, i8* %12, align 1
  %395 = zext i8 %394 to i32
  %396 = or i32 %393, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %391
  %399 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %400 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %399, i32 0, i32 4
  %401 = load i32 (%struct.ak4117*, i8, i8)*, i32 (%struct.ak4117*, i8, i8)** %400, align 8
  %402 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %403 = load i8, i8* %11, align 1
  %404 = load i8, i8* %12, align 1
  %405 = call i32 %401(%struct.ak4117* %402, i8 zeroext %403, i8 zeroext %404)
  br label %406

406:                                              ; preds = %398, %391, %386
  br label %407

407:                                              ; preds = %406, %33
  %408 = load i8, i8* %9, align 1
  %409 = call i32 @external_rate(i8 zeroext %408)
  store i32 %409, i32* %7, align 4
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* @AK4117_CHECK_NO_RATE, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %449, label %414

414:                                              ; preds = %407
  %415 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %416 = icmp ne %struct.snd_pcm_runtime* %415, null
  br i1 %416, label %417, label %449

417:                                              ; preds = %414
  %418 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %419 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* %7, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %449

423:                                              ; preds = %417
  %424 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %425 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %424, i32 0, i32 3
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %425, align 8
  %427 = load i64, i64* %6, align 8
  %428 = call i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_7__* %426, i64 %427)
  %429 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %430 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %429, i32 0, i32 3
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %430, align 8
  %432 = call i64 @snd_pcm_running(%struct.TYPE_7__* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %443

434:                                              ; preds = %423
  %435 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %436 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %435, i32 0, i32 3
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %436, align 8
  %438 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %439 = call i32 @snd_pcm_stop(%struct.TYPE_7__* %437, i32 %438)
  %440 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %441 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %440, i32 0, i32 1
  %442 = call i32 @wake_up(i32* %441)
  store i32 1, i32* %7, align 4
  br label %443

443:                                              ; preds = %434, %423
  %444 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %445 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %444, i32 0, i32 3
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %445, align 8
  %447 = load i64, i64* %6, align 8
  %448 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_7__* %446, i64 %447)
  br label %449

449:                                              ; preds = %443, %417, %414, %407
  %450 = load i32, i32* %7, align 4
  ret i32 %450
}

declare dso_local zeroext i8 @reg_read(%struct.ak4117*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @external_rate(i8 zeroext) #1

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @snd_pcm_running(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
