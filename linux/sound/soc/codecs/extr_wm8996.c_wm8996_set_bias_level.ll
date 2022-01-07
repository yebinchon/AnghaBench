; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WM8996_MICBIAS_1 = common dso_local global i32 0, align 4
@WM8996_MICB1_MODE = common dso_local global i32 0, align 4
@WM8996_MICBIAS_2 = common dso_local global i32 0, align 4
@WM8996_MICB2_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8996_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8996_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8996_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8996_priv* %9, %struct.wm8996_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %105 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %21
    i32 131, label %76
  ]

11:                                               ; preds = %2
  br label %105

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8996_MICBIAS_1, align 4
  %15 = load i32, i32* @WM8996_MICB1_MODE, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = load i32, i32* @WM8996_MICBIAS_2, align 4
  %19 = load i32, i32* @WM8996_MICB2_MODE, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 0)
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %22)
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_bulk_enable(i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %106

43:                                               ; preds = %25
  %44 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %45 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %51 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpio_set_value_cansleep(i32 %53, i32 1)
  %55 = call i32 @msleep(i32 5)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %58 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regcache_cache_only(i32 %59, i32 0)
  %61 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regcache_sync(i32 %63)
  br label %65

65:                                               ; preds = %56, %21
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %67 = load i32, i32* @WM8996_MICBIAS_1, align 4
  %68 = load i32, i32* @WM8996_MICB1_MODE, align 4
  %69 = load i32, i32* @WM8996_MICB1_MODE, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %72 = load i32, i32* @WM8996_MICBIAS_2, align 4
  %73 = load i32, i32* @WM8996_MICB2_MODE, align 4
  %74 = load i32, i32* @WM8996_MICB2_MODE, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  br label %105

76:                                               ; preds = %2
  %77 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %78 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @regcache_cache_only(i32 %79, i32 1)
  %81 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %82 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %88 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gpio_set_value_cansleep(i32 %90, i32 0)
  %92 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %93 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @regcache_cache_only(i32 %94, i32 1)
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %98 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ARRAY_SIZE(i32 %99)
  %101 = load %struct.wm8996_priv*, %struct.wm8996_priv** %6, align 8
  %102 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regulator_bulk_disable(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %2, %96, %65, %12, %11
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %36
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
