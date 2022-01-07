; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt1308_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT1308_I2S_DF_SEL_LEFT = common dso_local global i32 0, align 4
@RT1308_I2S_DF_SEL_PCM_A = common dso_local global i32 0, align 4
@RT1308_I2S_DF_SEL_PCM_B = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT1308_I2S_BCLK_INV = common dso_local global i32 0, align 4
@RT1308_I2S_SET_1 = common dso_local global i32 0, align 4
@RT1308_I2S_DF_SEL_MASK = common dso_local global i32 0, align 4
@RT1308_I2S_SET_2 = common dso_local global i32 0, align 4
@RT1308_I2S_BCLK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt1308_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1308_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt1308_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt1308_priv* %14, %struct.rt1308_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %21 [
    i32 134, label %18
  ]

18:                                               ; preds = %2
  %19 = load %struct.rt1308_priv*, %struct.rt1308_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %41 [
    i32 131, label %28
    i32 129, label %29
    i32 133, label %33
    i32 132, label %37
  ]

28:                                               ; preds = %24
  br label %44

29:                                               ; preds = %24
  %30 = load i32, i32* @RT1308_I2S_DF_SEL_LEFT, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %44

33:                                               ; preds = %24
  %34 = load i32, i32* @RT1308_I2S_DF_SEL_PCM_A, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @RT1308_I2S_DF_SEL_PCM_B, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %37, %33, %29, %28
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %53 [
    i32 128, label %48
    i32 130, label %49
  ]

48:                                               ; preds = %44
  br label %56

49:                                               ; preds = %44
  %50 = load i32, i32* @RT1308_I2S_BCLK_INV, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %82

56:                                               ; preds = %49, %48
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %71 [
    i32 135, label %60
  ]

60:                                               ; preds = %56
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = load i32, i32* @RT1308_I2S_SET_1, align 4
  %63 = load i32, i32* @RT1308_I2S_DF_SEL_MASK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = load i32, i32* @RT1308_I2S_SET_2, align 4
  %68 = load i32, i32* @RT1308_I2S_BCLK_MASK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  br label %81

71:                                               ; preds = %56
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %71, %53, %41, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
