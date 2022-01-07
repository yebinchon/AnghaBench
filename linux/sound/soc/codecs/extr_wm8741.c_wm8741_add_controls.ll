; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8741_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wm8741_snd_controls_stereo = common dso_local global i32 0, align 4
@wm8741_snd_controls_mono_left = common dso_local global i32 0, align 4
@wm8741_snd_controls_mono_right = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8741_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8741_add_controls(%struct.snd_soc_component* %0) #0 {
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
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %11
    i32 131, label %17
    i32 130, label %23
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @wm8741_snd_controls_stereo, align 4
  %14 = load i32, i32* @wm8741_snd_controls_stereo, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %12, i32 %13, i32 %15)
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @wm8741_snd_controls_mono_left, align 4
  %20 = load i32, i32* @wm8741_snd_controls_mono_left, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %18, i32 %19, i32 %21)
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @wm8741_snd_controls_mono_right, align 4
  %26 = load i32, i32* @wm8741_snd_controls_mono_right, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %24, i32 %25, i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %23, %17, %11
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.wm8741_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
