; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_wl1273_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_wl1273_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wl1273_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_IB_NF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1273_get_format(%struct.snd_soc_component* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wl1273_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %8 = icmp eq %struct.snd_soc_component* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %9
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %17 = call %struct.wl1273_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wl1273_priv* %17, %struct.wl1273_priv** %6, align 8
  %18 = load %struct.wl1273_priv*, %struct.wl1273_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 129, label %21
    i32 128, label %21
    i32 130, label %28
  ]

21:                                               ; preds = %15, %15
  %22 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %38

28:                                               ; preds = %15
  %29 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_IB_NF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %15
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %28, %21
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.wl1273_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
