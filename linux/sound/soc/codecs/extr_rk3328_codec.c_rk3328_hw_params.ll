; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rk3328_codec_priv = type { i32 }

@DAC_VDL_16BITS = common dso_local global i32 0, align 4
@DAC_VDL_20BITS = common dso_local global i32 0, align 4
@DAC_VDL_24BITS = common dso_local global i32 0, align 4
@DAC_VDL_32BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAC_INIT_CTRL2 = common dso_local global i32 0, align 4
@DAC_VDL_MASK = common dso_local global i32 0, align 4
@DAC_WL_32BITS = common dso_local global i32 0, align 4
@DAC_RST_DIS = common dso_local global i32 0, align 4
@DAC_INIT_CTRL3 = common dso_local global i32 0, align 4
@DAC_WL_MASK = common dso_local global i32 0, align 4
@DAC_RST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rk3328_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.rk3328_codec_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32 %12)
  store %struct.rk3328_codec_priv* %13, %struct.rk3328_codec_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_format(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @DAC_VDL_16BITS, align 4
  store i32 %17, i32* %9, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32, i32* @DAC_VDL_20BITS, align 4
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @DAC_VDL_24BITS, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @DAC_VDL_32BITS, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %22, %20, %18, %16
  %28 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %8, align 8
  %29 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DAC_INIT_CTRL2, align 4
  %32 = load i32, i32* @DAC_VDL_MASK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @DAC_WL_32BITS, align 4
  %36 = load i32, i32* @DAC_RST_DIS, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %8, align 8
  %39 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DAC_INIT_CTRL3, align 4
  %42 = load i32, i32* @DAC_WL_MASK, align 4
  %43 = load i32, i32* @DAC_RST_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %27, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
