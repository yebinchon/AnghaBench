; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8962_priv = type { i32, i32 }

@WM8962_SYSCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8962_CLOCKING2 = common dso_local global i32 0, align 4
@WM8962_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8962_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8962_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8962_priv* %17, %struct.wm8962_priv** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %4
  %20 = load %struct.wm8962_priv*, %struct.wm8962_priv** %11, align 8
  %21 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.wm8962_priv*, %struct.wm8962_priv** %11, align 8
  %24 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %23, i32 0, i32 0
  store i32 129, i32* %24, align 4
  %25 = load i32, i32* @WM8962_SYSCLK_SRC_SHIFT, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %12, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %22, %19
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %32 = load i32, i32* @WM8962_CLOCKING2, align 4
  %33 = load i32, i32* @WM8962_SYSCLK_SRC_MASK, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.wm8962_priv*, %struct.wm8962_priv** %11, align 8
  %38 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
