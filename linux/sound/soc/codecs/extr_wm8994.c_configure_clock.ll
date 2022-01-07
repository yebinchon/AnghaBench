; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8994_priv = type { i64* }

@WM8994_SYSCLK_SRC = common dso_local global i32 0, align 4
@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_clock(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8994_priv* %11, %struct.wm8994_priv** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call i32 @configure_aif_clock(%struct.snd_soc_component* %12, i32 0)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call i32 @configure_aif_clock(%struct.snd_soc_component* %14, i32 1)
  %16 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %17 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %28)
  store i32 0, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %32 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %37 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @WM8994_SYSCLK_SRC, align 4
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %48 = load i32, i32* @WM8994_SYSCLK_SRC, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %55 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %54)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %27
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @configure_aif_clock(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8958_micd_set_rate(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
