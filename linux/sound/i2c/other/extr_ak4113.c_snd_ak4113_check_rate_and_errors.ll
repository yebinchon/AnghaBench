; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_check_rate_and_errors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_check_rate_and_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { i8, i32, i8, %struct.TYPE_7__*, i32 (%struct.ak4113*, i8, i8)*, %struct.TYPE_6__**, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AK4113_REG_RCS1 = common dso_local global i32 0, align 4
@AK4113_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4113_REG_RCS0 = common dso_local global i32 0, align 4
@AK4113_REG_RCS2 = common dso_local global i32 0, align 4
@AK4113_PAR = common dso_local global i8 0, align 1
@AK4113_PARITY_ERRORS = common dso_local global i64 0, align 8
@AK4113_V = common dso_local global i8 0, align 1
@AK4113_V_BIT_ERRORS = common dso_local global i64 0, align 8
@AK4113_CCRC = common dso_local global i8 0, align 1
@AK4113_CCRC_ERRORS = common dso_local global i64 0, align 8
@AK4113_QCRC = common dso_local global i8 0, align 1
@AK4113_QCRC_ERRORS = common dso_local global i64 0, align 8
@AK4113_QINT = common dso_local global i8 0, align 1
@AK4113_CINT = common dso_local global i8 0, align 1
@AK4113_STC = common dso_local global i8 0, align 1
@AK4113_AUDION = common dso_local global i8 0, align 1
@AK4113_AUTO = common dso_local global i8 0, align 1
@AK4113_UNLCK = common dso_local global i8 0, align 1
@AK4113_DTSCD = common dso_local global i32 0, align 4
@AK4113_NPCM = common dso_local global i32 0, align 4
@AK4113_PEM = common dso_local global i32 0, align 4
@AK4113_DAT = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AK4113_CHECK_NO_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4113_check_rate_and_errors(%struct.ak4113* %0, i32 %1) #0 {
  %3 = alloca %struct.ak4113*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.ak4113* %0, %struct.ak4113** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %14 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %19 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %18, i32 0, i32 3
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
  %26 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %27 = load i32, i32* @AK4113_REG_RCS1, align 4
  %28 = call zeroext i8 @reg_read(%struct.ak4113* %26, i32 %27)
  store i8 %28, i8* %9, align 1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AK4113_CHECK_NO_STAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %411

34:                                               ; preds = %24
  %35 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %36 = load i32, i32* @AK4113_REG_RCS0, align 4
  %37 = call zeroext i8 @reg_read(%struct.ak4113* %35, i32 %36)
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %39 = load i32, i32* @AK4113_REG_RCS2, align 4
  %40 = call zeroext i8 @reg_read(%struct.ak4113* %38, i32 %39)
  store i8 %40, i8* %10, align 1
  %41 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %42 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %41, i32 0, i32 7
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @AK4113_PAR, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %53 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @AK4113_PARITY_ERRORS, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %34
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @AK4113_V, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %68 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @AK4113_V_BIT_ERRORS, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %66, %59
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @AK4113_CCRC, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %83 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @AK4113_CCRC_ERRORS, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @AK4113_QCRC, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %98 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @AK4113_QCRC_ERRORS, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %106 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @AK4113_QINT, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @AK4113_CINT, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = load i8, i8* @AK4113_STC, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = load i8, i8* @AK4113_AUDION, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = load i8, i8* @AK4113_AUTO, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %119, %121
  %123 = load i8, i8* @AK4113_UNLCK, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %122, %124
  %126 = and i32 %108, %125
  %127 = load i8, i8* %8, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @AK4113_QINT, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @AK4113_CINT, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = load i8, i8* @AK4113_STC, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = load i8, i8* @AK4113_AUDION, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = load i8, i8* @AK4113_AUTO, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = load i8, i8* @AK4113_UNLCK, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = and i32 %128, %145
  %147 = xor i32 %126, %146
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %11, align 1
  %149 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %150 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AK4113_DTSCD, align 4
  %153 = load i32, i32* @AK4113_NPCM, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @AK4113_PEM, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @AK4113_DAT, align 4
  %158 = or i32 %156, %157
  %159 = or i32 %158, 240
  %160 = and i32 %151, %159
  %161 = load i8, i8* %9, align 1
  %162 = zext i8 %161 to i32
  %163 = load i32, i32* @AK4113_DTSCD, align 4
  %164 = load i32, i32* @AK4113_NPCM, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @AK4113_PEM, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @AK4113_DAT, align 4
  %169 = or i32 %167, %168
  %170 = or i32 %169, 240
  %171 = and i32 %162, %170
  %172 = xor i32 %160, %171
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %12, align 1
  %174 = load i8, i8* %8, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @AK4113_QINT, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @AK4113_CINT, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %177, %179
  %181 = load i8, i8* @AK4113_STC, align 1
  %182 = zext i8 %181 to i32
  %183 = or i32 %180, %182
  %184 = xor i32 %183, -1
  %185 = and i32 %175, %184
  %186 = trunc i32 %185 to i8
  %187 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %188 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %187, i32 0, i32 0
  store i8 %186, i8* %188, align 8
  %189 = load i8, i8* %9, align 1
  %190 = zext i8 %189 to i32
  %191 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %192 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i8, i8* %10, align 1
  %194 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %195 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %194, i32 0, i32 2
  store i8 %193, i8* %195, align 8
  %196 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %197 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %196, i32 0, i32 7
  %198 = load i64, i64* %6, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load i8, i8* %8, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8, i8* @AK4113_PAR, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %201, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %104
  %207 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %208 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %211 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %212 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %211, i32 0, i32 5
  %213 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %213, i64 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = call i32 @snd_ctl_notify(i32 %209, i32 %210, i32* %216)
  br label %218

218:                                              ; preds = %206, %104
  %219 = load i8, i8* %8, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8, i8* @AK4113_V, align 1
  %222 = zext i8 %221 to i32
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %227 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %230 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %231 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %230, i32 0, i32 5
  %232 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %232, i64 1
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = call i32 @snd_ctl_notify(i32 %228, i32 %229, i32* %235)
  br label %237

237:                                              ; preds = %225, %218
  %238 = load i8, i8* %10, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8, i8* @AK4113_CCRC, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %239, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %237
  %245 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %246 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %249 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %250 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %249, i32 0, i32 5
  %251 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %251, i64 2
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = call i32 @snd_ctl_notify(i32 %247, i32 %248, i32* %254)
  br label %256

256:                                              ; preds = %244, %237
  %257 = load i8, i8* %10, align 1
  %258 = zext i8 %257 to i32
  %259 = load i8, i8* @AK4113_QCRC, align 1
  %260 = zext i8 %259 to i32
  %261 = and i32 %258, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %256
  %264 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %265 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %268 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %269 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %268, i32 0, i32 5
  %270 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %270, i64 3
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = call i32 @snd_ctl_notify(i32 %266, i32 %267, i32* %273)
  br label %275

275:                                              ; preds = %263, %256
  %276 = load i8, i8* %12, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 240
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %275
  %281 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %282 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %285 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %286 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %285, i32 0, i32 5
  %287 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %287, i64 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = call i32 @snd_ctl_notify(i32 %283, i32 %284, i32* %290)
  br label %292

292:                                              ; preds = %280, %275
  %293 = load i8, i8* %12, align 1
  %294 = zext i8 %293 to i32
  %295 = load i32, i32* @AK4113_PEM, align 4
  %296 = and i32 %294, %295
  %297 = load i8, i8* %11, align 1
  %298 = zext i8 %297 to i32
  %299 = load i8, i8* @AK4113_CINT, align 1
  %300 = zext i8 %299 to i32
  %301 = and i32 %298, %300
  %302 = or i32 %296, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %316

304:                                              ; preds = %292
  %305 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %306 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %309 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %310 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %309, i32 0, i32 5
  %311 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %311, i64 6
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = call i32 @snd_ctl_notify(i32 %307, i32 %308, i32* %314)
  br label %316

316:                                              ; preds = %304, %292
  %317 = load i8, i8* %11, align 1
  %318 = zext i8 %317 to i32
  %319 = load i8, i8* @AK4113_QINT, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %318, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %316
  %324 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %325 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %328 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %329 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %328, i32 0, i32 5
  %330 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %330, i64 8
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = call i32 @snd_ctl_notify(i32 %326, i32 %327, i32* %333)
  br label %335

335:                                              ; preds = %323, %316
  %336 = load i8, i8* %11, align 1
  %337 = zext i8 %336 to i32
  %338 = load i8, i8* @AK4113_AUDION, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %337, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %335
  %343 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %344 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %347 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %348 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %347, i32 0, i32 5
  %349 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %349, i64 9
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = call i32 @snd_ctl_notify(i32 %345, i32 %346, i32* %352)
  br label %354

354:                                              ; preds = %342, %335
  %355 = load i8, i8* %12, align 1
  %356 = zext i8 %355 to i32
  %357 = load i32, i32* @AK4113_NPCM, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %354
  %361 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %362 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %365 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %366 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %365, i32 0, i32 5
  %367 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %367, i64 10
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = call i32 @snd_ctl_notify(i32 %363, i32 %364, i32* %370)
  br label %372

372:                                              ; preds = %360, %354
  %373 = load i8, i8* %12, align 1
  %374 = zext i8 %373 to i32
  %375 = load i32, i32* @AK4113_DTSCD, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %390

378:                                              ; preds = %372
  %379 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %380 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %383 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %384 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %383, i32 0, i32 5
  %385 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %385, i64 11
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = call i32 @snd_ctl_notify(i32 %381, i32 %382, i32* %388)
  br label %390

390:                                              ; preds = %378, %372
  %391 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %392 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %391, i32 0, i32 4
  %393 = load i32 (%struct.ak4113*, i8, i8)*, i32 (%struct.ak4113*, i8, i8)** %392, align 8
  %394 = icmp ne i32 (%struct.ak4113*, i8, i8)* %393, null
  br i1 %394, label %395, label %410

395:                                              ; preds = %390
  %396 = load i8, i8* %11, align 1
  %397 = zext i8 %396 to i32
  %398 = load i8, i8* %12, align 1
  %399 = zext i8 %398 to i32
  %400 = or i32 %397, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %395
  %403 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %404 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %403, i32 0, i32 4
  %405 = load i32 (%struct.ak4113*, i8, i8)*, i32 (%struct.ak4113*, i8, i8)** %404, align 8
  %406 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %407 = load i8, i8* %11, align 1
  %408 = load i8, i8* %12, align 1
  %409 = call i32 %405(%struct.ak4113* %406, i8 zeroext %407, i8 zeroext %408)
  br label %410

410:                                              ; preds = %402, %395, %390
  br label %411

411:                                              ; preds = %410, %33
  %412 = load i8, i8* %9, align 1
  %413 = call i32 @external_rate(i8 zeroext %412)
  store i32 %413, i32* %7, align 4
  %414 = load i32, i32* %4, align 4
  %415 = load i32, i32* @AK4113_CHECK_NO_RATE, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %453, label %418

418:                                              ; preds = %411
  %419 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %420 = icmp ne %struct.snd_pcm_runtime* %419, null
  br i1 %420, label %421, label %453

421:                                              ; preds = %418
  %422 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %423 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %7, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %453

427:                                              ; preds = %421
  %428 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %429 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %428, i32 0, i32 3
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %429, align 8
  %431 = load i64, i64* %6, align 8
  %432 = call i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_7__* %430, i64 %431)
  %433 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %434 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %433, i32 0, i32 3
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %434, align 8
  %436 = call i64 @snd_pcm_running(%struct.TYPE_7__* %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %427
  %439 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %440 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %439, i32 0, i32 3
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %440, align 8
  %442 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %443 = call i32 @snd_pcm_stop(%struct.TYPE_7__* %441, i32 %442)
  %444 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %445 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %444, i32 0, i32 1
  %446 = call i32 @wake_up(i32* %445)
  store i32 1, i32* %7, align 4
  br label %447

447:                                              ; preds = %438, %427
  %448 = load %struct.ak4113*, %struct.ak4113** %3, align 8
  %449 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %448, i32 0, i32 3
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %449, align 8
  %451 = load i64, i64* %6, align 8
  %452 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_7__* %450, i64 %451)
  br label %453

453:                                              ; preds = %447, %421, %418, %411
  %454 = load i32, i32* %7, align 4
  ret i32 %454
}

declare dso_local zeroext i8 @reg_read(%struct.ak4113*, i32) #1

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
