; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai1_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_dai1_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { i64, %struct.max98088_cdata* }
%struct.max98088_cdata = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@M98088_REG_12_DAI1_CLKCFG_HI = common dso_local global i32 0, align 4
@M98088_REG_13_DAI1_CLKCFG_LO = common dso_local global i32 0, align 4
@M98088_DAI_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Clock mode unsupported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@M98088_DAI_DLY = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@M98088_DAI_WCI = common dso_local global i32 0, align 4
@M98088_DAI_BCI = common dso_local global i32 0, align 4
@M98088_REG_14_DAI1_FORMAT = common dso_local global i32 0, align 4
@M98088_DAI_BSEL64 = common dso_local global i32 0, align 4
@M98088_DAI_OSR64 = common dso_local global i32 0, align 4
@M98088_REG_15_DAI1_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @max98088_dai1_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_dai1_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98088_priv*, align 8
  %8 = alloca %struct.max98088_cdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.max98088_priv* %15, %struct.max98088_priv** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.max98088_priv*, %struct.max98088_priv** %7, align 8
  %17 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %16, i32 0, i32 1
  %18 = load %struct.max98088_cdata*, %struct.max98088_cdata** %17, align 8
  %19 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %18, i64 0
  store %struct.max98088_cdata* %19, %struct.max98088_cdata** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.max98088_cdata*, %struct.max98088_cdata** %8, align 8
  %22 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %111

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.max98088_cdata*, %struct.max98088_cdata** %8, align 8
  %28 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %44 [
    i32 134, label %32
    i32 137, label %39
    i32 135, label %43
    i32 136, label %43
  ]

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @M98088_REG_12_DAI1_CLKCFG_HI, align 4
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 128)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %37 = load i32, i32* @M98088_REG_13_DAI1_CLKCFG_LO, align 4
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 0)
  br label %51

39:                                               ; preds = %25
  %40 = load i32, i32* @M98088_DAI_MAS, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %51

43:                                               ; preds = %25, %25
  br label %44

44:                                               ; preds = %25, %43
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %112

51:                                               ; preds = %39, %32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %60 [
    i32 133, label %55
    i32 130, label %59
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* @M98088_DAI_DLY, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %63

59:                                               ; preds = %51
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %112

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %82 [
    i32 128, label %67
    i32 129, label %68
    i32 131, label %72
    i32 132, label %76
  ]

67:                                               ; preds = %63
  br label %85

68:                                               ; preds = %63
  %69 = load i32, i32* @M98088_DAI_WCI, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %85

72:                                               ; preds = %63
  %73 = load i32, i32* @M98088_DAI_BCI, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %85

76:                                               ; preds = %63
  %77 = load i32, i32* @M98088_DAI_BCI, align 4
  %78 = load i32, i32* @M98088_DAI_WCI, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %85

82:                                               ; preds = %63
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %112

85:                                               ; preds = %76, %72, %68, %67
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %87 = load i32, i32* @M98088_REG_14_DAI1_FORMAT, align 4
  %88 = load i32, i32* @M98088_DAI_MAS, align 4
  %89 = load i32, i32* @M98088_DAI_DLY, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @M98088_DAI_BCI, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @M98088_DAI_WCI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %94, i32 %95)
  %97 = load i32, i32* @M98088_DAI_BSEL64, align 4
  store i32 %97, i32* %9, align 4
  %98 = load %struct.max98088_priv*, %struct.max98088_priv** %7, align 8
  %99 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load i32, i32* @M98088_DAI_OSR64, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %85
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %108 = load i32, i32* @M98088_REG_15_DAI1_CLOCK, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %2
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %82, %60, %44
  %113 = load i32, i32* %3, align 4
  ret i32 %113
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
