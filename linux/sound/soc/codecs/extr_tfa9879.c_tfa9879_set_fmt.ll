; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tfa9879_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@TFA9879_SCK_POL_NORMAL = common dso_local global i32 0, align 4
@TFA9879_SCK_POL_INVERSE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_I2S_24 = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_MSB_J_24 = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_LSB_J_24 = common dso_local global i32 0, align 4
@TFA9879_SERIAL_INTERFACE_1 = common dso_local global i32 0, align 4
@TFA9879_SCK_POL_MASK = common dso_local global i32 0, align 4
@TFA9879_SCK_POL_SHIFT = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_MASK = common dso_local global i32 0, align 4
@TFA9879_I2S_SET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tfa9879_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfa9879_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tfa9879_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.tfa9879_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tfa9879_priv* %14, %struct.tfa9879_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %19 [
    i32 133, label %18
  ]

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %30 [
    i32 129, label %26
    i32 131, label %28
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @TFA9879_SCK_POL_NORMAL, align 4
  store i32 %27, i32* %9, align 4
  br label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @TFA9879_SCK_POL_INVERSE, align 4
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %49 [
    i32 132, label %37
    i32 130, label %41
    i32 128, label %45
  ]

37:                                               ; preds = %33
  %38 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %7, align 8
  %39 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @TFA9879_I2S_SET_I2S_24, align 4
  store i32 %40, i32* %8, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %7, align 8
  %43 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @TFA9879_I2S_SET_MSB_J_24, align 4
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %7, align 8
  %47 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @TFA9879_I2S_SET_LSB_J_24, align 4
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %45, %41, %37
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = load i32, i32* @TFA9879_SERIAL_INTERFACE_1, align 4
  %55 = load i32, i32* @TFA9879_SCK_POL_MASK, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TFA9879_SCK_POL_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %61 = load i32, i32* @TFA9879_SERIAL_INTERFACE_1, align 4
  %62 = load i32, i32* @TFA9879_I2S_SET_MASK, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @TFA9879_I2S_SET_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %49, %30, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.tfa9879_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
