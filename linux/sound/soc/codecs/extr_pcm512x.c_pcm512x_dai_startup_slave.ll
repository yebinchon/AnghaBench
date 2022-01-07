; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_dai_startup_slave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_dai_startup_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.device*, %struct.snd_soc_component* }
%struct.device = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No SCLK, using BCLK: %ld\0A\00", align 1
@PCM512x_ERROR_DETECT = common dso_local global i32 0, align 4
@PCM512x_IDCH = common dso_local global i32 0, align 4
@PCM512x_PLL_REF = common dso_local global i32 0, align 4
@PCM512x_SREF = common dso_local global i32 0, align 4
@PCM512x_SREF_BCK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@constraints_slave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pcm512x_dai_startup_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_dai_startup_slave(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.pcm512x_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.pcm512x_priv* %13, %struct.pcm512x_priv** %6, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %18 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %17, i32 0, i32 1
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %8, align 8
  %20 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %21 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %28 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  %31 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %8, align 8
  %33 = load i32, i32* @PCM512x_ERROR_DETECT, align 4
  %34 = load i32, i32* @PCM512x_IDCH, align 4
  %35 = load i32, i32* @PCM512x_IDCH, align 4
  %36 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %8, align 8
  %38 = load i32, i32* @PCM512x_PLL_REF, align 4
  %39 = load i32, i32* @PCM512x_SREF, align 4
  %40 = load i32, i32* @PCM512x_SREF_BCK, align 4
  %41 = call i32 @regmap_update_bits(%struct.regmap* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %25, %2
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %47 = call i32 @snd_pcm_hw_constraint_list(i32 %45, i32 0, i32 %46, i32* @constraints_slave)
  ret i32 %47
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
