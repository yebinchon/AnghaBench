; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm8993_put_dc_servo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm8993_put_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i64, i64, i64 }

@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SINGLE_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SINGLE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8993_put_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_put_dc_servo(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm_hubs_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm_hubs_data* %12, %struct.wm_hubs_data** %7, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %13, %struct.snd_ctl_elem_value* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %17 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %22 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %27 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20, %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  %36 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %37 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %43 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %44 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_0, align 4
  %45 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_0, align 4
  %48 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_1, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %41, %32
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %30
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
