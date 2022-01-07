; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.atmel_runtime_data* }
%struct.atmel_runtime_data = type { i32, i32, i32, %struct.atmel_pcm_dma_params* }
%struct.atmel_pcm_dma_params = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"atmel-pcm:buffer_size = %ld,dma_area = %p, dma_bytes = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"atmel-pcm: trigger: period_ptr=%lx, xpr=%u, xcr=%u, xnpr=%u, xncr=%u\0A\00", align 1
@SSC_IER = common dso_local global i32 0, align 4
@SSC_PDC_PTCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sr=%u imr=%u\0A\00", align 1
@SSC_SR = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @atmel_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.atmel_runtime_data*, align 8
  %7 = alloca %struct.atmel_pcm_dma_params*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %13, align 8
  store %struct.atmel_runtime_data* %14, %struct.atmel_runtime_data** %6, align 8
  %15 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %16 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %15, i32 0, i32 3
  %17 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %16, align 8
  store %struct.atmel_pcm_dma_params* %17, %struct.atmel_pcm_dma_params** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %228 [
    i32 130, label %30
    i32 129, label %202
    i32 128, label %202
    i32 133, label %202
    i32 131, label %215
    i32 132, label %215
  ]

30:                                               ; preds = %2
  %31 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %35 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %37 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %42 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %47 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ssc_writex(i32 %40, i32 %45, i32 %48)
  %50 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %51 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %56 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %61 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %64 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %62, %65
  %67 = call i32 @ssc_writex(i32 %54, i32 %59, i32 %66)
  %68 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %69 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %76 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %81 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %86 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ssc_writex(i32 %79, i32 %84, i32 %87)
  %89 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %90 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %95 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %100 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %103 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %101, %104
  %106 = call i32 @ssc_writex(i32 %93, i32 %98, i32 %105)
  %107 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %108 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %112 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %117 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ssc_readx(i32 %115, i32 %120)
  %122 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %123 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %128 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ssc_readx(i32 %126, i32 %131)
  %133 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %134 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %139 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ssc_readx(i32 %137, i32 %142)
  %144 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %145 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %144, i32 0, i32 2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %150 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ssc_readx(i32 %148, i32 %153)
  %155 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %110, i32 %121, i32 %132, i32 %143, i32 %154)
  %156 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %157 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SSC_IER, align 4
  %162 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %163 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %168 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %166, %171
  %173 = call i32 @ssc_writex(i32 %160, i32 %161, i32 %172)
  %174 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %175 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SSC_PDC_PTCR, align 4
  %180 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %181 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ssc_writex(i32 %178, i32 %179, i32 %184)
  %186 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %187 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %186, i32 0, i32 2
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SSC_SR, align 4
  %192 = call i32 @ssc_readx(i32 %190, i32 %191)
  %193 = sext i32 %192 to i64
  %194 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %195 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %194, i32 0, i32 2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SSC_IER, align 4
  %200 = call i32 @ssc_readx(i32 %198, i32 %199)
  %201 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %193, i32 %200)
  br label %231

202:                                              ; preds = %2, %2, %2
  %203 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %204 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %203, i32 0, i32 2
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %209 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %210 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ssc_writex(i32 %207, i32 %208, i32 %213)
  br label %231

215:                                              ; preds = %2, %2
  %216 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %217 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %222 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %223 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ssc_writex(i32 %220, i32 %221, i32 %226)
  br label %231

228:                                              ; preds = %2
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  br label %231

231:                                              ; preds = %228, %215, %202, %30
  %232 = load i32, i32* %8, align 4
  ret i32 %232
}

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #1

declare dso_local i32 @ssc_writex(i32, i32, i32) #1

declare dso_local i32 @ssc_readx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
