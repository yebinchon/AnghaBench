; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8737_priv = type { i32, i32 }

@WM8737_MISC_BIAS_CONTROL = common dso_local global i32 0, align 4
@WM8737_VMIDSEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8737_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@WM8737_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@WM8737_VMID_MASK = common dso_local global i32 0, align 4
@WM8737_VREF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8737_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8737_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8737_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8737_priv* %9, %struct.wm8737_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %82 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %17
    i32 131, label %67
  ]

11:                                               ; preds = %2
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8737_MISC_BIAS_CONTROL, align 4
  %15 = load i32, i32* @WM8737_VMIDSEL_MASK, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %18)
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load %struct.wm8737_priv*, %struct.wm8737_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load %struct.wm8737_priv*, %struct.wm8737_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %26, i32 0, i32 0
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
  br label %83

39:                                               ; preds = %21
  %40 = load %struct.wm8737_priv*, %struct.wm8737_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regcache_sync(i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = load i32, i32* @WM8737_MISC_BIAS_CONTROL, align 4
  %46 = load i32, i32* @WM8737_VMIDSEL_MASK, align 4
  %47 = load i32, i32* @WM8737_VMIDSEL_SHIFT, align 4
  %48 = shl i32 2, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %51 = load i32, i32* @WM8737_POWER_MANAGEMENT, align 4
  %52 = load i32, i32* @WM8737_VMID_MASK, align 4
  %53 = load i32, i32* @WM8737_VREF_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WM8737_VMID_MASK, align 4
  %56 = load i32, i32* @WM8737_VREF_MASK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %54, i32 %57)
  %59 = call i32 @msleep(i32 500)
  br label %60

60:                                               ; preds = %39, %17
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %62 = load i32, i32* @WM8737_MISC_BIAS_CONTROL, align 4
  %63 = load i32, i32* @WM8737_VMIDSEL_MASK, align 4
  %64 = load i32, i32* @WM8737_VMIDSEL_SHIFT, align 4
  %65 = shl i32 1, %64
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %65)
  br label %82

67:                                               ; preds = %2
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %69 = load i32, i32* @WM8737_POWER_MANAGEMENT, align 4
  %70 = load i32, i32* @WM8737_VMID_MASK, align 4
  %71 = load i32, i32* @WM8737_VREF_MASK, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %72, i32 0)
  %74 = load %struct.wm8737_priv*, %struct.wm8737_priv** %6, align 8
  %75 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = load %struct.wm8737_priv*, %struct.wm8737_priv** %6, align 8
  %79 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regulator_bulk_disable(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %2, %67, %60, %12, %11
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
