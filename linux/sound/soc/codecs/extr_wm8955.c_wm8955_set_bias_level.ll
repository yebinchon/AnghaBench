; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8955_priv = type { i32, i32 }

@WM8955_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8955_VMIDSEL_MASK = common dso_local global i32 0, align 4
@WM8955_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@WM8955_ADDITIONAL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8955_VSEL_MASK = common dso_local global i32 0, align 4
@WM8955_VSEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8955_VREF = common dso_local global i32 0, align 4
@WM8955_VREF_SHIFT = common dso_local global i32 0, align 4
@WM8955_ADDITIONAL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8955_VROI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8955_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8955_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8955_priv* %9, %struct.wm8955_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %98 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %25
    i32 131, label %79
  ]

11:                                               ; preds = %2
  br label %98

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %15 = load i32, i32* @WM8955_VMIDSEL_MASK, align 4
  %16 = load i32, i32* @WM8955_VMIDSEL_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load i32, i32* @WM8955_ADDITIONAL_CONTROL_1, align 4
  %21 = load i32, i32* @WM8955_VSEL_MASK, align 4
  %22 = load i32, i32* @WM8955_VSEL_SHIFT, align 4
  %23 = shl i32 2, %22
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %23)
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %26)
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load %struct.wm8955_priv*, %struct.wm8955_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.wm8955_priv*, %struct.wm8955_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regulator_bulk_enable(i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %99

47:                                               ; preds = %29
  %48 = load %struct.wm8955_priv*, %struct.wm8955_priv** %6, align 8
  %49 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regcache_sync(i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %54 = load i32, i32* @WM8955_VREF, align 4
  %55 = load i32, i32* @WM8955_VMIDSEL_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WM8955_VREF, align 4
  %58 = load i32, i32* @WM8955_VREF_SHIFT, align 4
  %59 = shl i32 3, %58
  %60 = or i32 %57, %59
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %56, i32 %60)
  %62 = call i32 @msleep(i32 500)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %64 = load i32, i32* @WM8955_ADDITIONAL_CONTROL_3, align 4
  %65 = load i32, i32* @WM8955_VROI, align 4
  %66 = load i32, i32* @WM8955_VROI, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %47, %25
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %71 = load i32, i32* @WM8955_VMIDSEL_MASK, align 4
  %72 = load i32, i32* @WM8955_VMIDSEL_SHIFT, align 4
  %73 = shl i32 2, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %76 = load i32, i32* @WM8955_ADDITIONAL_CONTROL_1, align 4
  %77 = load i32, i32* @WM8955_VSEL_MASK, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 0)
  br label %98

79:                                               ; preds = %2
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %81 = load i32, i32* @WM8955_ADDITIONAL_CONTROL_3, align 4
  %82 = load i32, i32* @WM8955_VROI, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %85 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %86 = load i32, i32* @WM8955_VREF, align 4
  %87 = load i32, i32* @WM8955_VMIDSEL_MASK, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %88, i32 0)
  %90 = load %struct.wm8955_priv*, %struct.wm8955_priv** %6, align 8
  %91 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load %struct.wm8955_priv*, %struct.wm8955_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @regulator_bulk_disable(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %2, %79, %68, %12, %11
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %40
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
