; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mtk_base_afe_memif* }
%struct.mtk_base_afe_memif = type { %struct.mtk_base_memif_data*, i64 }
%struct.mtk_base_memif_data = type { i32, i32 }

@MT2701_MEMIF_DL1 = common dso_local global i32 0, align 4
@MT2701_MEMIF_DL_SINGLE_NUM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_dlm_fe_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_dlm_fe_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mtk_base_afe_memif*, align 8
  %8 = alloca %struct.mtk_base_memif_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.mtk_base_afe* %11, %struct.mtk_base_afe** %6, align 8
  %12 = load i32, i32* @MT2701_MEMIF_DL1, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MT2701_MEMIF_DL_SINGLE_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 1
  %20 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %20, i64 %22
  store %struct.mtk_base_afe_memif* %23, %struct.mtk_base_afe_memif** %7, align 8
  %24 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %25 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* @MT2701_MEMIF_DL1, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %65, %35
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MT2701_MEMIF_DL_SINGLE_NUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %42, i32 0, i32 1
  %44 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %44, i64 %46
  %48 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %47, i32 0, i32 0
  %49 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %48, align 8
  store %struct.mtk_base_memif_data* %49, %struct.mtk_base_memif_data** %8, align 8
  %50 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %8, align 8
  %54 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %8, align 8
  %57 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.mtk_base_memif_data*, %struct.mtk_base_memif_data** %8, align 8
  %61 = getelementptr inbounds %struct.mtk_base_memif_data, %struct.mtk_base_memif_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 0, %62
  %64 = call i32 @regmap_update_bits(i32 %52, i32 %55, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %71 = call i32 @mtk_afe_fe_startup(%struct.snd_pcm_substream* %69, %struct.snd_soc_dai* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mtk_afe_fe_startup(%struct.snd_pcm_substream*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
