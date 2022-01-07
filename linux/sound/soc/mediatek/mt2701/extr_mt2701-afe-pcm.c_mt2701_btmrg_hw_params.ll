; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_btmrg_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_btmrg_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AFE_MRGIF_CON = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_I2S_MODE_MASK = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_I2S_MODE_32K = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_BT_FUNC_EN = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_BT_FUNC_RDY = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_MRG_USE = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_BT_WIDE_MODE_EN = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0 = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_DAIBT_EN = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_MRG_I2S_EN = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_MRG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @mt2701_btmrg_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_btmrg_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mtk_base_afe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.mtk_base_afe* %13, %struct.mtk_base_afe** %8, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_rate(%struct.snd_pcm_hw_params* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 8000
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 16000
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %18, %3
  %30 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AFE_MRGIF_CON, align 4
  %34 = load i32, i32* @AFE_MRGIF_CON_I2S_MODE_MASK, align 4
  %35 = load i32, i32* @AFE_MRGIF_CON_I2S_MODE_32K, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @AFE_DAIBT_CON0_BT_FUNC_EN, align 4
  %38 = load i32, i32* @AFE_DAIBT_CON0_BT_FUNC_RDY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AFE_DAIBT_CON0_MRG_USE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 16000
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load i32, i32* @AFE_DAIBT_CON0_BT_WIDE_MODE_EN, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %29
  %50 = load i32, i32* @AFE_DAIBT_CON0_BT_WIDE_MODE_EN, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %54 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AFE_DAIBT_CON0, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %61 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AFE_DAIBT_CON0, align 4
  %64 = load i32, i32* @AFE_DAIBT_CON0_DAIBT_EN, align 4
  %65 = load i32, i32* @AFE_DAIBT_CON0_DAIBT_EN, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %68 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AFE_MRGIF_CON, align 4
  %71 = load i32, i32* @AFE_MRGIF_CON_MRG_I2S_EN, align 4
  %72 = load i32, i32* @AFE_MRGIF_CON_MRG_I2S_EN, align 4
  %73 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %75 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AFE_MRGIF_CON, align 4
  %78 = load i32, i32* @AFE_MRGIF_CON_MRG_EN, align 4
  %79 = load i32, i32* @AFE_MRGIF_CON_MRG_EN, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %49, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
