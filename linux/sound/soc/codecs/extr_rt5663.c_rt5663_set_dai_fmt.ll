; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_MS_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_BP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5663_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5663_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@RT5663_I2S1_SDP = common dso_local global i32 0, align 4
@RT5663_I2S_MS_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_BP_MASK = common dso_local global i32 0, align 4
@RT5663_I2S_DF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5663_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  switch i32 %13, label %19 [
    i32 135, label %14
    i32 134, label %15
  ]

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @RT5663_I2S_MS_S, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %31 [
    i32 128, label %26
    i32 130, label %27
  ]

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @RT5663_I2S_BP_INV, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %51 [
    i32 131, label %38
    i32 129, label %39
    i32 133, label %43
    i32 132, label %47
  ]

38:                                               ; preds = %34
  br label %54

39:                                               ; preds = %34
  %40 = load i32, i32* @RT5663_I2S_DF_LEFT, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %54

43:                                               ; preds = %34
  %44 = load i32, i32* @RT5663_I2S_DF_PCM_A, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load i32, i32* @RT5663_I2S_DF_PCM_B, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %47, %43, %39, %38
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %56 = load i32, i32* @RT5663_I2S1_SDP, align 4
  %57 = load i32, i32* @RT5663_I2S_MS_MASK, align 4
  %58 = load i32, i32* @RT5663_I2S_BP_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RT5663_I2S_DF_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %51, %31, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
