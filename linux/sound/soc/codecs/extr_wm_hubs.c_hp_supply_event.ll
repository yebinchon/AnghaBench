; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_hp_supply_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_hp_supply_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32 }

@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM8993_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_DLY = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_DLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown HP startup mode %d\0A\00", align 1
@WM8993_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM8993_CP_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_supply_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_supply_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm_hubs_data*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm_hubs_data* %14, %struct.wm_hubs_data** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %54 [
    i32 128, label %16
    i32 129, label %49
  ]

16:                                               ; preds = %3
  %17 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %8, align 8
  %18 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 0, label %20
    i32 1, label %21
  ]

20:                                               ; preds = %16
  br label %48

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %24 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %25 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %28 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %32 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %33 = load i32, i32* @WM8993_HPOUT1L_DLY, align 4
  %34 = load i32, i32* @WM8993_HPOUT1R_DLY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WM8993_HPOUT1L_DLY, align 4
  %37 = load i32, i32* @WM8993_HPOUT1R_DLY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %35, i32 %38)
  br label %48

40:                                               ; preds = %16
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %8, align 8
  %45 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %21, %20
  br label %54

49:                                               ; preds = %3
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @WM8993_CHARGE_PUMP_1, align 4
  %52 = load i32, i32* @WM8993_CP_ENA, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %3, %49, %48
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
