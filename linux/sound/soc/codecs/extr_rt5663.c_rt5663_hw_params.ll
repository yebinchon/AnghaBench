; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"bclk is %dHz and sysclk is %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pre_div is %d for iis %d\0A\00", align 1
@RT5663_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5663_I2S_DL_16 = common dso_local global i32 0, align 4
@RT5663_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5663_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5663_I2S1_SDP = common dso_local global i32 0, align 4
@RT5663_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5663_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5663_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_PD1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5663_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5663_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5663_priv* %16, %struct.rt5663_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %20 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %28 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rl6231_get_clk_info(i32 %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %45 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %88

53:                                               ; preds = %3
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i32 @params_width(%struct.snd_pcm_hw_params* %62)
  switch i32 %63, label %72 [
    i32 8, label %64
    i32 16, label %66
    i32 20, label %68
    i32 24, label %70
  ]

64:                                               ; preds = %53
  %65 = load i32, i32* @RT5663_I2S_DL_8, align 4
  store i32 %65, i32* %10, align 4
  br label %75

66:                                               ; preds = %53
  %67 = load i32, i32* @RT5663_I2S_DL_16, align 4
  store i32 %67, i32* %10, align 4
  br label %75

68:                                               ; preds = %53
  %69 = load i32, i32* @RT5663_I2S_DL_20, align 4
  store i32 %69, i32* %10, align 4
  br label %75

70:                                               ; preds = %53
  %71 = load i32, i32* @RT5663_I2S_DL_24, align 4
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %53
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %88

75:                                               ; preds = %70, %68, %66, %64
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %77 = load i32, i32* @RT5663_I2S1_SDP, align 4
  %78 = load i32, i32* @RT5663_I2S_DL_MASK, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @RT5663_ADDA_CLK_1, align 4
  %83 = load i32, i32* @RT5663_I2S_PD1_MASK, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @RT5663_I2S_PD1_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %75, %72, %40
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
