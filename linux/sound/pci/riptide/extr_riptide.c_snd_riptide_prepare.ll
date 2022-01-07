; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.snd_riptide = type { i32, %struct.cmdif* }
%struct.cmdif = type { i32 }
%struct.pcmhw = type { i32, i32, i32, i8*, i32, i64, i32, i32, i32, i32, %struct.sgd*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.sgd = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"prepare id %d ch: %d f:0x%x r:%d\0A\00", align 1
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"use sgdlist at 0x%p\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"create sgd size: 0x%x pages %d of size 0x%x for period 0x%x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IEOB_ENABLE = common dso_local global i32 0, align 4
@IEOS_ENABLE = common dso_local global i32 0, align 4
@IEOC_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_riptide*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.pcmhw*, align 8
  %7 = alloca %struct.cmdif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sgd*, align 8
  %21 = alloca %struct.sgd*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %24)
  store %struct.snd_riptide* %25, %struct.snd_riptide** %4, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %5, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = call %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream* %29)
  store %struct.pcmhw* %30, %struct.pcmhw** %6, align 8
  %31 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %32 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %31, i32 0, i32 1
  %33 = load %struct.cmdif*, %struct.cmdif** %32, align 8
  store %struct.cmdif* %33, %struct.cmdif** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %34 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %35 = icmp ne %struct.cmdif* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %38 = icmp ne %struct.pcmhw* %37, null
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %1
  %41 = phi i1 [ true, %1 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %353

48:                                               ; preds = %40
  %49 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %50 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %63 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %12, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  switch i32 %75, label %112 [
    i32 1, label %76
    i32 2, label %94
  ]

76:                                               ; preds = %48
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 48000
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %85 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  br label %93

88:                                               ; preds = %79, %76
  %89 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %90 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %89, i32 0, i32 12
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %112

94:                                               ; preds = %48
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 48000
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %103 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %102, i32 0, i32 12
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %8, align 8
  br label %111

106:                                              ; preds = %97, %94
  %107 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %108 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %8, align 8
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %48, %111, %93
  %113 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %114 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %120 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %257

124:                                              ; preds = %112
  store %struct.sgd* null, %struct.sgd** %21, align 8
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %125, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %130, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %152, %124
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = lshr i32 %138, 1
  %140 = add i32 %137, %139
  %141 = sub i32 %140, 1
  %142 = load i32, i32* %17, align 4
  %143 = shl i32 %142, 7
  %144 = icmp ule i32 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 %146, 1
  %148 = load i32, i32* %19, align 4
  %149 = icmp ugt i32 %147, %148
  br label %150

150:                                              ; preds = %145, %136
  %151 = phi i1 [ false, %136 ], [ %149, %145 ]
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load i32, i32* %17, align 4
  %154 = lshr i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %136

155:                                              ; preds = %150
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @DIV_ROUND_UP(i32 %156, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %161 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %164 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %19, align 4
  %169 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %166, i32 %167, i32 %168)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %244, %155
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %247

174:                                              ; preds = %170
  %175 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %176 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %175, i32 0, i32 10
  %177 = load %struct.sgd*, %struct.sgd** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.sgd, %struct.sgd* %177, i64 %179
  store %struct.sgd* %180, %struct.sgd** %20, align 8
  %181 = load %struct.sgd*, %struct.sgd** %21, align 8
  %182 = icmp ne %struct.sgd* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %174
  %184 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %185 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = zext i32 %187 to i64
  %189 = load i32, i32* %13, align 4
  %190 = zext i32 %189 to i64
  %191 = mul i64 %190, 32
  %192 = add i64 %188, %191
  %193 = trunc i64 %192 to i32
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = load %struct.sgd*, %struct.sgd** %21, align 8
  %196 = getelementptr inbounds %struct.sgd, %struct.sgd* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %183, %174
  %198 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %199 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %198, i32 0, i32 11
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i8* @cpu_to_le32(i32 %201)
  %203 = load %struct.sgd*, %struct.sgd** %20, align 8
  %204 = getelementptr inbounds %struct.sgd, %struct.sgd* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @PAGE_SHIFT, align 4
  %207 = shl i32 %205, %206
  store i32 %207, i32* %22, align 4
  %208 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %209 = load i32, i32* %22, align 4
  %210 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %208, i32 %209)
  %211 = load i32, i32* %18, align 4
  %212 = add i32 %210, %211
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %23, align 4
  %214 = call i8* @cpu_to_le32(i32 %213)
  %215 = load %struct.sgd*, %struct.sgd** %20, align 8
  %216 = getelementptr inbounds %struct.sgd, %struct.sgd* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %17, align 4
  %219 = add i32 %217, %218
  %220 = load i32, i32* @PAGE_SIZE, align 4
  %221 = urem i32 %219, %220
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %197
  %225 = load i32, i32* %14, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %224, %197
  %228 = load i32, i32* %17, align 4
  %229 = call i8* @cpu_to_le32(i32 %228)
  %230 = load %struct.sgd*, %struct.sgd** %20, align 8
  %231 = getelementptr inbounds %struct.sgd, %struct.sgd* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* @IEOB_ENABLE, align 4
  %233 = load i32, i32* @IEOS_ENABLE, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @IEOC_ENABLE, align 4
  %236 = or i32 %234, %235
  %237 = call i8* @cpu_to_le32(i32 %236)
  %238 = load %struct.sgd*, %struct.sgd** %20, align 8
  %239 = getelementptr inbounds %struct.sgd, %struct.sgd* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load %struct.sgd*, %struct.sgd** %20, align 8
  store %struct.sgd* %240, %struct.sgd** %21, align 8
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %15, align 4
  %243 = sub i32 %242, %241
  store i32 %243, i32* %15, align 4
  br label %244

