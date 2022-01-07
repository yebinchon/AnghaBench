; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_memif_fs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_memif_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.mtk_base_afe = type { %struct.mtk_base_afe_memif* }
%struct.mtk_base_afe_memif = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AFE_PCM_NAME = common dso_local global i32 0, align 4
@MT8173_AFE_MEMIF_DAI = common dso_local global i64 0, align 8
@MT8173_AFE_MEMIF_MOD_DAI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @mt8173_memif_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_memif_fs(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.mtk_base_afe*, align 8
  %9 = alloca %struct.mtk_base_afe_memif*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load i32, i32* @AFE_PCM_NAME, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %14, i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.mtk_base_afe* %18, %struct.mtk_base_afe** %8, align 8
  %19 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %19, i32 0, i32 0
  %21 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %20, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %21, i64 %26
  store %struct.mtk_base_afe_memif* %27, %struct.mtk_base_afe_memif** %9, align 8
  %28 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %9, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MT8173_AFE_MEMIF_DAI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %9, align 8
  %37 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MT8173_AFE_MEMIF_MOD_DAI, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35, %2
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %48 [
    i32 8000, label %45
    i32 16000, label %46
    i32 32000, label %47
  ]

45:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %51

46:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %51

47:                                               ; preds = %43
  store i32 2, i32* %10, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %47, %46, %45
  br label %55

52:                                               ; preds = %35
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mt8173_afe_i2s_fs(i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mt8173_afe_i2s_fs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
