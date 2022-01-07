; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8523_priv = type { i32, i32 }

@WM8523_PSCTRL1 = common dso_local global i32 0, align 4
@WM8523_SYS_ENA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8523_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8523_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8523_priv* %9, %struct.wm8523_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %68 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %17
    i32 131, label %54
  ]

11:                                               ; preds = %2
  br label %68

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8523_PSCTRL1, align 4
  %15 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 3)
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %18)
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_bulk_enable(i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %21
  %40 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regcache_sync(i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = load i32, i32* @WM8523_PSCTRL1, align 4
  %46 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 1)
  %48 = call i32 @msleep(i32 100)
  br label %49

49:                                               ; preds = %39, %17
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %51 = load i32, i32* @WM8523_PSCTRL1, align 4
  %52 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 2)
  br label %68

54:                                               ; preds = %2
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %56 = load i32, i32* @WM8523_PSCTRL1, align 4
  %57 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 0)
  %59 = call i32 @msleep(i32 100)
  %60 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %61 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %65 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regulator_bulk_disable(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %2, %54, %49, %12, %11
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
