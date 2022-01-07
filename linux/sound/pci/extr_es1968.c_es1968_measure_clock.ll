; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_es1968_measure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_es1968_measure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.esm_memory = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ESM_APU_PCM_PLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Hmm, cannot find empty APU pair!?\0A\00", align 1
@CLOCK_MEASURE_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"cannot allocate dma buffer - using default clock %d\0A\00", align 1
@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@ESM_HIRQ_DSIE = common dso_local global i32 0, align 4
@ESM_BOB_FREQ = common dso_local global i32 0, align 4
@ESM_APU_16BITLINEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"?? calculation error..\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clocking to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @es1968_measure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es1968_measure_clock(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.esm_memory*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %12 = load %struct.es1968*, %struct.es1968** %2, align 8
  %13 = getelementptr inbounds %struct.es1968, %struct.es1968* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.es1968*, %struct.es1968** %2, align 8
  %18 = getelementptr inbounds %struct.es1968, %struct.es1968* %17, i32 0, i32 0
  store i32 48000, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.es1968*, %struct.es1968** %2, align 8
  %21 = load i32, i32* @ESM_APU_PCM_PLAY, align 4
  %22 = call i32 @snd_es1968_alloc_apu_pair(%struct.es1968* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.es1968*, %struct.es1968** %2, align 8
  %26 = getelementptr inbounds %struct.es1968, %struct.es1968* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %284

31:                                               ; preds = %19
  %32 = load %struct.es1968*, %struct.es1968** %2, align 8
  %33 = load i32, i32* @CLOCK_MEASURE_BUFSIZE, align 4
  %34 = call %struct.esm_memory* @snd_es1968_new_memory(%struct.es1968* %32, i32 %33)
  store %struct.esm_memory* %34, %struct.esm_memory** %8, align 8
  %35 = icmp eq %struct.esm_memory* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.es1968*, %struct.es1968** %2, align 8
  %38 = getelementptr inbounds %struct.es1968, %struct.es1968* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.es1968*, %struct.es1968** %2, align 8
  %43 = getelementptr inbounds %struct.es1968, %struct.es1968* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.es1968*, %struct.es1968** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %46, i32 %47)
  br label %284

