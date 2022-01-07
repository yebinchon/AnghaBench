; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SGTL5000_I2S_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SGTL5000_I2S_MODE_PCM = common dso_local global i32 0, align 4
@SGTL5000_I2S_MODE_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_I2S_LRALIGN = common dso_local global i32 0, align 4
@SGTL5000_I2S_MODE_I2S_LJ = common dso_local global i32 0, align 4
@SGTL5000_I2S_MODE_RJ = common dso_local global i32 0, align 4
@SGTL5000_I2S_LRPOL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SGTL5000_I2S_SCLK_INV = common dso_local global i32 0, align 4
@SGTL5000_CHIP_I2S_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @sgtl5000_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sgtl5000_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.sgtl5000_priv* %13, %struct.sgtl5000_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %15 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %26 [
    i32 135, label %19
    i32 136, label %20
  ]

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @SGTL5000_I2S_MASTER, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %25 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %97

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %72 [
    i32 134, label %33
    i32 133, label %39
    i32 132, label %48
    i32 128, label %54
    i32 130, label %63
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @SGTL5000_I2S_MODE_PCM, align 4
  %35 = load i32, i32* @SGTL5000_I2S_MODE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %75

39:                                               ; preds = %29
  %40 = load i32, i32* @SGTL5000_I2S_MODE_PCM, align 4
  %41 = load i32, i32* @SGTL5000_I2S_MODE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @SGTL5000_I2S_LRALIGN, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %75

48:                                               ; preds = %29
  %49 = load i32, i32* @SGTL5000_I2S_MODE_I2S_LJ, align 4
  %50 = load i32, i32* @SGTL5000_I2S_MODE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %75

54:                                               ; preds = %29
  %55 = load i32, i32* @SGTL5000_I2S_MODE_RJ, align 4
  %56 = load i32, i32* @SGTL5000_I2S_MODE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @SGTL5000_I2S_LRPOL, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %75

63:                                               ; preds = %29
  %64 = load i32, i32* @SGTL5000_I2S_MODE_I2S_LJ, align 4
  %65 = load i32, i32* @SGTL5000_I2S_MODE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @SGTL5000_I2S_LRALIGN, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %75

72:                                               ; preds = %29
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %97

75:                                               ; preds = %63, %54, %48, %39, %33
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %80 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %89 [
    i32 129, label %84
    i32 131, label %85
  ]

84:                                               ; preds = %75
  br label %92

85:                                               ; preds = %75
  %86 = load i32, i32* @SGTL5000_I2S_SCLK_INV, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %92

89:                                               ; preds = %75
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %85, %84
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %94 = load i32, i32* @SGTL5000_CHIP_I2S_CTRL, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %93, i32 %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %89, %72, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
