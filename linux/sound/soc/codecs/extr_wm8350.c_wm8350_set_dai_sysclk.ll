; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@WM8350_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_MCLK_SEL = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8350_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@WM8350_CLOCK_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_MCLK_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8350_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.wm8350_data*, align 8
  %11 = alloca %struct.wm8350*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %9, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %17 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8350_data* %17, %struct.wm8350_data** %10, align 8
  %18 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %19 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %18, i32 0, i32 0
  %20 = load %struct.wm8350*, %struct.wm8350** %19, align 8
  store %struct.wm8350* %20, %struct.wm8350** %11, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %44 [
    i32 132, label %22
    i32 128, label %27
    i32 129, label %27
    i32 130, label %27
    i32 131, label %27
  ]

22:                                               ; preds = %4
  %23 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %24 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %25 = load i32, i32* @WM8350_MCLK_SEL, align 4
  %26 = call i32 @wm8350_clear_bits(%struct.wm8350* %23, i32 %24, i32 %25)
  br label %44

27:                                               ; preds = %4, %4, %4, %4
  %28 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %29 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %30 = load i32, i32* @WM8350_MCLK_SEL, align 4
  %31 = call i32 @wm8350_set_bits(%struct.wm8350* %28, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %33 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %34 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %32, i32 %33)
  %35 = load i32, i32* @WM8350_FLL_CLK_SRC_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %39 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %4, %27, %22
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %50 = load i32, i32* @WM8350_CLOCK_CONTROL_2, align 4
  %51 = load i32, i32* @WM8350_MCLK_DIR, align 4
  %52 = call i32 @wm8350_set_bits(%struct.wm8350* %49, i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %44
  %54 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %55 = load i32, i32* @WM8350_CLOCK_CONTROL_2, align 4
  %56 = load i32, i32* @WM8350_MCLK_DIR, align 4
  %57 = call i32 @wm8350_clear_bits(%struct.wm8350* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  ret i32 0
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
