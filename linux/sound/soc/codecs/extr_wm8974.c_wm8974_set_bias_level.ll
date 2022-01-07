; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8974_POWER1 = common dso_local global i32 0, align 4
@WM8974_POWER1_BIASEN = common dso_local global i32 0, align 4
@WM8974_POWER1_BUFIOEN = common dso_local global i32 0, align 4
@WM8974_POWER2 = common dso_local global i32 0, align 4
@WM8974_POWER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8974_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = load i32, i32* @WM8974_POWER1, align 4
  %8 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %6, i32 %7)
  %9 = and i32 %8, -4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %56 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %18
    i32 131, label %46
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @WM8974_POWER1, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %14, i32 %15, i32 %16)
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* @WM8974_POWER1_BIASEN, align 4
  %20 = load i32, i32* @WM8974_POWER1_BUFIOEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %24)
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_get_regmap(i32 %30, i32* null)
  %32 = call i32 @regcache_sync(i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @WM8974_POWER1, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 3
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 %36)
  %38 = call i32 @mdelay(i32 100)
  br label %39

39:                                               ; preds = %27, %18
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %5, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WM8974_POWER1, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 %44)
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @WM8974_POWER1, align 4
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 0)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @WM8974_POWER2, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 0)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM8974_POWER3, align 4
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %2, %46, %39, %11
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
