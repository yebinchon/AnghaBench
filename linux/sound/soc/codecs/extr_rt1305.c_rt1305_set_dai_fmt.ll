; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt1305_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT1305_SEL_I2S_OUT_MODE_M = common dso_local global i32 0, align 4
@RT1305_SEL_I2S_OUT_MODE_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT1305_I2S_BCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT1305_I2S_DF_SEL_LEFT = common dso_local global i32 0, align 4
@RT1305_I2S_DF_SEL_PCM_A = common dso_local global i32 0, align 4
@RT1305_I2S_DF_SEL_PCM_B = common dso_local global i32 0, align 4
@RT1305_I2S_SET_1 = common dso_local global i32 0, align 4
@RT1305_SEL_I2S_OUT_MODE_MASK = common dso_local global i32 0, align 4
@RT1305_I2S_SET_2 = common dso_local global i32 0, align 4
@RT1305_I2S_DF_SEL_MASK = common dso_local global i32 0, align 4
@RT1305_I2S_BCLK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt1305_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1305_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt1305_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt1305_priv* %14, %struct.rt1305_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %30 [
    i32 135, label %18
    i32 134, label %24
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @RT1305_SEL_I2S_OUT_MODE_M, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rt1305_priv*, %struct.rt1305_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @RT1305_SEL_I2S_OUT_MODE_S, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.rt1305_priv*, %struct.rt1305_priv** %7, align 8
  %29 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %93

33:                                               ; preds = %24, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %42 [
    i32 128, label %37
    i32 130, label %38
  ]

37:                                               ; preds = %33
  br label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @RT1305_I2S_BCLK_INV, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %93

45:                                               ; preds = %38, %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %62 [
    i32 131, label %49
    i32 129, label %50
    i32 133, label %54
    i32 132, label %58
  ]

49:                                               ; preds = %45
  br label %65

50:                                               ; preds = %45
  %51 = load i32, i32* @RT1305_I2S_DF_SEL_LEFT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %65

54:                                               ; preds = %45
  %55 = load i32, i32* @RT1305_I2S_DF_SEL_PCM_A, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* @RT1305_I2S_DF_SEL_PCM_B, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %45
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %93

65:                                               ; preds = %58, %54, %50, %49
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %82 [
    i32 136, label %69
  ]

69:                                               ; preds = %65
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load i32, i32* @RT1305_I2S_SET_1, align 4
  %72 = load i32, i32* @RT1305_SEL_I2S_OUT_MODE_MASK, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %76 = load i32, i32* @RT1305_I2S_SET_2, align 4
  %77 = load i32, i32* @RT1305_I2S_DF_SEL_MASK, align 4
  %78 = load i32, i32* @RT1305_I2S_BCLK_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %79, i32 %80)
  br label %92

82:                                               ; preds = %65
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %82, %62, %42, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
