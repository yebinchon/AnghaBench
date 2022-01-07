; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { i32, i32 }

@WM8993_AIFADC_TDM = common dso_local global i32 0, align 4
@WM8993_AIFDAC_TDM = common dso_local global i32 0, align 4
@WM8993_AIFADC_TDM_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8993_AIFDAC_TDM_CHAN = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8993_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8993_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.wm8993_priv* %20, %struct.wm8993_priv** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %25 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %53

26:                                               ; preds = %5
  %27 = load i32, i32* @WM8993_AIFADC_TDM, align 4
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @WM8993_AIFDAC_TDM, align 4
  %31 = load i32, i32* %15, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %39 [
    i32 3, label %34
    i32 12, label %35
  ]

34:                                               ; preds = %26
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* @WM8993_AIFADC_TDM_CHAN, align 4
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %75

42:                                               ; preds = %35, %34
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %49 [
    i32 3, label %44
    i32 12, label %45
  ]

44:                                               ; preds = %42
  br label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @WM8993_AIFDAC_TDM_CHAN, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %75

52:                                               ; preds = %45, %44
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %56 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 2
  %59 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %60 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %62 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %63 = load i32, i32* @WM8993_AIFADC_TDM, align 4
  %64 = load i32, i32* @WM8993_AIFADC_TDM_CHAN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %69 = load i32, i32* @WM8993_AUDIO_INTERFACE_2, align 4
  %70 = load i32, i32* @WM8993_AIFDAC_TDM, align 4
  %71 = load i32, i32* @WM8993_AIFDAC_TDM_CHAN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %72, i32 %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %53, %49, %39
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
