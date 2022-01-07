; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@AK4671_PLL_MODE_SELECT1 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@AK4671_M_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AK4671_FORMAT_SELECT = common dso_local global i32 0, align 4
@AK4671_DIF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AK4671_DIF_I2S_MODE = common dso_local global i32 0, align 4
@AK4671_DIF_MSB_MODE = common dso_local global i32 0, align 4
@AK4671_DIF_DSP_MODE = common dso_local global i32 0, align 4
@AK4671_BCKP = common dso_local global i32 0, align 4
@AK4671_MSBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ak4671_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4671_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = load i32, i32* @AK4671_PLL_MODE_SELECT1, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %27 [
    i32 132, label %18
    i32 131, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @AK4671_M_S, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @AK4671_M_S, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %22, %18
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = load i32, i32* @AK4671_FORMAT_SELECT, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @AK4671_DIF, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %59 [
    i32 129, label %41
    i32 128, label %45
    i32 130, label %49
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* @AK4671_DIF_I2S_MODE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %62

45:                                               ; preds = %30
  %46 = load i32, i32* @AK4671_DIF_MSB_MODE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %62

49:                                               ; preds = %30
  %50 = load i32, i32* @AK4671_DIF_DSP_MODE, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @AK4671_BCKP, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @AK4671_MSBS, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %62

59:                                               ; preds = %30
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %49, %45, %41
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = load i32, i32* @AK4671_PLL_MODE_SELECT1, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %68 = load i32, i32* @AK4671_FORMAT_SELECT, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %59, %27
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