244:                                              ; preds = %227
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %170

247:                                              ; preds = %170
  %248 = load i32, i32* %15, align 4
  %249 = call i8* @cpu_to_le32(i32 %248)
  %250 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %251 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %250, i32 0, i32 10
  %252 = load %struct.sgd*, %struct.sgd** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.sgd, %struct.sgd* %252, i64 %254
  %256 = getelementptr inbounds %struct.sgd, %struct.sgd* %255, i32 0, i32 0
  store i8* %249, i8** %256, align 8
  br label %257

257:                                              ; preds = %247, %112
  %258 = load i8*, i8** %8, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %297

260:                                              ; preds = %257
  %261 = load i8*, i8** %8, align 8
  %262 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %263 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %261, %264
  br i1 %265, label %266, label %297

266:                                              ; preds = %260
  %267 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %268 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %267, i32 0, i32 3
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %266
  %272 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %273 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %274 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %277 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @freelbuspath(%struct.cmdif* %272, i32 %275, i8* %278)
  br label %280

280:                                              ; preds = %271, %266
  %281 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %282 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %283 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = load i8*, i8** %8, align 8
  %286 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %287 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %286, i32 0, i32 8
  %288 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %289 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @alloclbuspath(%struct.cmdif* %281, i32 %284, i8* %285, i32* %287, i32 %290)
  %292 = load i8*, i8** %8, align 8
  %293 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %294 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  %295 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %296 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %295, i32 0, i32 4
  store i32 0, i32* %296, align 8
  br label %297

297:                                              ; preds = %280, %260, %257
  %298 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %299 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %315, label %303

303:                                              ; preds = %297
  %304 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %305 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %12, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %303
  %310 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %311 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %348

315:                                              ; preds = %309, %303, %297
  %316 = load i32, i32* %9, align 4
  %317 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %318 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %317, i32 0, i32 4
  store i32 %316, i32* %318, align 8
  %319 = load i64, i64* %12, align 8
  %320 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %321 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %320, i32 0, i32 5
  store i64 %319, i64* %321, align 8
  %322 = load i32, i32* %10, align 4
  %323 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %324 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %323, i32 0, i32 6
  store i32 %322, i32* %324, align 8
  %325 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %326 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %327 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %330 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load i64, i64* %12, align 8
  %334 = call i64 @setsampleformat(%struct.cmdif* %325, i32 %328, i32 %331, i32 %332, i64 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %344, label %336

336:                                              ; preds = %315
  %337 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %338 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %339 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %9, align 4
  %342 = call i64 @setsamplerate(%struct.cmdif* %337, i32 %340, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %336, %315
  %345 = load i32, i32* @EIO, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %11, align 4
  br label %347

347:                                              ; preds = %344, %336
  br label %348

348:                                              ; preds = %347, %309
  %349 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %350 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %349, i32 0, i32 0
  %351 = call i32 @spin_unlock_irq(i32* %350)
  %352 = load i32, i32* %11, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %348, %45
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @freelbuspath(%struct.cmdif*, i32, i8*) #1

declare dso_local i32 @alloclbuspath(%struct.cmdif*, i32, i8*, i32*, i32) #1

declare dso_local i64 @setsampleformat(%struct.cmdif*, i32, i32, i32, i64) #1

declare dso_local i64 @setsamplerate(%struct.cmdif*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
