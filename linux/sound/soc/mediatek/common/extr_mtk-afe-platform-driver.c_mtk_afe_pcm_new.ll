; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-platform-driver.c_mtk_afe_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-platform-driver.c_mtk_afe_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm* }
%struct.snd_pcm = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AFE_PCM_NAME = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_afe_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  store %struct.snd_pcm* %9, %struct.snd_pcm** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %11 = load i32, i32* @AFE_PCM_NAME, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %10, i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.mtk_base_afe* %14, %struct.mtk_base_afe** %6, align 8
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %21 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %22 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %20, i32 %21, i32 %24, i64 %25, i64 %26)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
