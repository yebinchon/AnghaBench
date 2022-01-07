; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_MS_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT1011_TDM_INV_BCLK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_DF_LEFT = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_DF_PCM_A = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_DF_PCM_B = common dso_local global i32 0, align 4
@RT1011_TDM_TOTAL_SET = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_MS_MASK = common dso_local global i32 0, align 4
@RT1011_I2S_TDM_DF_MASK = common dso_local global i32 0, align 4
@RT1011_TDM1_SET_1 = common dso_local global i32 0, align 4
@RT1011_TDM_INV_BCLK_MASK = common dso_local global i32 0, align 4
@RT1011_TDM2_SET_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt1011_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %13)
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %16 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %24 [
    i32 134, label %20
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @RT1011_I2S_TDM_MS_S, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %36 [
    i32 128, label %31
    i32 130, label %32
  ]

31:                                               ; preds = %27
  br label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @RT1011_TDM_INV_BCLK, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %32, %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %56 [
    i32 131, label %43
    i32 129, label %44
    i32 133, label %48
    i32 132, label %52
  ]

43:                                               ; preds = %39
  br label %59

44:                                               ; preds = %39
  %45 = load i32, i32* @RT1011_I2S_TDM_DF_LEFT, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %59

48:                                               ; preds = %39
  %49 = load i32, i32* @RT1011_I2S_TDM_DF_PCM_A, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @RT1011_I2S_TDM_DF_PCM_B, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %39
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %52, %48, %44, %43
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %81 [
    i32 135, label %63
  ]

63:                                               ; preds = %59
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %65 = load i32, i32* @RT1011_TDM_TOTAL_SET, align 4
  %66 = load i32, i32* @RT1011_I2S_TDM_MS_MASK, align 4
  %67 = load i32, i32* @RT1011_I2S_TDM_DF_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %72 = load i32, i32* @RT1011_TDM1_SET_1, align 4
  %73 = load i32, i32* @RT1011_TDM_INV_BCLK_MASK, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %77 = load i32, i32* @RT1011_TDM2_SET_1, align 4
  %78 = load i32, i32* @RT1011_TDM_INV_BCLK_MASK, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  br label %91

81:                                               ; preds = %59
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %81, %63
  %92 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %93 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %92)
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
