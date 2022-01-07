; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7210_priv = type { i32 }

@DA7210_DAI_CFG1 = common dso_local global i32 0, align 4
@DA7210_DAI_CFG3 = common dso_local global i32 0, align 4
@DA7210_PLL = common dso_local global i32 0, align 4
@DA7210_PLL_EN = common dso_local global i32 0, align 4
@DA7210_PLL_DIV3 = common dso_local global i32 0, align 4
@DA7210_PLL_BYP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@DA7210_DAI_MODE_MASTER = common dso_local global i32 0, align 4
@DA7210_DAI_MODE_SLAVE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DA7210_DAI_FORMAT_I2SMODE = common dso_local global i32 0, align 4
@DA7210_DAI_FORMAT_LEFT_J = common dso_local global i32 0, align 4
@DA7210_DAI_FORMAT_RIGHT_J = common dso_local global i32 0, align 4
@DA7210_DAI_FLEN_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @da7210_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7210_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da7210_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.da7210_priv* %14, %struct.da7210_priv** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @DA7210_DAI_CFG1, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  %18 = and i32 127, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load i32, i32* @DA7210_DAI_CFG3, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  %22 = and i32 252, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = load i32, i32* @DA7210_PLL, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  %26 = load i32, i32* @DA7210_PLL_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %31 = load i32, i32* @DA7210_PLL_DIV3, align 4
  %32 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %30, i32 %31)
  %33 = load i32, i32* @DA7210_PLL_BYP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %29, %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %55 [
    i32 132, label %43
    i32 131, label %49
  ]

43:                                               ; preds = %39
  %44 = load %struct.da7210_priv*, %struct.da7210_priv** %7, align 8
  %45 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @DA7210_DAI_MODE_MASTER, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %58

49:                                               ; preds = %39
  %50 = load %struct.da7210_priv*, %struct.da7210_priv** %7, align 8
  %51 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @DA7210_DAI_MODE_SLAVE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %39
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %89

58:                                               ; preds = %49, %43
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %74 [
    i32 130, label %62
    i32 129, label %66
    i32 128, label %70
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @DA7210_DAI_FORMAT_I2SMODE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %77

66:                                               ; preds = %58
  %67 = load i32, i32* @DA7210_DAI_FORMAT_LEFT_J, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %77

70:                                               ; preds = %58
  %71 = load i32, i32* @DA7210_DAI_FORMAT_RIGHT_J, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %70, %66, %62
  %78 = load i32, i32* @DA7210_DAI_FLEN_64BIT, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %82 = load i32, i32* @DA7210_DAI_CFG1, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %86 = load i32, i32* @DA7210_DAI_CFG3, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %74, %55, %36
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
