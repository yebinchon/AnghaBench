; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@NAU8810_CLKIO_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@NAU8810_AIFMT_I2S = common dso_local global i32 0, align 4
@NAU8810_AIFMT_LEFT = common dso_local global i32 0, align 4
@NAU8810_AIFMT_PCM_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@NAU8810_BCLKP_IB = common dso_local global i32 0, align 4
@NAU8810_FSP_IF = common dso_local global i32 0, align 4
@NAU8810_REG_IFACE = common dso_local global i32 0, align 4
@NAU8810_AIFMT_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_CLOCK = common dso_local global i32 0, align 4
@NAU8810_CLKIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @nau8810_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.nau8810*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.nau8810* %14, %struct.nau8810** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %23 [
    i32 137, label %18
    i32 136, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @NAU8810_CLKIO_MASTER, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %2
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %43 [
    i32 134, label %30
    i32 128, label %34
    i32 131, label %35
    i32 135, label %39
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @NAU8810_AIFMT_I2S, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %46

34:                                               ; preds = %26
  br label %46

35:                                               ; preds = %26
  %36 = load i32, i32* @NAU8810_AIFMT_LEFT, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* @NAU8810_AIFMT_PCM_A, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %46

43:                                               ; preds = %26
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %87

46:                                               ; preds = %39, %35, %34, %30
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %65 [
    i32 129, label %50
    i32 133, label %51
    i32 132, label %57
    i32 130, label %61
  ]

50:                                               ; preds = %46
  br label %68

51:                                               ; preds = %46
  %52 = load i32, i32* @NAU8810_BCLKP_IB, align 4
  %53 = load i32, i32* @NAU8810_FSP_IF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %68

57:                                               ; preds = %46
  %58 = load i32, i32* @NAU8810_BCLKP_IB, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %68

61:                                               ; preds = %46
  %62 = load i32, i32* @NAU8810_FSP_IF, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %46
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %87

68:                                               ; preds = %61, %57, %51, %50
  %69 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %70 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NAU8810_REG_IFACE, align 4
  %73 = load i32, i32* @NAU8810_AIFMT_MASK, align 4
  %74 = load i32, i32* @NAU8810_FSP_IF, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NAU8810_BCLKP_IB, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %77, i32 %78)
  %80 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %81 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %84 = load i32, i32* @NAU8810_CLKIO_MASK, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %68, %65, %43, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
