; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_MASTER_MODE = common dso_local global i32 0, align 4
@CS42L42_ASP_MODE_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_SLAVE_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_POL_INV = common dso_local global i32 0, align 4
@CS42L42_ASP_LCPOL_IN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_SCPOL_IN_DAC_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_CLK_CFG = common dso_local global i32 0, align 4
@CS42L42_ASP_MODE_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_SCPOL_IN_DAC_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_LCPOL_IN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l42_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %26 [
    i32 135, label %14
    i32 134, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @CS42L42_ASP_MASTER_MODE, align 4
  %16 = load i32, i32* @CS42L42_ASP_MODE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @CS42L42_ASP_SLAVE_MODE, align 4
  %22 = load i32, i32* @CS42L42_ASP_MODE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %20, %14
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %34 [
    i32 133, label %33
    i32 130, label %33
  ]

33:                                               ; preds = %29, %29
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %65 [
    i32 128, label %41
    i32 129, label %42
    i32 131, label %48
    i32 132, label %54
  ]

41:                                               ; preds = %37
  br label %65

42:                                               ; preds = %37
  %43 = load i32, i32* @CS42L42_ASP_POL_INV, align 4
  %44 = load i32, i32* @CS42L42_ASP_LCPOL_IN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %65

48:                                               ; preds = %37
  %49 = load i32, i32* @CS42L42_ASP_POL_INV, align 4
  %50 = load i32, i32* @CS42L42_ASP_SCPOL_IN_DAC_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %65

54:                                               ; preds = %37
  %55 = load i32, i32* @CS42L42_ASP_POL_INV, align 4
  %56 = load i32, i32* @CS42L42_ASP_LCPOL_IN_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @CS42L42_ASP_POL_INV, align 4
  %61 = load i32, i32* @CS42L42_ASP_SCPOL_IN_DAC_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %37, %54, %48, %42, %41
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = load i32, i32* @CS42L42_ASP_CLK_CFG, align 4
  %68 = load i32, i32* @CS42L42_ASP_MODE_MASK, align 4
  %69 = load i32, i32* @CS42L42_ASP_SCPOL_IN_DAC_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CS42L42_ASP_LCPOL_IN_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %34, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
