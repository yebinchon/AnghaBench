; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_dsp = type { i32, i32, i32* }

@DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @rt5514_spi_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_spi_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.rt5514_dsp*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  store %struct.snd_soc_pcm_runtime* %8, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load i32, i32* @DRV_NAME, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %9, i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = call %struct.rt5514_dsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5514_dsp* %13, %struct.rt5514_dsp** %5, align 8
  %14 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %5, align 8
  %15 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %5, align 8
  %18 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %5, align 8
  %20 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %5, align 8
  %23 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %22, i32 0, i32 0
  %24 = call i32 @cancel_delayed_work_sync(i32* %23)
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = call i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream* %25)
  ret i32 %26
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.rt5514_dsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
