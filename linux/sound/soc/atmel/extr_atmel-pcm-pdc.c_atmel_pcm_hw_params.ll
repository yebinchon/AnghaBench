; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { i64, i64, %struct.atmel_runtime_data* }
%struct.atmel_runtime_data = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@atmel_pcm_dma_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"atmel-pcm: hw_params: DMA for %s initialized (dma_bytes=%zu, period_size=%zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @atmel_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.atmel_runtime_data*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %12, align 8
  store %struct.atmel_runtime_data* %13, %struct.atmel_runtime_data** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %17, i32* %19)
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i64 @params_buffer_bytes(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = call %struct.TYPE_2__* @snd_soc_dai_get_dma_data(i32 %27, %struct.snd_pcm_substream* %28)
  %30 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %30, i32 0, i32 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load i32, i32* @atmel_pcm_dma_irq, align 4
  %33 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %52 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %51)
  %53 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %62, i32 %65)
  ret i32 0
}

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i64 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.TYPE_2__* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
