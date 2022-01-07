; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8974_GPIO = common dso_local global i32 0, align 4
@WM8974_CLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8974_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %47 [
    i32 128, label %14
    i32 129, label %25
    i32 130, label %36
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @WM8974_GPIO, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  %18 = and i32 %17, 463
  store i32 %18, i32* %9, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = load i32, i32* @WM8974_GPIO, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %19, i32 %20, i32 %23)
  br label %50

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @WM8974_CLOCK, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  %29 = and i32 %28, 287
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* @WM8974_CLOCK, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %34)
  br label %50

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = load i32, i32* @WM8974_CLOCK, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  %40 = and i32 %39, 483
  store i32 %40, i32* %9, align 4
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @WM8974_CLOCK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 %45)
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %36, %25, %14
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
