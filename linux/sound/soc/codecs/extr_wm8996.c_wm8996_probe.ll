; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { %struct.TYPE_2__, i32, i32, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.i2c_client = type { i64 }

@wm8996_eq_controls = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@wm8996_edge_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm8996\00", align 1
@wm8996_irq = common dso_local global i32 0, align 4
@WM8996_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@WM8996_IM_IRQ = common dso_local global i32 0, align 4
@WM8996_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@WM8996_IM_DCS_DONE_23_EINT = common dso_local global i32 0, align 4
@WM8996_IM_DCS_DONE_01_EINT = common dso_local global i32 0, align 4
@WM8996_IM_FLL_LOCK_EINT = common dso_local global i32 0, align 4
@WM8996_IM_FIFOS_ERR_EINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8996_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8996_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8996_priv*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8996_priv* %9, %struct.wm8996_priv** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %15, i32 0, i32 3
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %16, align 8
  %17 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %17, i32 0, i32 2
  %19 = call i32 @init_completion(i32* %18)
  %20 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %21 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %20, i32 0, i32 1
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = call i32 @wm8996_retune_mobile_pdata(%struct.snd_soc_component* %29)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @wm8996_eq_controls, align 4
  %34 = load i32, i32* @wm8996_eq_controls, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %37
  %43 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %44 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* @IRQF_ONESHOT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %61 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @wm8996_edge_irq, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = call i32 @request_threaded_irq(i64 %68, i32* null, i32 %69, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_soc_component* %71)
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %55
  %74 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @wm8996_irq, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = call i32 @request_threaded_irq(i64 %76, i32* null, i32 %77, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_soc_component* %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %65
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %86 = load i32, i32* @WM8996_INTERRUPT_CONTROL, align 4
  %87 = load i32, i32* @WM8996_IM_IRQ, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %90 = load i32, i32* @WM8996_INTERRUPT_STATUS_2_MASK, align 4
  %91 = load i32, i32* @WM8996_IM_DCS_DONE_23_EINT, align 4
  %92 = load i32, i32* @WM8996_IM_DCS_DONE_01_EINT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WM8996_IM_FLL_LOCK_EINT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @WM8996_IM_FIFOS_ERR_EINT, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %97, i32 0)
  br label %106

99:                                               ; preds = %81
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %37
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wm8996_retune_mobile_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
