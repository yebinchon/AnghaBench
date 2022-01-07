; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_simple_fe_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_simple_fe_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mtk_base_afe_memif* }
%struct.mtk_base_afe_memif = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@MT2701_MEMIF_DLM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"memif is not available\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_simple_fe_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_simple_fe_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mtk_base_afe_memif*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.mtk_base_afe* %10, %struct.mtk_base_afe** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 1
  %20 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %19, align 8
  %21 = load i64, i64* @MT2701_MEMIF_DLM, align 8
  %22 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %20, i64 %21
  store %struct.mtk_base_afe_memif* %22, %struct.mtk_base_afe_memif** %7, align 8
  %23 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %24 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %38 = call i32 @mtk_afe_fe_startup(%struct.snd_pcm_substream* %36, %struct.snd_soc_dai* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mtk_afe_fe_startup(%struct.snd_pcm_substream*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
