; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_read_dc_servo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_read_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32 }

@WM8994_DC_SERVO_4E = common dso_local global i32 0, align 4
@WM8994_DC_SERVO_READBACK = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_3 = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_READBACK_1 = common dso_local global i32 0, align 4
@WM8993_DCS_INTEG_CHAN_0_MASK = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_READBACK_2 = common dso_local global i32 0, align 4
@WM8993_DCS_INTEG_CHAN_1_MASK = common dso_local global i32 0, align 4
@WM8993_DCS_DAC_WR_VAL_1_MASK = common dso_local global i32 0, align 4
@WM8993_DCS_DAC_WR_VAL_1_SHIFT = common dso_local global i32 0, align 4
@WM8993_DCS_DAC_WR_VAL_0_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown DCS readback method\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32*, i32*)* @wm_hubs_read_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_hubs_read_dc_servo(%struct.snd_soc_component* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wm_hubs_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm_hubs_data* %12, %struct.wm_hubs_data** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %14 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 2, label %16
    i32 1, label %18
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @WM8994_DC_SERVO_4E, align 4
  store i32 %17, i32* %8, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @WM8994_DC_SERVO_READBACK, align 4
  store i32 %19, i32* %8, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @WM8993_DC_SERVO_3, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %18, %16
  %23 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %24 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %53 [
    i32 0, label %26
    i32 2, label %39
    i32 1, label %39
  ]

26:                                               ; preds = %22
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %28 = load i32, i32* @WM8993_DC_SERVO_READBACK_1, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  %30 = load i32, i32* @WM8993_DCS_INTEG_CHAN_0_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %34 = load i32, i32* @WM8993_DC_SERVO_READBACK_2, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  %36 = load i32, i32* @WM8993_DCS_INTEG_CHAN_1_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %55

39:                                               ; preds = %22, %22
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @WM8993_DCS_DAC_WR_VAL_1_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @WM8993_DCS_DAC_WR_VAL_1_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @WM8993_DCS_DAC_WR_VAL_0_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %55

53:                                               ; preds = %22
  %54 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %39, %26
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
