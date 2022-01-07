; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai2_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai2_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { %struct.max98088_cdata* }
%struct.max98088_cdata = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@M98088_REG_1A_DAI2_CLKCFG_HI = common dso_local global i32 0, align 4
@M98088_REG_1B_DAI2_CLKCFG_LO = common dso_local global i32 0, align 4
@M98088_DAI_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Clock mode unsupported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@M98088_DAI_DLY = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@M98088_DAI_WCI = common dso_local global i32 0, align 4
@M98088_DAI_BCI = common dso_local global i32 0, align 4
@M98088_REG_1C_DAI2_FORMAT = common dso_local global i32 0, align 4
@M98088_REG_1D_DAI2_CLOCK = common dso_local global i32 0, align 4
@M98088_DAI_BSEL64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @max98088_dai2_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_dai2_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98088_priv*, align 8
  %8 = alloca %struct.max98088_cdata*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.max98088_priv* %14, %struct.max98088_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.max98088_priv*, %struct.max98088_priv** %7, align 8
  %16 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %15, i32 0, i32 0
  %17 = load %struct.max98088_cdata*, %struct.max98088_cdata** %16, align 8
  %18 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %17, i64 1
  store %struct.max98088_cdata* %18, %struct.max98088_cdata** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.max98088_cdata*, %struct.max98088_cdata** %8, align 8
  %21 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.max98088_cdata*, %struct.max98088_cdata** %8, align 8
  %27 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %43 [
    i32 134, label %31
    i32 137, label %38
    i32 135, label %42
    i32 136, label %42
  ]

31:                                               ; preds = %24
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %33 = load i32, i32* @M98088_REG_1A_DAI2_CLKCFG_HI, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 128)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = load i32, i32* @M98088_REG_1B_DAI2_CLKCFG_LO, align 4
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 0)
  br label %50

38:                                               ; preds = %24
  %39 = load i32, i32* @M98088_DAI_MAS, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %50

42:                                               ; preds = %24, %24
  br label %43

43:                                               ; preds = %24, %42
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %101

50:                                               ; preds = %38, %31
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %59 [
    i32 133, label %54
    i32 130, label %58
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @M98088_DAI_DLY, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %62

58:                                               ; preds = %50
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %81 [
    i32 128, label %66
    i32 129, label %67
    i32 131, label %71
    i32 132, label %75
  ]

66:                                               ; preds = %62
  br label %84

67:                                               ; preds = %62
  %68 = load i32, i32* @M98088_DAI_WCI, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %84

71:                                               ; preds = %62
  %72 = load i32, i32* @M98088_DAI_BCI, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %84

75:                                               ; preds = %62
  %76 = load i32, i32* @M98088_DAI_BCI, align 4
  %77 = load i32, i32* @M98088_DAI_WCI, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %84

81:                                               ; preds = %62
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %101

84:                                               ; preds = %75, %71, %67, %66
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %86 = load i32, i32* @M98088_REG_1C_DAI2_FORMAT, align 4
  %87 = load i32, i32* @M98088_DAI_MAS, align 4
  %88 = load i32, i32* @M98088_DAI_DLY, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @M98088_DAI_BCI, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @M98088_DAI_WCI, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %97 = load i32, i32* @M98088_REG_1D_DAI2_CLOCK, align 4
  %98 = load i32, i32* @M98088_DAI_BSEL64, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %84, %2
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %81, %59, %43
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
