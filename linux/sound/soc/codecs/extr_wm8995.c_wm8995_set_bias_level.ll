; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@WM8995_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8995_BG_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_BG_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8995_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8995_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8995_priv* %9, %struct.wm8995_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %63 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %12
    i32 131, label %50
  ]

11:                                               ; preds = %2, %2
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %13)
  %15 = icmp eq i32 %14, 131
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %18 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_bulk_enable(i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %16
  %30 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regcache_sync(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %29
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = load i32, i32* @WM8995_POWER_MANAGEMENT_1, align 4
  %46 = load i32, i32* @WM8995_BG_ENA_MASK, align 4
  %47 = load i32, i32* @WM8995_BG_ENA, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %12
  br label %63

50:                                               ; preds = %2
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %52 = load i32, i32* @WM8995_POWER_MANAGEMENT_1, align 4
  %53 = load i32, i32* @WM8995_BG_ENA_MASK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %56 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.wm8995_priv*, %struct.wm8995_priv** %6, align 8
  %60 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_bulk_disable(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %2, %50, %49, %11
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %36, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
