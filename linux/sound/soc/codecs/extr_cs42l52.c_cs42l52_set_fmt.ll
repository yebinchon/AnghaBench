; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l52.c_cs42l52_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l52.c_cs42l52_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l52_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_MASTER = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_SLAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_ADC_FMT_I2S = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_DAC_FMT_I2S = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_DAC_FMT_RIGHT_J = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_ADC_FMT_LEFT_J = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_DAC_FMT_LEFT_J = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_DSP_MODE_EN = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1_INV_SCLK = common dso_local global i32 0, align 4
@CS42L52_IFACE_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l52_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l52_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs42l52_private*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.cs42l52_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.cs42l52_private* %13, %struct.cs42l52_private** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %21 [
    i32 138, label %17
    i32 137, label %19
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @CS42L52_IFACE_CTL1_MASTER, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @CS42L52_IFACE_CTL1_SLAVE, align 4
  store i32 %20, i32* %8, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %49 [
    i32 134, label %28
    i32 128, label %34
    i32 131, label %38
    i32 136, label %44
    i32 135, label %48
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @CS42L52_IFACE_CTL1_ADC_FMT_I2S, align 4
  %30 = load i32, i32* @CS42L52_IFACE_CTL1_DAC_FMT_I2S, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %52

34:                                               ; preds = %24
  %35 = load i32, i32* @CS42L52_IFACE_CTL1_DAC_FMT_RIGHT_J, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %52

38:                                               ; preds = %24
  %39 = load i32, i32* @CS42L52_IFACE_CTL1_ADC_FMT_LEFT_J, align 4
  %40 = load i32, i32* @CS42L52_IFACE_CTL1_DAC_FMT_LEFT_J, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %52

44:                                               ; preds = %24
  %45 = load i32, i32* @CS42L52_IFACE_CTL1_DSP_MODE_EN, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %24
  br label %52

49:                                               ; preds = %24
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %81

52:                                               ; preds = %48, %44, %38, %34, %28
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %66 [
    i32 129, label %56
    i32 133, label %57
    i32 132, label %61
    i32 130, label %65
  ]

56:                                               ; preds = %52
  br label %69

57:                                               ; preds = %52
  %58 = load i32, i32* @CS42L52_IFACE_CTL1_INV_SCLK, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %69

61:                                               ; preds = %52
  %62 = load i32, i32* @CS42L52_IFACE_CTL1_INV_SCLK, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %69

65:                                               ; preds = %52
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %65, %61, %57, %56
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.cs42l52_private*, %struct.cs42l52_private** %7, align 8
  %72 = getelementptr inbounds %struct.cs42l52_private, %struct.cs42l52_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = load i32, i32* @CS42L52_IFACE_CTL1, align 4
  %76 = load %struct.cs42l52_private*, %struct.cs42l52_private** %7, align 8
  %77 = getelementptr inbounds %struct.cs42l52_private, %struct.cs42l52_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %74, i32 %75, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %69, %66, %49, %21
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.cs42l52_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
