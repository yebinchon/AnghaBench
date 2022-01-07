; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8741_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WM8741_MODE_CONTROL_2 = common dso_local global i32 0, align 4
@WM8741_DIFF_MASK = common dso_local global i32 0, align 4
@WM8741_DIFF_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8741_DACLLSB_ATTENUATION = common dso_local global i32 0, align 4
@WM8741_UPDATELL = common dso_local global i32 0, align 4
@WM8741_DACLMSB_ATTENUATION = common dso_local global i32 0, align 4
@WM8741_UPDATELM = common dso_local global i32 0, align 4
@WM8741_DACRLSB_ATTENUATION = common dso_local global i32 0, align 4
@WM8741_UPDATERL = common dso_local global i32 0, align 4
@WM8741_DACRMSB_ATTENUATION = common dso_local global i32 0, align 4
@WM8741_UPDATERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8741_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8741_configure(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8741_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call %struct.wm8741_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8741_priv* %6, %struct.wm8741_priv** %4, align 8
  %7 = load %struct.wm8741_priv*, %struct.wm8741_priv** %4, align 8
  %8 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %22 [
    i32 129, label %11
    i32 128, label %11
    i32 131, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @WM8741_MODE_CONTROL_2, align 4
  %14 = load i32, i32* @WM8741_DIFF_MASK, align 4
  %15 = load %struct.wm8741_priv*, %struct.wm8741_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WM8741_DIFF_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %20)
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %11
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @WM8741_DACLLSB_ATTENUATION, align 4
  %28 = load i32, i32* @WM8741_UPDATELL, align 4
  %29 = load i32, i32* @WM8741_UPDATELL, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @WM8741_DACLMSB_ATTENUATION, align 4
  %33 = load i32, i32* @WM8741_UPDATELM, align 4
  %34 = load i32, i32* @WM8741_UPDATELM, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @WM8741_DACRLSB_ATTENUATION, align 4
  %38 = load i32, i32* @WM8741_UPDATERL, align 4
  %39 = load i32, i32* @WM8741_UPDATERL, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @WM8741_DACRMSB_ATTENUATION, align 4
  %43 = load i32, i32* @WM8741_UPDATERM, align 4
  %44 = load i32, i32* @WM8741_UPDATERM, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.wm8741_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
