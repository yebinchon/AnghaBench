; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8400 = type { i32, i32 }
%struct.wm8400_priv = type { %struct.wm8400* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@power = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to get regulators: %d\0A\00", align 1
@WM8400_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8400_CODEC_ENA = common dso_local global i32 0, align 4
@WM8400_LEFT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8400_IPVU = common dso_local global i32 0, align 4
@WM8400_RIGHT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8400_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8400_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8400_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8400*, align 8
  %5 = alloca %struct.wm8400_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wm8400* @dev_get_platdata(i32 %10)
  store %struct.wm8400* %11, %struct.wm8400** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wm8400_priv* @devm_kzalloc(i32 %14, i32 8, i32 %15)
  store %struct.wm8400_priv* %16, %struct.wm8400_priv** %5, align 8
  %17 = load %struct.wm8400_priv*, %struct.wm8400_priv** %5, align 8
  %18 = icmp eq %struct.wm8400_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %25 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %23, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load %struct.wm8400_priv*, %struct.wm8400_priv** %5, align 8
  %30 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %28, %struct.wm8400_priv* %29)
  %31 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %32 = load %struct.wm8400_priv*, %struct.wm8400_priv** %5, align 8
  %33 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %32, i32 0, i32 0
  store %struct.wm8400* %31, %struct.wm8400** %33, align 8
  %34 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %35 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @power, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = load i32*, i32** @power, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @devm_regulator_bulk_get(i32 %36, i32 %38, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %22
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %87

51:                                               ; preds = %22
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = call i32 @wm8400_component_reset(%struct.snd_soc_component* %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %56 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @WM8400_CODEC_ENA, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = load i32, i32* @WM8400_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %65 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i32, i32* @WM8400_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @WM8400_IPVU, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @WM8400_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %74 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = load i32, i32* @WM8400_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @WM8400_IPVU, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 %76, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = load i32, i32* @WM8400_LEFT_OUTPUT_VOLUME, align 4
  %83 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 336)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %85 = load i32, i32* @WM8400_RIGHT_OUTPUT_VOLUME, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %84, i32 %85, i32 336)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %51, %44, %19
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.wm8400* @dev_get_platdata(i32) #1

declare dso_local %struct.wm8400_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.wm8400_priv*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8400_component_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
