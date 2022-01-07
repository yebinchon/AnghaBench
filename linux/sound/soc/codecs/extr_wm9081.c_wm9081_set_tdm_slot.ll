; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32 }

@WM9081_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_SLOT_MASK = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm9081_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm9081_priv*, align 8
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
  %19 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm9081_priv* %19, %struct.wm9081_priv** %13, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %21 = load i32, i32* @WM9081_AUDIO_INTERFACE_1, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @WM9081_AIFDAC_TDM_SLOT_MASK, align 4
  %24 = load i32, i32* @WM9081_AIFDAC_TDM_MODE_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %14, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %70

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wm9081_priv*, %struct.wm9081_priv** %13, align 8
  %40 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @WM9081_AIFDAC_TDM_MODE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %62 [
    i32 1, label %52
    i32 2, label %53
    i32 4, label %56
    i32 8, label %59
  ]

52:                                               ; preds = %44
  br label %65

53:                                               ; preds = %44
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, 16
  store i32 %55, i32* %14, align 4
  br label %65

56:                                               ; preds = %44
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, 32
  store i32 %58, i32* %14, align 4
  br label %65

59:                                               ; preds = %44
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, 48
  store i32 %61, i32* %14, align 4
  br label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %59, %56, %53, %52
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %67 = load i32, i32* @WM9081_AUDIO_INTERFACE_1, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %68)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %62, %34
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
