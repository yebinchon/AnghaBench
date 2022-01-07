; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_playback_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_playback_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.esschan = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@ESS_FMT_16BIT = common dso_local global i32 0, align 4
@ESM_APU_16BITLINEAR = common dso_local global i32 0, align 4
@ESM_APU_8BITLINEAR = common dso_local global i32 0, align 4
@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@ESM_HIRQ_DSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*)* @snd_es1968_playback_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_playback_setup(%struct.es1968* %0, %struct.esschan* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca %struct.esschan*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store %struct.esschan* %1, %struct.esschan** %5, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.esschan*, %struct.esschan** %5, align 8
  %16 = getelementptr inbounds %struct.esschan, %struct.esschan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.esschan*, %struct.esschan** %5, align 8
  %19 = getelementptr inbounds %struct.esschan, %struct.esschan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %17, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.esschan*, %struct.esschan** %5, align 8
  %23 = getelementptr inbounds %struct.esschan, %struct.esschan* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ESS_FMT_STEREO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %202, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %205

36:                                               ; preds = %32
  %37 = load %struct.esschan*, %struct.esschan** %5, align 8
  %38 = getelementptr inbounds %struct.esschan, %struct.esschan* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.es1968*, %struct.es1968** %4, align 8
  %45 = load %struct.esschan*, %struct.esschan** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.esschan*, %struct.esschan** %5, align 8
  %48 = getelementptr inbounds %struct.esschan, %struct.esschan* %47, i32 0, i32 6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_es1968_program_wavecache(%struct.es1968* %44, %struct.esschan* %45, i32 %46, i32 %52, i32 0)
  %54 = load %struct.esschan*, %struct.esschan** %5, align 8
  %55 = getelementptr inbounds %struct.esschan, %struct.esschan* %54, i32 0, i32 6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.es1968*, %struct.es1968** %4, align 8
  %61 = getelementptr inbounds %struct.es1968, %struct.es1968* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 4194304
  store i32 %71, i32* %7, align 4
  %72 = load %struct.esschan*, %struct.esschan** %5, align 8
  %73 = getelementptr inbounds %struct.esschan, %struct.esschan* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ESS_FMT_STEREO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %36
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 8388608
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.esschan*, %struct.esschan** %5, align 8
  %86 = getelementptr inbounds %struct.esschan, %struct.esschan* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ESS_FMT_16BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %36
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 65535
  %98 = load %struct.esschan*, %struct.esschan** %5, align 8
  %99 = getelementptr inbounds %struct.esschan, %struct.esschan* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %112, %95
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 16
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.es1968*, %struct.es1968** %4, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @apu_set_register(%struct.es1968* %108, i32 %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %104

115:                                              ; preds = %104
  %116 = load %struct.es1968*, %struct.es1968** %4, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %7, align 4
  %119 = ashr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 8
  %122 = call i32 @apu_set_register(%struct.es1968* %116, i32 %117, i32 4, i32 %121)
  %123 = load %struct.es1968*, %struct.es1968** %4, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, 65535
  %127 = call i32 @apu_set_register(%struct.es1968* %123, i32 %124, i32 5, i32 %126)
  %128 = load %struct.es1968*, %struct.es1968** %4, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = and i32 %132, 65535
  %134 = call i32 @apu_set_register(%struct.es1968* %128, i32 %129, i32 6, i32 %133)
  %135 = load %struct.es1968*, %struct.es1968** %4, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @apu_set_register(%struct.es1968* %135, i32 %136, i32 7, i32 %137)
  %139 = load %struct.es1968*, %struct.es1968** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @apu_set_register(%struct.es1968* %139, i32 %140, i32 8, i32 0)
  %142 = load %struct.es1968*, %struct.es1968** %4, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @apu_set_register(%struct.es1968* %142, i32 %143, i32 9, i32 53248)
  %145 = load %struct.es1968*, %struct.es1968** %4, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @apu_set_register(%struct.es1968* %145, i32 %146, i32 11, i32 0)
  %148 = load %struct.es1968*, %struct.es1968** %4, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @apu_set_register(%struct.es1968* %148, i32 %149, i32 0, i32 16399)
  %151 = load %struct.esschan*, %struct.esschan** %5, align 8
  %152 = getelementptr inbounds %struct.esschan, %struct.esschan* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ESS_FMT_16BIT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %115
  %158 = load i32, i32* @ESM_APU_16BITLINEAR, align 4
  %159 = load %struct.esschan*, %struct.esschan** %5, align 8
  %160 = getelementptr inbounds %struct.esschan, %struct.esschan* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %173

165:                                              ; preds = %115
  %166 = load i32, i32* @ESM_APU_8BITLINEAR, align 4
  %167 = load %struct.esschan*, %struct.esschan** %5, align 8
  %168 = getelementptr inbounds %struct.esschan, %struct.esschan* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  br label %173

173:                                              ; preds = %165, %157
  %174 = load %struct.esschan*, %struct.esschan** %5, align 8
  %175 = getelementptr inbounds %struct.esschan, %struct.esschan* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ESS_FMT_STEREO, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %173
  %181 = load %struct.es1968*, %struct.es1968** %4, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 0, i32 16
  %187 = or i32 36608, %186
  %188 = call i32 @apu_set_register(%struct.es1968* %181, i32 %182, i32 10, i32 %187)
  %189 = load %struct.esschan*, %struct.esschan** %5, align 8
  %190 = getelementptr inbounds %struct.esschan, %struct.esschan* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %201

197:                                              ; preds = %173
  %198 = load %struct.es1968*, %struct.es1968** %4, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @apu_set_register(%struct.es1968* %198, i32 %199, i32 10, i32 36616)
  br label %201

201:                                              ; preds = %197, %180
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %32

205:                                              ; preds = %32
  %206 = load %struct.es1968*, %struct.es1968** %4, align 8
  %207 = getelementptr inbounds %struct.es1968, %struct.es1968* %206, i32 0, i32 0
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @spin_lock_irqsave(i32* %207, i64 %208)
  %210 = load %struct.es1968*, %struct.es1968** %4, align 8
  %211 = getelementptr inbounds %struct.es1968, %struct.es1968* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 4
  %214 = call i32 @outw(i32 1, i64 %213)
  %215 = load %struct.es1968*, %struct.es1968** %4, align 8
  %216 = getelementptr inbounds %struct.es1968, %struct.es1968* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @inw(i64 %219)
  %221 = load i32, i32* @ESM_HIRQ_DSIE, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.es1968*, %struct.es1968** %4, align 8
  %224 = getelementptr inbounds %struct.es1968, %struct.es1968* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outw(i32 %222, i64 %227)
  %229 = load %struct.es1968*, %struct.es1968** %4, align 8
  %230 = getelementptr inbounds %struct.es1968, %struct.es1968* %229, i32 0, i32 0
  %231 = load i64, i64* %13, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  %233 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %234 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %236, 48000
  br i1 %237, label %238, label %239

238:                                              ; preds = %205
  store i32 48000, i32* %14, align 4
  br label %239

239:                                              ; preds = %238, %205
  %240 = load i32, i32* %14, align 4
  %241 = icmp slt i32 %240, 4000
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 4000, i32* %14, align 4
  br label %243

243:                                              ; preds = %242, %239
  %244 = load %struct.esschan*, %struct.esschan** %5, align 8
  %245 = getelementptr inbounds %struct.esschan, %struct.esschan* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @ESS_FMT_16BIT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %243
  %251 = load %struct.esschan*, %struct.esschan** %5, align 8
  %252 = getelementptr inbounds %struct.esschan, %struct.esschan* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ESS_FMT_STEREO, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %250
  %258 = load i32, i32* %14, align 4
  %259 = ashr i32 %258, 1
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %257, %250, %243
  %261 = load %struct.es1968*, %struct.es1968** %4, align 8
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @snd_es1968_compute_rate(%struct.es1968* %261, i32 %262)
  store i32 %263, i32* %14, align 4
  %264 = load %struct.es1968*, %struct.es1968** %4, align 8
  %265 = load %struct.esschan*, %struct.esschan** %5, align 8
  %266 = getelementptr inbounds %struct.esschan, %struct.esschan* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %14, align 4
  %271 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %264, i32 %269, i32 %270)
  %272 = load %struct.es1968*, %struct.es1968** %4, align 8
  %273 = load %struct.esschan*, %struct.esschan** %5, align 8
  %274 = getelementptr inbounds %struct.esschan, %struct.esschan* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %272, i32 %277, i32 %278)
  ret void
}

declare dso_local i32 @snd_es1968_program_wavecache(%struct.es1968*, %struct.esschan*, i32, i32, i32) #1

declare dso_local i32 @apu_set_register(%struct.es1968*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_es1968_compute_rate(%struct.es1968*, i32) #1

declare dso_local i32 @snd_es1968_apu_set_freq(%struct.es1968*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
