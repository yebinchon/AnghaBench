; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_btmrg_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_btmrg_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { i64* }

@AFE_DAIBT_CON0 = common dso_local global i32 0, align 4
@AFE_DAIBT_CON0_DAIBT_EN = common dso_local global i32 0, align 4
@AFE_MRGIF_CON = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_MRG_EN = common dso_local global i32 0, align 4
@AFE_MRGIF_CON_MRG_I2S_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_btmrg_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2701_btmrg_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mt2701_afe_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.mtk_base_afe* %8, %struct.mtk_base_afe** %5, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %10, align 8
  store %struct.mt2701_afe_private* %11, %struct.mt2701_afe_private** %6, align 8
  %12 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %13 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %14, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %2
  %26 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AFE_DAIBT_CON0, align 4
  %30 = load i32, i32* @AFE_DAIBT_CON0_DAIBT_EN, align 4
  %31 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AFE_MRGIF_CON, align 4
  %36 = load i32, i32* @AFE_MRGIF_CON_MRG_EN, align 4
  %37 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %39 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AFE_MRGIF_CON, align 4
  %42 = load i32, i32* @AFE_MRGIF_CON_MRG_I2S_EN, align 4
  %43 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %45 = call i32 @mt2701_disable_btmrg_clk(%struct.mtk_base_afe* %44)
  br label %46

46:                                               ; preds = %25, %2
  %47 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %48 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mt2701_disable_btmrg_clk(%struct.mtk_base_afe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
