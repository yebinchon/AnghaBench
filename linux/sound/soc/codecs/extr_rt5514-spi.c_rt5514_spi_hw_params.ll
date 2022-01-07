; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_dsp = type { i32, i64, %struct.snd_pcm_substream* }

@DRV_NAME = common dso_local global i32 0, align 4
@RT5514_IRQ_CTRL = common dso_local global i32 0, align 4
@RT5514_IRQ_STATUS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @rt5514_spi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_spi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5514_dsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.rt5514_dsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.rt5514_dsp* %17, %struct.rt5514_dsp** %7, align 8
  %18 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %7, align 8
  %19 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %23 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %22)
  %24 = call i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream* %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %7, align 8
  %27 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %26, i32 0, i32 2
  store %struct.snd_pcm_substream* %25, %struct.snd_pcm_substream** %27, align 8
  %28 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %7, align 8
  %29 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @RT5514_IRQ_CTRL, align 4
  %31 = bitcast [8 x i32]* %9 to i32*
  %32 = call i32 @rt5514_spi_burst_read(i32 %30, i32* %31, i32 32)
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = load i32, i32* @RT5514_IRQ_STATUS_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %7, align 8
  %40 = call i32 @rt5514_schedule_copy(%struct.rt5514_dsp* %39)
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %7, align 8
  %43 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.rt5514_dsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rt5514_spi_burst_read(i32, i32*, i32) #1

declare dso_local i32 @rt5514_schedule_copy(%struct.rt5514_dsp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
