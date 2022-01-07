; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3060_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported DAI polarity: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unsupported DAI master mode: 0x%x\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@PCM3060_REG_FMT_I2S = common dso_local global i32 0, align 4
@PCM3060_REG_FMT_RJ = common dso_local global i32 0, align 4
@PCM3060_REG_FMT_LJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unsupported DAI format: 0x%x\0A\00", align 1
@PCM3060_DAI_ID_DAC = common dso_local global i64 0, align 8
@PCM3060_REG67 = common dso_local global i32 0, align 4
@PCM3060_REG72 = common dso_local global i32 0, align 4
@PCM3060_REG_MASK_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pcm3060_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3060_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.pcm3060_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.pcm3060_priv* %14, %struct.pcm3060_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %94

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %50 [
    i32 132, label %32
    i32 131, label %41
  ]

32:                                               ; preds = %28
  %33 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %7, align 8
  %34 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %58

41:                                               ; preds = %28
  %42 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %7, align 8
  %43 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %58

50:                                               ; preds = %28
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %94

58:                                               ; preds = %41, %32
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %68 [
    i32 130, label %62
    i32 128, label %64
    i32 129, label %66
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @PCM3060_REG_FMT_I2S, align 4
  store i32 %63, i32* %9, align 4
  br label %76

64:                                               ; preds = %58
  %65 = load i32, i32* @PCM3060_REG_FMT_RJ, align 4
  store i32 %65, i32* %9, align 4
  br label %76

66:                                               ; preds = %58
  %67 = load i32, i32* @PCM3060_REG_FMT_LJ, align 4
  store i32 %67, i32* %9, align 4
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %94

76:                                               ; preds = %66, %64, %62
  %77 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCM3060_DAI_ID_DAC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @PCM3060_REG67, align 4
  store i32 %83, i32* %8, align 4
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @PCM3060_REG72, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %7, align 8
  %88 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @PCM3060_REG_MASK_FMT, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %68, %50, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
