; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ep93xx_i2s_info = type { i32, i32, i32 }

@EP93XX_I2S_WRDLEN_16 = common dso_local global i32 0, align 4
@EP93XX_I2S_WRDLEN_24 = common dso_local global i32 0, align 4
@EP93XX_I2S_WRDLEN_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EP93XX_I2S_TXWRDLEN = common dso_local global i32 0, align 4
@EP93XX_I2S_RXWRDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ep93xx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.ep93xx_i2s_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = call %struct.ep93xx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.ep93xx_i2s_info* %15, %struct.ep93xx_i2s_info** %8, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_format(%struct.snd_pcm_hw_params* %16)
  switch i32 %17, label %24 [
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @EP93XX_I2S_WRDLEN_16, align 4
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @EP93XX_I2S_WRDLEN_24, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @EP93XX_I2S_WRDLEN_32, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %22, %20, %18
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %35 = load i32, i32* @EP93XX_I2S_TXWRDLEN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %34, i32 %35, i32 %36)
  br label %43

38:                                               ; preds = %27
  %39 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %40 = load i32, i32* @EP93XX_I2S_RXWRDLEN, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %45 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_get_rate(i32 %46)
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = call i32 @params_rate(%struct.snd_pcm_hw_params* %48)
  %50 = udiv i32 %47, %49
  store i32 %50, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ugt i32 %51, 384
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 128, i32* %12, align 4
  br label %59

54:                                               ; preds = %43
  store i32 64, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %55, 192
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %61 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %64 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clk_get_rate(i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = udiv i32 %66, %67
  %69 = call i32 @clk_set_rate(i32 %62, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %4, align 4
  br label %95

74:                                               ; preds = %59
  %75 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %76 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %79 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_get_rate(i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = udiv i32 %81, %82
  %84 = call i32 @clk_set_rate(i32 %77, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %74
  %90 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %8, align 8
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ep93xx_i2s_enable(%struct.ep93xx_i2s_info* %90, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %87, %72, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.ep93xx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @ep93xx_i2s_enable(%struct.ep93xx_i2s_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