49:                                               ; preds = %31
  %50 = load %struct.esm_memory*, %struct.esm_memory** %8, align 8
  %51 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CLOCK_MEASURE_BUFSIZE, align 4
  %55 = call i32 @memset(i32 %53, i32 0, i32 %54)
  %56 = load %struct.es1968*, %struct.es1968** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 3
  %59 = load %struct.esm_memory*, %struct.esm_memory** %8, align 8
  %60 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 16
  %64 = and i32 %63, 65528
  %65 = call i32 @wave_set_register(%struct.es1968* %56, i32 %58, i32 %64)
  %66 = load %struct.esm_memory*, %struct.esm_memory** %8, align 8
  %67 = getelementptr inbounds %struct.esm_memory, %struct.esm_memory* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.es1968*, %struct.es1968** %2, align 8
  %71 = getelementptr inbounds %struct.es1968, %struct.es1968* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %69, %73
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, 4194304
  store i32 %77, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %86, %49
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.es1968*, %struct.es1968** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @apu_set_register(%struct.es1968* %82, i32 %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %78

89:                                               ; preds = %78
  %90 = load %struct.es1968*, %struct.es1968** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @apu_set_register(%struct.es1968* %90, i32 %91, i32 0, i32 16399)
  %93 = load %struct.es1968*, %struct.es1968** %2, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = shl i32 %97, 8
  %99 = call i32 @apu_set_register(%struct.es1968* %93, i32 %94, i32 4, i32 %98)
  %100 = load %struct.es1968*, %struct.es1968** %2, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, 65535
  %104 = call i32 @apu_set_register(%struct.es1968* %100, i32 %101, i32 5, i32 %103)
  %105 = load %struct.es1968*, %struct.es1968** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @CLOCK_MEASURE_BUFSIZE, align 4
  %109 = sdiv i32 %108, 2
  %110 = add i32 %107, %109
  %111 = and i32 %110, 65535
  %112 = call i32 @apu_set_register(%struct.es1968* %105, i32 %106, i32 6, i32 %111)
  %113 = load %struct.es1968*, %struct.es1968** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @CLOCK_MEASURE_BUFSIZE, align 4
  %116 = sdiv i32 %115, 2
  %117 = call i32 @apu_set_register(%struct.es1968* %113, i32 %114, i32 7, i32 %116)
  %118 = load %struct.es1968*, %struct.es1968** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @apu_set_register(%struct.es1968* %118, i32 %119, i32 8, i32 0)
  %121 = load %struct.es1968*, %struct.es1968** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @apu_set_register(%struct.es1968* %121, i32 %122, i32 9, i32 53248)
  %124 = load %struct.es1968*, %struct.es1968** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @apu_set_register(%struct.es1968* %124, i32 %125, i32 10, i32 36616)
  %127 = load %struct.es1968*, %struct.es1968** %2, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @apu_set_register(%struct.es1968* %127, i32 %128, i32 11, i32 0)
  %130 = load %struct.es1968*, %struct.es1968** %2, align 8
  %131 = getelementptr inbounds %struct.es1968, %struct.es1968* %130, i32 0, i32 5
  %132 = call i32 @spin_lock_irq(i32* %131)
  %133 = load %struct.es1968*, %struct.es1968** %2, align 8
  %134 = getelementptr inbounds %struct.es1968, %struct.es1968* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 4
  %137 = call i32 @outw(i32 1, i64 %136)
  %138 = load %struct.es1968*, %struct.es1968** %2, align 8
  %139 = getelementptr inbounds %struct.es1968, %struct.es1968* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @inw(i64 %142)
  %144 = load i32, i32* @ESM_HIRQ_DSIE, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.es1968*, %struct.es1968** %2, align 8
  %147 = getelementptr inbounds %struct.es1968, %struct.es1968* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @outw(i32 %145, i64 %150)
  %152 = load %struct.es1968*, %struct.es1968** %2, align 8
  %153 = getelementptr inbounds %struct.es1968, %struct.es1968* %152, i32 0, i32 5
  %154 = call i32 @spin_unlock_irq(i32* %153)
  %155 = load %struct.es1968*, %struct.es1968** %2, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.es1968*, %struct.es1968** %2, align 8
  %158 = getelementptr inbounds %struct.es1968, %struct.es1968* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = udiv i32 -1149239296, %159
  %161 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %155, i32 %156, i32 %160)
  %162 = load %struct.es1968*, %struct.es1968** %2, align 8
  %163 = getelementptr inbounds %struct.es1968, %struct.es1968* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.es1968*, %struct.es1968** %2, align 8
  %166 = getelementptr inbounds %struct.es1968, %struct.es1968* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.es1968*, %struct.es1968** %2, align 8
  %168 = getelementptr inbounds %struct.es1968, %struct.es1968* %167, i32 0, i32 5
  %169 = call i32 @spin_lock_irq(i32* %168)
  %170 = load %struct.es1968*, %struct.es1968** %2, align 8
  %171 = load i32, i32* @ESM_BOB_FREQ, align 4
  %172 = call i32 @snd_es1968_bob_inc(%struct.es1968* %170, i32 %171)
  %173 = load %struct.es1968*, %struct.es1968** %2, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %5, align 4
  %176 = and i32 %175, 65535
  %177 = call i32 @__apu_set_register(%struct.es1968* %173, i32 %174, i32 5, i32 %176)
  %178 = load %struct.es1968*, %struct.es1968** %2, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @ESM_APU_16BITLINEAR, align 4
  %181 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %178, i32 %179, i32 %180)
  %182 = call i32 (...) @ktime_get()
  store i32 %182, i32* %9, align 4
  %183 = load %struct.es1968*, %struct.es1968** %2, align 8
  %184 = getelementptr inbounds %struct.es1968, %struct.es1968* %183, i32 0, i32 5
  %185 = call i32 @spin_unlock_irq(i32* %184)
  %186 = call i32 @msleep(i32 50)
  %187 = load %struct.es1968*, %struct.es1968** %2, align 8
  %188 = getelementptr inbounds %struct.es1968, %struct.es1968* %187, i32 0, i32 5
  %189 = call i32 @spin_lock_irq(i32* %188)
  %190 = load %struct.es1968*, %struct.es1968** %2, align 8
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @__apu_get_register(%struct.es1968* %190, i32 %191, i32 5)
  store i32 %192, i32* %6, align 4
  %193 = call i32 (...) @ktime_get()
  store i32 %193, i32* %10, align 4
  %194 = load %struct.es1968*, %struct.es1968** %2, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %194, i32 %195, i32 0)
  %197 = load %struct.es1968*, %struct.es1968** %2, align 8
  %198 = call i32 @snd_es1968_bob_dec(%struct.es1968* %197)
  %199 = load %struct.es1968*, %struct.es1968** %2, align 8
  %200 = getelementptr inbounds %struct.es1968, %struct.es1968* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.es1968*, %struct.es1968** %2, align 8
  %202 = getelementptr inbounds %struct.es1968, %struct.es1968* %201, i32 0, i32 5
  %203 = call i32 @spin_unlock_irq(i32* %202)
  %204 = load i32, i32* %5, align 4
  %205 = and i32 %204, 65535
  %206 = load i32, i32* %6, align 4
  %207 = sub i32 %206, %205
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = and i32 %208, 65534
  store i32 %209, i32* %6, align 4
  %210 = load %struct.es1968*, %struct.es1968** %2, align 8
  %211 = getelementptr inbounds %struct.es1968, %struct.es1968* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @CLOCK_MEASURE_BUFSIZE, align 4
  %214 = sdiv i32 %213, 2
  %215 = mul nsw i32 %212, %214
  %216 = load i32, i32* %6, align 4
  %217 = add i32 %216, %215
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @ktime_sub(i32 %218, i32 %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @ktime_to_us(i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %89
  %226 = load %struct.es1968*, %struct.es1968** %2, align 8
  %227 = getelementptr inbounds %struct.es1968, %struct.es1968* %226, i32 0, i32 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @dev_err(i32 %230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %277

232:                                              ; preds = %89
  %233 = load i32, i32* %6, align 4
  %234 = mul i32 %233, 1000
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %7, align 4
  %237 = udiv i32 %235, %236
  %238 = mul i32 %237, 1000
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %7, align 4
  %241 = urem i32 %239, %240
  %242 = mul i32 %241, 1000
  %243 = load i32, i32* %7, align 4
  %244 = udiv i32 %242, %243
  %245 = add i32 %238, %244
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp ult i32 %246, 47500
  br i1 %247, label %251, label %248

248:                                              ; preds = %232
  %249 = load i32, i32* %6, align 4
  %250 = icmp ugt i32 %249, 48500
  br i1 %250, label %251, label %267

251:                                              ; preds = %248, %232
  %252 = load i32, i32* %6, align 4
  %253 = icmp uge i32 %252, 40000
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  %256 = icmp ule i32 %255, 50000
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load %struct.es1968*, %struct.es1968** %2, align 8
  %259 = getelementptr inbounds %struct.es1968, %struct.es1968* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = mul i32 %260, %261
  %263 = udiv i32 %262, 48000
  %264 = load %struct.es1968*, %struct.es1968** %2, align 8
  %265 = getelementptr inbounds %struct.es1968, %struct.es1968* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %257, %254, %251
  br label %267

267:                                              ; preds = %266, %248
  %268 = load %struct.es1968*, %struct.es1968** %2, align 8
  %269 = getelementptr inbounds %struct.es1968, %struct.es1968* %268, i32 0, i32 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.es1968*, %struct.es1968** %2, align 8
  %274 = getelementptr inbounds %struct.es1968, %struct.es1968* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @dev_info(i32 %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %267, %225
  %278 = load %struct.es1968*, %struct.es1968** %2, align 8
  %279 = load %struct.esm_memory*, %struct.esm_memory** %8, align 8
  %280 = call i32 @snd_es1968_free_memory(%struct.es1968* %278, %struct.esm_memory* %279)
  %281 = load %struct.es1968*, %struct.es1968** %2, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %281, i32 %282)
  br label %284

284:                                              ; preds = %277, %36, %24
  ret void
}

declare dso_local i32 @snd_es1968_alloc_apu_pair(%struct.es1968*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.esm_memory* @snd_es1968_new_memory(%struct.es1968*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_es1968_free_apu_pair(%struct.es1968*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wave_set_register(%struct.es1968*, i32, i32) #1

declare dso_local i32 @apu_set_register(%struct.es1968*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_es1968_apu_set_freq(%struct.es1968*, i32, i32) #1

declare dso_local i32 @snd_es1968_bob_inc(%struct.es1968*, i32) #1

declare dso_local i32 @__apu_set_register(%struct.es1968*, i32, i32, i32) #1

declare dso_local i32 @snd_es1968_trigger_apu(%struct.es1968*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__apu_get_register(%struct.es1968*, i32, i32) #1

declare dso_local i32 @snd_es1968_bob_dec(%struct.es1968*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @snd_es1968_free_memory(%struct.es1968*, %struct.esm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
