; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8988_priv = type { i32 }

@WM8988_PWR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8988_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8988_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8988_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8988_priv* %8, %struct.wm8988_priv** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WM8988_PWR1, align 4
  %11 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %9, i32 %10)
  %12 = and i32 %11, -450
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %46 [
    i32 130, label %14
    i32 129, label %15
    i32 128, label %21
    i32 131, label %42
  ]

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @WM8988_PWR1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 192
  %20 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %16, i32 %17, i32 %19)
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %22)
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.wm8988_priv*, %struct.wm8988_priv** %5, align 8
  %27 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regcache_sync(i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @WM8988_PWR1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 449
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %33)
  %35 = call i32 @msleep(i32 100)
  br label %36

36:                                               ; preds = %25, %21
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @WM8988_PWR1, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, 321
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %37, i32 %38, i32 %40)
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @WM8988_PWR1, align 4
  %45 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %2, %42, %36, %15, %14
  ret i32 0
}

declare dso_local %struct.wm8988_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
