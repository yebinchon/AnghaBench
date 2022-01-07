; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4271_private = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS4271_MODE1_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid DAI format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CS4271_MODE1_DAC_DIF_LJ = common dso_local global i32 0, align 4
@CS4271_ADCCTL = common dso_local global i32 0, align 4
@CS4271_ADCCTL_ADC_DIF_MASK = common dso_local global i32 0, align 4
@CS4271_ADCCTL_ADC_DIF_LJ = common dso_local global i32 0, align 4
@CS4271_MODE1_DAC_DIF_I2S = common dso_local global i32 0, align 4
@CS4271_ADCCTL_ADC_DIF_I2S = common dso_local global i32 0, align 4
@CS4271_MODE1 = common dso_local global i32 0, align 4
@CS4271_MODE1_DAC_DIF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs4271_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4271_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs4271_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs4271_private* %14, %struct.cs4271_private** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %27 [
    i32 130, label %18
    i32 131, label %21
  ]

18:                                               ; preds = %2
  %19 = load %struct.cs4271_private*, %struct.cs4271_private** %7, align 8
  %20 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.cs4271_private*, %struct.cs4271_private** %7, align 8
  %23 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @CS4271_MODE1_MASTER, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %70 [
    i32 128, label %38
    i32 129, label %54
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @CS4271_MODE1_DAC_DIF_LJ, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.cs4271_private*, %struct.cs4271_private** %7, align 8
  %43 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CS4271_ADCCTL, align 4
  %46 = load i32, i32* @CS4271_ADCCTL_ADC_DIF_MASK, align 4
  %47 = load i32, i32* @CS4271_ADCCTL_ADC_DIF_LJ, align 4
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %92

53:                                               ; preds = %38
  br label %77

54:                                               ; preds = %34
  %55 = load i32, i32* @CS4271_MODE1_DAC_DIF_I2S, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.cs4271_private*, %struct.cs4271_private** %7, align 8
  %59 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS4271_ADCCTL, align 4
  %62 = load i32, i32* @CS4271_ADCCTL_ADC_DIF_MASK, align 4
  %63 = load i32, i32* @CS4271_ADCCTL_ADC_DIF_I2S, align 4
  %64 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %92

69:                                               ; preds = %54
  br label %77

70:                                               ; preds = %34
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %92

77:                                               ; preds = %69, %53
  %78 = load %struct.cs4271_private*, %struct.cs4271_private** %7, align 8
  %79 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CS4271_MODE1, align 4
  %82 = load i32, i32* @CS4271_MODE1_DAC_DIF_MASK, align 4
  %83 = load i32, i32* @CS4271_MODE1_MASTER, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %89, %70, %67, %51, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
