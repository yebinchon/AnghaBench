; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8737_priv = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@WM8737_LEFT_PGA_VOLUME = common dso_local global i32 0, align 4
@WM8737_LVU = common dso_local global i32 0, align 4
@WM8737_RIGHT_PGA_VOLUME = common dso_local global i32 0, align 4
@WM8737_RVU = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8737_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8737_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8737_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8737_priv* %7, %struct.wm8737_priv** %4, align 8
  %8 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %13 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_bulk_enable(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @wm8737_reset(%struct.snd_soc_component* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @WM8737_LEFT_PGA_VOLUME, align 4
  %37 = load i32, i32* @WM8737_LVU, align 4
  %38 = load i32, i32* @WM8737_LVU, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @WM8737_RIGHT_PGA_VOLUME, align 4
  %42 = load i32, i32* @WM8737_RVU, align 4
  %43 = load i32, i32* @WM8737_RVU, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %47 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %45, i32 %46)
  %48 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %49 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %53 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regulator_bulk_disable(i32 %51, i32 %54)
  store i32 0, i32* %2, align 4
  br label %67

56:                                               ; preds = %29
  %57 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %58 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load %struct.wm8737_priv*, %struct.wm8737_priv** %4, align 8
  %62 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regulator_bulk_disable(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %18
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %34
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wm8737_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
