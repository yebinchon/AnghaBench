; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8985_priv = type { i32, i32 }

@WM8985_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8985_VMIDSEL_MASK = common dso_local global i32 0, align 4
@WM8985_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8985_OUT4_TO_ADC = common dso_local global i32 0, align 4
@WM8985_POBCTRL_MASK = common dso_local global i32 0, align 4
@WM8985_POBCTRL = common dso_local global i32 0, align 4
@WM8985_OUTPUT_CTRL0 = common dso_local global i32 0, align 4
@WM8985_TSDEN_MASK = common dso_local global i32 0, align 4
@WM8985_TSDEN = common dso_local global i32 0, align 4
@WM8985_TSOPCTRL_MASK = common dso_local global i32 0, align 4
@WM8985_TSOPCTRL = common dso_local global i32 0, align 4
@WM8985_BIASEN_MASK = common dso_local global i32 0, align 4
@WM8985_BIASEN = common dso_local global i32 0, align 4
@WM8985_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8985_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8985_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8985_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8985_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8985_priv* %9, %struct.wm8985_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %119 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %18
    i32 131, label %83
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %14 = load i32, i32* @WM8985_VMIDSEL_MASK, align 4
  %15 = load i32, i32* @WM8985_VMIDSEL_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %16)
  br label %119

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %19)
  %21 = icmp eq i32 %20, 131
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %24 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %28 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_enable(i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %22
  %41 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %42 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regcache_sync(i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = load i32, i32* @WM8985_OUT4_TO_ADC, align 4
  %47 = load i32, i32* @WM8985_POBCTRL_MASK, align 4
  %48 = load i32, i32* @WM8985_POBCTRL, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %51 = load i32, i32* @WM8985_OUTPUT_CTRL0, align 4
  %52 = load i32, i32* @WM8985_TSDEN_MASK, align 4
  %53 = load i32, i32* @WM8985_TSDEN, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %56 = load i32, i32* @WM8985_OUTPUT_CTRL0, align 4
  %57 = load i32, i32* @WM8985_TSOPCTRL_MASK, align 4
  %58 = load i32, i32* @WM8985_TSOPCTRL, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %61 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %62 = load i32, i32* @WM8985_BIASEN_MASK, align 4
  %63 = load i32, i32* @WM8985_BIASEN, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %66 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %67 = load i32, i32* @WM8985_VMIDSEL_MASK, align 4
  %68 = load i32, i32* @WM8985_VMIDSEL_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 %69)
  %71 = call i32 @msleep(i32 500)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %73 = load i32, i32* @WM8985_OUT4_TO_ADC, align 4
  %74 = load i32, i32* @WM8985_POBCTRL_MASK, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %40, %18
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %78 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %79 = load i32, i32* @WM8985_VMIDSEL_MASK, align 4
  %80 = load i32, i32* @WM8985_VMIDSEL_SHIFT, align 4
  %81 = shl i32 2, %80
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %81)
  br label %119

83:                                               ; preds = %2
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %85 = load i32, i32* @WM8985_OUTPUT_CTRL0, align 4
  %86 = load i32, i32* @WM8985_TSOPCTRL_MASK, align 4
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %89 = load i32, i32* @WM8985_OUTPUT_CTRL0, align 4
  %90 = load i32, i32* @WM8985_TSDEN_MASK, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %93 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %94 = load i32, i32* @WM8985_VMIDSEL_MASK, align 4
  %95 = load i32, i32* @WM8985_BIASEN_MASK, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %96, i32 0)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %99 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %100 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %98, i32 %99, i32 0)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %102 = load i32, i32* @WM8985_POWER_MANAGEMENT_2, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %101, i32 %102, i32 0)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %105 = load i32, i32* @WM8985_POWER_MANAGEMENT_3, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 0)
  %107 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %108 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @regcache_mark_dirty(i32 %109)
  %111 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %112 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ARRAY_SIZE(i32 %113)
  %115 = load %struct.wm8985_priv*, %struct.wm8985_priv** %7, align 8
  %116 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regulator_bulk_disable(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %2, %83, %76, %11
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %33
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
