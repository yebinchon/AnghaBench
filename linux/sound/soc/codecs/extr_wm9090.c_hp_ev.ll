; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_hp_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_hp_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM9090_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM9090_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM9090_CP_ENA = common dso_local global i32 0, align 4
@WM9090_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM9090_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM9090_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM9090_HPOUT1L_DLY = common dso_local global i32 0, align 4
@WM9090_HPOUT1R_DLY = common dso_local global i32 0, align 4
@WM9090_DC_SERVO_0 = common dso_local global i32 0, align 4
@WM9090_DCS_ENA_CHAN_0 = common dso_local global i32 0, align 4
@WM9090_DCS_ENA_CHAN_1 = common dso_local global i32 0, align 4
@WM9090_DCS_TRIG_STARTUP_1 = common dso_local global i32 0, align 4
@WM9090_DCS_TRIG_STARTUP_0 = common dso_local global i32 0, align 4
@WM9090_HPOUT1R_OUTP = common dso_local global i32 0, align 4
@WM9090_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@WM9090_HPOUT1L_OUTP = common dso_local global i32 0, align 4
@WM9090_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  %14 = load i32, i32* @WM9090_ANALOGUE_HP_0, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %99 [
    i32 129, label %17
    i32 128, label %67
  ]

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = load i32, i32* @WM9090_CHARGE_PUMP_1, align 4
  %20 = load i32, i32* @WM9090_CP_ENA, align 4
  %21 = load i32, i32* @WM9090_CP_ENA, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32 @msleep(i32 5)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %25 = load i32, i32* @WM9090_POWER_MANAGEMENT_1, align 4
  %26 = load i32, i32* @WM9090_HPOUT1L_ENA, align 4
  %27 = load i32, i32* @WM9090_HPOUT1R_ENA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WM9090_HPOUT1L_ENA, align 4
  %30 = load i32, i32* @WM9090_HPOUT1R_ENA, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* @WM9090_HPOUT1L_DLY, align 4
  %34 = load i32, i32* @WM9090_HPOUT1R_DLY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @WM9090_ANALOGUE_HP_0, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %43 = load i32, i32* @WM9090_DC_SERVO_0, align 4
  %44 = load i32, i32* @WM9090_DCS_ENA_CHAN_0, align 4
  %45 = load i32, i32* @WM9090_DCS_ENA_CHAN_1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM9090_DCS_TRIG_STARTUP_1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WM9090_DCS_TRIG_STARTUP_0, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %52)
  %54 = load i32, i32* @WM9090_HPOUT1R_OUTP, align 4
  %55 = load i32, i32* @WM9090_HPOUT1R_RMV_SHORT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WM9090_HPOUT1L_OUTP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WM9090_HPOUT1L_RMV_SHORT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* @WM9090_ANALOGUE_HP_0, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  br label %99

67:                                               ; preds = %3
  %68 = load i32, i32* @WM9090_HPOUT1L_RMV_SHORT, align 4
  %69 = load i32, i32* @WM9090_HPOUT1L_DLY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @WM9090_HPOUT1L_OUTP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WM9090_HPOUT1R_RMV_SHORT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @WM9090_HPOUT1R_DLY, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @WM9090_HPOUT1R_OUTP, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %83 = load i32, i32* @WM9090_ANALOGUE_HP_0, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %82, i32 %83, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %87 = load i32, i32* @WM9090_DC_SERVO_0, align 4
  %88 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %86, i32 %87, i32 0)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %90 = load i32, i32* @WM9090_POWER_MANAGEMENT_1, align 4
  %91 = load i32, i32* @WM9090_HPOUT1L_ENA, align 4
  %92 = load i32, i32* @WM9090_HPOUT1R_ENA, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %93, i32 0)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %96 = load i32, i32* @WM9090_CHARGE_PUMP_1, align 4
  %97 = load i32, i32* @WM9090_CP_ENA, align 4
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %3, %67, %17
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wait_for_dc_servo(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
