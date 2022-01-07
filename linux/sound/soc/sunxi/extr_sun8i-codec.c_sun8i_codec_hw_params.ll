; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec.c_sun8i_codec_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec.c_sun8i_codec_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun8i_codec = type { i32 }

@SUN8I_AIF1CLK_CTRL = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16 = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV = common dso_local global i32 0, align 4
@SUN8I_SYS_SR_CTRL = common dso_local global i32 0, align 4
@SUN8I_SYS_SR_CTRL_AIF1_FS_MASK = common dso_local global i32 0, align 4
@SUN8I_SYS_SR_CTRL_AIF1_FS = common dso_local global i32 0, align 4
@SUN8I_SYS_SR_CTRL_AIF2_FS_MASK = common dso_local global i32 0, align 4
@SUN8I_SYS_SR_CTRL_AIF2_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sun8i_codec_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_codec_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.sun8i_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sun8i_codec* @snd_soc_component_get_drvdata(i32 %14)
  store %struct.sun8i_codec* %15, %struct.sun8i_codec** %8, align 8
  %16 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %17 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %20 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK, align 4
  %21 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16, align 4
  %22 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = call i32 @sun8i_codec_get_bclk_div(%struct.sun8i_codec* %23, i32 %25, i32 16)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %28 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %31 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_channels(%struct.snd_pcm_hw_params* %36)
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %39 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %38)
  %40 = call i32 @sun8i_codec_get_lrck_div(i32 %37, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %3
  %46 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %47 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %50 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %56 = call i32 @sun8i_codec_get_hw_rate(%struct.snd_pcm_hw_params* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %45
  %62 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %63 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SUN8I_SYS_SR_CTRL, align 4
  %66 = load i32, i32* @SUN8I_SYS_SR_CTRL_AIF1_FS_MASK, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SUN8I_SYS_SR_CTRL_AIF1_FS, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.sun8i_codec*, %struct.sun8i_codec** %8, align 8
  %72 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SUN8I_SYS_SR_CTRL, align 4
  %75 = load i32, i32* @SUN8I_SYS_SR_CTRL_AIF2_FS_MASK, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SUN8I_SYS_SR_CTRL_AIF2_FS, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %61, %59, %43
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.sun8i_codec* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sun8i_codec_get_bclk_div(%struct.sun8i_codec*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sun8i_codec_get_lrck_div(i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sun8i_codec_get_hw_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
