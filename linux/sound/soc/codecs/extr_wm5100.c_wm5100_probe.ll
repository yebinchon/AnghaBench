; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.i2c_client = type { i32, i64 }
%struct.wm5100_priv = type { %struct.TYPE_2__, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64 }

@wm5100_dig_vu = common dso_local global i32* null, align 8
@WM5100_OUT_VU = common dso_local global i32 0, align 4
@WM5100_IRQ_DEBOUNCE_1 = common dso_local global i32 0, align 4
@WM5100_IRQ_DEBOUNCE_2 = common dso_local global i32 0, align 4
@wm5100_dapm_widgets_noirq = common dso_local global i32* null, align 8
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"WM5100 HP_POL\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to request HP_POL %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm5100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.wm5100_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i2c_client* @to_i2c_client(i32 %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm5100_priv* %16, %struct.wm5100_priv** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %18, i32 0, i32 1
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %19, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** @wm5100_dig_vu, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32*, i32** @wm5100_dig_vu, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WM5100_OUT_VU, align 4
  %33 = load i32, i32* @WM5100_OUT_VU, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @WM5100_IRQ_DEBOUNCE_1, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 0)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WM5100_IRQ_DEBOUNCE_2, align 4
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 0)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %51 = load i32*, i32** @wm5100_dapm_widgets_noirq, align 8
  %52 = load i32*, i32** @wm5100_dapm_widgets_noirq, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %50, i32* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %57 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %63 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %67 = call i32 @gpio_request_one(i64 %65, i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %74 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %77)
  br label %81

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %55
  store i32 0, i32* %2, align 4
  br label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @gpio_request_one(i64, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
