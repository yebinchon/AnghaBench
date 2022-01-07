; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9867_priv = type { i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@MAX9867_MASTER = common dso_local global i32 0, align 4
@MAX9867_IFC1B_48X = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@MAX9867_I2S_DLY = common dso_local global i32 0, align 4
@MAX9867_TDM_MODE = common dso_local global i32 0, align 4
@MAX9867_SDOUT_HIZ = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@MAX9867_WCI_MODE = common dso_local global i32 0, align 4
@MAX9867_BCI_MODE = common dso_local global i32 0, align 4
@MAX9867_IFC1A = common dso_local global i32 0, align 4
@MAX9867_IFC1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @max9867_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9867_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max9867_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.max9867_priv* %14, %struct.max9867_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %26 [
    i32 135, label %18
    i32 134, label %23
  ]

18:                                               ; preds = %2
  %19 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %20 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @MAX9867_MASTER, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MAX9867_IFC1B_48X, align 4
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %25 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %47 [
    i32 132, label %33
    i32 133, label %39
  ]

33:                                               ; preds = %29
  %34 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %35 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @MAX9867_I2S_DLY, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %41 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @MAX9867_TDM_MODE, align 4
  %43 = load i32, i32* @MAX9867_SDOUT_HIZ, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %85

50:                                               ; preds = %39, %33
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %69 [
    i32 128, label %54
    i32 131, label %55
    i32 130, label %61
    i32 129, label %65
  ]

54:                                               ; preds = %50
  br label %72

55:                                               ; preds = %50
  %56 = load i32, i32* @MAX9867_WCI_MODE, align 4
  %57 = load i32, i32* @MAX9867_BCI_MODE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %72

61:                                               ; preds = %50
  %62 = load i32, i32* @MAX9867_BCI_MODE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %72

65:                                               ; preds = %50
  %66 = load i32, i32* @MAX9867_WCI_MODE, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %72

69:                                               ; preds = %50
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %65, %61, %55, %54
  %73 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %74 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAX9867_IFC1A, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @regmap_write(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %80 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MAX9867_IFC1B, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %72, %69, %47, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
