; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_base_memif_data* }
%struct.mtk_base_memif_data = type { i32, i32 }

@MT2701_MEMIF_DL1 = common dso_local global i32 0, align 4
@MT2701_MEMIF_DL_SINGLE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_dlm_fe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2701_dlm_fe_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mtk_base_memif_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.mtk_base_afe* %9, %struct.mtk_base_afe** %5, align 8
  %10 = load i32, i32* @MT2701_MEMIF_DL1, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MT2701_MEMIF_DL_SINGLE_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %22, align 8
  store %struct.mtk_base_memif_data* %23, %struct.mtk_base_memif_data** %6, align 8
  %24 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %6, align 8
  %28 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @regmap_update_bits(i32 %26, i32 %29, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  call void @mtk_afe_fe_shutdown(%struct.snd_pcm_substream* %43, %struct.snd_soc_dai* %44)
  ret void
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local void @mtk_afe_fe_shutdown(%struct.snd_pcm_substream*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
