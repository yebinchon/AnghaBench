; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i32 }

@WM8904_AIFADC_TDM = common dso_local global i32 0, align 4
@WM8904_AIFDAC_TDM = common dso_local global i32 0, align 4
@WM8904_AIFADC_TDM_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8904_AIFDAC_TDM_CHAN = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8904_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8904_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %19 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8904_priv* %19, %struct.wm8904_priv** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %49

23:                                               ; preds = %5
  %24 = load i32, i32* @WM8904_AIFADC_TDM, align 4
  %25 = load i32, i32* @WM8904_AIFDAC_TDM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %14, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %35 [
    i32 3, label %30
    i32 12, label %31
  ]

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @WM8904_AIFADC_TDM_CHAN, align 4
  %33 = load i32, i32* %14, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %14, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %68

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %45 [
    i32 3, label %40
    i32 12, label %41
  ]

40:                                               ; preds = %38
  br label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @WM8904_AIFDAC_TDM_CHAN, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %68

48:                                               ; preds = %41, %40
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.wm8904_priv*, %struct.wm8904_priv** %13, align 8
  %52 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 2
  %55 = load %struct.wm8904_priv*, %struct.wm8904_priv** %13, align 8
  %56 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %58 = load i32, i32* @WM8904_AUDIO_INTERFACE_1, align 4
  %59 = load i32, i32* @WM8904_AIFADC_TDM, align 4
  %60 = load i32, i32* @WM8904_AIFADC_TDM_CHAN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WM8904_AIFDAC_TDM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WM8904_AIFDAC_TDM_CHAN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %65, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %49, %45, %35
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
