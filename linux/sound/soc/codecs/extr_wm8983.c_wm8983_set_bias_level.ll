; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8983_priv = type { i32 }

@WM8983_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8983_VMIDSEL_MASK = common dso_local global i32 0, align 4
@WM8983_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@WM8983_OUT4_TO_ADC = common dso_local global i32 0, align 4
@WM8983_POBCTRL_MASK = common dso_local global i32 0, align 4
@WM8983_DELEN_MASK = common dso_local global i32 0, align 4
@WM8983_POBCTRL = common dso_local global i32 0, align 4
@WM8983_DELEN = common dso_local global i32 0, align 4
@WM8983_OUTPUT_CTRL = common dso_local global i32 0, align 4
@WM8983_TSDEN_MASK = common dso_local global i32 0, align 4
@WM8983_TSDEN = common dso_local global i32 0, align 4
@WM8983_BIASEN_MASK = common dso_local global i32 0, align 4
@WM8983_BIASEN = common dso_local global i32 0, align 4
@WM8983_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8983_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8983_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8983_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8983_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8983_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8983_priv* %9, %struct.wm8983_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %97 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %18
    i32 131, label %76
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %14 = load i32, i32* @WM8983_VMIDSEL_MASK, align 4
  %15 = load i32, i32* @WM8983_VMIDSEL_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %16)
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %19)
  %21 = icmp eq i32 %20, 131
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load %struct.wm8983_priv*, %struct.wm8983_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wm8983_priv, %struct.wm8983_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcache_sync(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %22
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %38 = load i32, i32* @WM8983_OUT4_TO_ADC, align 4
  %39 = load i32, i32* @WM8983_POBCTRL_MASK, align 4
  %40 = load i32, i32* @WM8983_DELEN_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @WM8983_POBCTRL, align 4
  %43 = load i32, i32* @WM8983_DELEN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %47 = load i32, i32* @WM8983_OUTPUT_CTRL, align 4
  %48 = load i32, i32* @WM8983_TSDEN_MASK, align 4
  %49 = load i32, i32* @WM8983_TSDEN, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %52 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %53 = load i32, i32* @WM8983_BIASEN_MASK, align 4
  %54 = load i32, i32* @WM8983_BIASEN, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %57 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %58 = load i32, i32* @WM8983_VMIDSEL_MASK, align 4
  %59 = load i32, i32* @WM8983_VMIDSEL_SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 %60)
  %62 = call i32 @msleep(i32 250)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %64 = load i32, i32* @WM8983_OUT4_TO_ADC, align 4
  %65 = load i32, i32* @WM8983_POBCTRL_MASK, align 4
  %66 = load i32, i32* @WM8983_DELEN_MASK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %36, %18
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %71 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %72 = load i32, i32* @WM8983_VMIDSEL_MASK, align 4
  %73 = load i32, i32* @WM8983_VMIDSEL_SHIFT, align 4
  %74 = shl i32 2, %73
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %74)
  br label %97

76:                                               ; preds = %2
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %78 = load i32, i32* @WM8983_OUTPUT_CTRL, align 4
  %79 = load i32, i32* @WM8983_TSDEN_MASK, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %82 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %83 = load i32, i32* @WM8983_VMIDSEL_MASK, align 4
  %84 = load i32, i32* @WM8983_BIASEN_MASK, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %85, i32 0)
  %87 = call i32 @msleep(i32 100)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %89 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %92 = load i32, i32* @WM8983_POWER_MANAGEMENT_2, align 4
  %93 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 0)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %95 = load i32, i32* @WM8983_POWER_MANAGEMENT_3, align 4
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %2, %76, %69, %11
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.wm8983_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
