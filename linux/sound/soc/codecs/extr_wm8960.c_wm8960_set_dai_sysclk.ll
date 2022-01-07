; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, i32 }

@WM8960_CLOCK1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8960_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8960_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8960_priv* %16, %struct.wm8960_priv** %11, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %27 [
    i32 129, label %18
    i32 128, label %22
    i32 130, label %26
  ]

18:                                               ; preds = %4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %20 = load i32, i32* @WM8960_CLOCK1, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 1, i32 129)
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %24 = load i32, i32* @WM8960_CLOCK1, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 1, i32 128)
  br label %30

26:                                               ; preds = %4
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %26, %22, %18
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.wm8960_priv*, %struct.wm8960_priv** %11, align 8
  %33 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.wm8960_priv*, %struct.wm8960_priv** %11, align 8
  %36 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
