; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EC_DAI_FMT_I2S = common dso_local global i32 0, align 4
@EC_DAI_FMT_RIGHT_J = common dso_local global i32 0, align 4
@EC_DAI_FMT_LEFT_J = common dso_local global i32 0, align 4
@EC_DAI_FMT_PCM_A = common dso_local global i32 0, align 4
@EC_DAI_FMT_PCM_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cros_ec_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %15 [
    i32 134, label %14
  ]

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %23 [
    i32 129, label %22
  ]

22:                                               ; preds = %18
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %40 [
    i32 131, label %30
    i32 128, label %32
    i32 130, label %34
    i32 133, label %36
    i32 132, label %38
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @EC_DAI_FMT_I2S, align 4
  store i32 %31, i32* %7, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @EC_DAI_FMT_RIGHT_J, align 4
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @EC_DAI_FMT_LEFT_J, align 4
  store i32 %35, i32* %7, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* @EC_DAI_FMT_PCM_A, align 4
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load i32, i32* @EC_DAI_FMT_PCM_B, align 4
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %38, %36, %34, %32, %30
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @set_i2s_config(%struct.snd_soc_component* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %23, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @set_i2s_config(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
