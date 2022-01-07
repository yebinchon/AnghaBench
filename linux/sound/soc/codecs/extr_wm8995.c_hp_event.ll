; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8995_ANALOGUE_HP_1 = common dso_local global i32 0, align 4
@WM8995_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM8995_CP_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_CP_ENA = common dso_local global i32 0, align 4
@WM8995_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_ENA_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_DLY = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_DLY = common dso_local global i32 0, align 4
@WM8995_DC_SERVO_1 = common dso_local global i32 0, align 4
@WM8995_DCS_ENA_CHAN_0 = common dso_local global i32 0, align 4
@WM8995_DCS_ENA_CHAN_1 = common dso_local global i32 0, align 4
@WM8995_DC_SERVO_2 = common dso_local global i32 0, align 4
@WM8995_DCS_TRIG_STARTUP_0 = common dso_local global i32 0, align 4
@WM8995_DCS_TRIG_STARTUP_1 = common dso_local global i32 0, align 4
@WM8995_DCS_TRIG_DAC_WR_0 = common dso_local global i32 0, align 4
@WM8995_DCS_TRIG_DAC_WR_1 = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_OUTP = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_OUTP = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_OUTP_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_OUTP_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_RMV_SHORT_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_RMV_SHORT_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1L_DLY_MASK = common dso_local global i32 0, align 4
@WM8995_HPOUT1R_DLY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = load i32, i32* @WM8995_ANALOGUE_HP_1, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %97 [
    i32 129, label %17
    i32 128, label %71
  ]

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = load i32, i32* @WM8995_CHARGE_PUMP_1, align 4
  %20 = load i32, i32* @WM8995_CP_ENA_MASK, align 4
  %21 = load i32, i32* @WM8995_CP_ENA, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32 @msleep(i32 5)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %25 = load i32, i32* @WM8995_POWER_MANAGEMENT_1, align 4
  %26 = load i32, i32* @WM8995_HPOUT1L_ENA_MASK, align 4
  %27 = load i32, i32* @WM8995_HPOUT1R_ENA_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WM8995_HPOUT1L_ENA, align 4
  %30 = load i32, i32* @WM8995_HPOUT1R_ENA, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %28, i32 %31)
  %33 = call i32 @udelay(i32 20)
  %34 = load i32, i32* @WM8995_HPOUT1L_DLY, align 4
  %35 = load i32, i32* @WM8995_HPOUT1R_DLY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %40 = load i32, i32* @WM8995_ANALOGUE_HP_1, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %44 = load i32, i32* @WM8995_DC_SERVO_1, align 4
  %45 = load i32, i32* @WM8995_DCS_ENA_CHAN_0, align 4
  %46 = load i32, i32* @WM8995_DCS_ENA_CHAN_1, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = load i32, i32* @WM8995_DC_SERVO_2, align 4
  %51 = load i32, i32* @WM8995_DCS_TRIG_STARTUP_0, align 4
  %52 = load i32, i32* @WM8995_DCS_TRIG_STARTUP_1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WM8995_DCS_TRIG_DAC_WR_0, align 4
  %55 = load i32, i32* @WM8995_DCS_TRIG_DAC_WR_1, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @dc_servo_cmd(%struct.snd_soc_component* %49, i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* @WM8995_HPOUT1R_OUTP, align 4
  %59 = load i32, i32* @WM8995_HPOUT1R_RMV_SHORT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WM8995_HPOUT1L_OUTP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @WM8995_HPOUT1L_RMV_SHORT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %68 = load i32, i32* @WM8995_ANALOGUE_HP_1, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %69)
  br label %97

71:                                               ; preds = %3
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %73 = load i32, i32* @WM8995_ANALOGUE_HP_1, align 4
  %74 = load i32, i32* @WM8995_HPOUT1L_OUTP_MASK, align 4
  %75 = load i32, i32* @WM8995_HPOUT1R_OUTP_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @WM8995_HPOUT1L_RMV_SHORT_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WM8995_HPOUT1R_RMV_SHORT_MASK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %80, i32 0)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %83 = load i32, i32* @WM8995_ANALOGUE_HP_1, align 4
  %84 = load i32, i32* @WM8995_HPOUT1L_DLY_MASK, align 4
  %85 = load i32, i32* @WM8995_HPOUT1R_DLY_MASK, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %86, i32 0)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %89 = load i32, i32* @WM8995_DC_SERVO_1, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %92 = load i32, i32* @WM8995_POWER_MANAGEMENT_1, align 4
  %93 = load i32, i32* @WM8995_HPOUT1L_ENA_MASK, align 4
  %94 = load i32, i32* @WM8995_HPOUT1R_ENA_MASK, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %3, %71, %17
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dc_servo_cmd(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
