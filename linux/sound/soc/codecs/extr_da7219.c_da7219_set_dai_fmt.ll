; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_WCLK_POL_INV = common dso_local global i32 0, align 4
@DA7219_DAI_CLK_POL_INV = common dso_local global i32 0, align 4
@DA7219_DAI_FORMAT_I2S = common dso_local global i32 0, align 4
@DA7219_DAI_FORMAT_LEFT_J = common dso_local global i32 0, align 4
@DA7219_DAI_FORMAT_RIGHT_J = common dso_local global i32 0, align 4
@DA7219_DAI_FORMAT_DSP = common dso_local global i32 0, align 4
@DA7219_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7219_DAI_CLK_POL_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_WCLK_POL_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_CTRL = common dso_local global i32 0, align 4
@DA7219_DAI_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @da7219_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da7219_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.da7219_priv* %14, %struct.da7219_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %24 [
    i32 137, label %18
    i32 136, label %21
  ]

18:                                               ; preds = %2
  %19 = load %struct.da7219_priv*, %struct.da7219_priv** %7, align 8
  %20 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.da7219_priv*, %struct.da7219_priv** %7, align 8
  %23 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %116

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %77 [
    i32 134, label %31
    i32 131, label %31
    i32 128, label %31
    i32 135, label %54
  ]

31:                                               ; preds = %27, %27, %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %50 [
    i32 129, label %35
    i32 130, label %36
    i32 132, label %40
    i32 133, label %44
  ]

35:                                               ; preds = %31
  br label %53

36:                                               ; preds = %31
  %37 = load i32, i32* @DA7219_DAI_WCLK_POL_INV, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %31
  %41 = load i32, i32* @DA7219_DAI_CLK_POL_INV, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %53

44:                                               ; preds = %31
  %45 = load i32, i32* @DA7219_DAI_WCLK_POL_INV, align 4
  %46 = load i32, i32* @DA7219_DAI_CLK_POL_INV, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %116

53:                                               ; preds = %44, %40, %36, %35
  br label %80

54:                                               ; preds = %27
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %73 [
    i32 129, label %58
    i32 130, label %62
    i32 132, label %68
    i32 133, label %69
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @DA7219_DAI_CLK_POL_INV, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load i32, i32* @DA7219_DAI_WCLK_POL_INV, align 4
  %64 = load i32, i32* @DA7219_DAI_CLK_POL_INV, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %76

68:                                               ; preds = %54
  br label %76

69:                                               ; preds = %54
  %70 = load i32, i32* @DA7219_DAI_WCLK_POL_INV, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %76

73:                                               ; preds = %54
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %116

76:                                               ; preds = %69, %68, %62, %58
  br label %80

77:                                               ; preds = %27
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %116

80:                                               ; preds = %76, %53
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %100 [
    i32 134, label %84
    i32 131, label %88
    i32 128, label %92
    i32 135, label %96
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* @DA7219_DAI_FORMAT_I2S, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %103

88:                                               ; preds = %80
  %89 = load i32, i32* @DA7219_DAI_FORMAT_LEFT_J, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %103

92:                                               ; preds = %80
  %93 = load i32, i32* @DA7219_DAI_FORMAT_RIGHT_J, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %103

96:                                               ; preds = %80
  %97 = load i32, i32* @DA7219_DAI_FORMAT_DSP, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %103

100:                                              ; preds = %80
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %116

103:                                              ; preds = %96, %92, %88, %84
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %105 = load i32, i32* @DA7219_DAI_CLK_MODE, align 4
  %106 = load i32, i32* @DA7219_DAI_CLK_POL_MASK, align 4
  %107 = load i32, i32* @DA7219_DAI_WCLK_POL_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %112 = load i32, i32* @DA7219_DAI_CTRL, align 4
  %113 = load i32, i32* @DA7219_DAI_FORMAT_MASK, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %103, %100, %77, %73, %50, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
