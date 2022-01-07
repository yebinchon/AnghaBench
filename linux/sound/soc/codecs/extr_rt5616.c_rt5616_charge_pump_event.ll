; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_charge_pump_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_charge_pump_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5616_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5616_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5616_DEPOP_MAN = common dso_local global i32 0, align 4
@RT5616_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5616_HP_CP_MASK = common dso_local global i32 0, align 4
@RT5616_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5616_HP_CB_MASK = common dso_local global i32 0, align 4
@RT5616_HP_CP_PU = common dso_local global i32 0, align 4
@RT5616_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5616_HP_CB_PU = common dso_local global i32 0, align 4
@RT5616_PR_BASE = common dso_local global i64 0, align 8
@RT5616_HP_DCC_INT1 = common dso_local global i64 0, align 8
@RT5616_PWR_ANLG1 = common dso_local global i64 0, align 8
@RT5616_PWR_FV1 = common dso_local global i32 0, align 4
@RT5616_PWR_FV2 = common dso_local global i32 0, align 4
@RT5616_PWR_VOL = common dso_local global i64 0, align 8
@RT5616_PWR_HV_L = common dso_local global i32 0, align 4
@RT5616_PWR_HV_R = common dso_local global i32 0, align 4
@RT5616_PWR_HP_L = common dso_local global i32 0, align 4
@RT5616_PWR_HP_R = common dso_local global i32 0, align 4
@RT5616_PWR_HA = common dso_local global i32 0, align 4
@RT5616_CHARGE_PUMP = common dso_local global i64 0, align 8
@RT5616_PM_HP_MASK = common dso_local global i32 0, align 4
@RT5616_PM_HP_HV = common dso_local global i32 0, align 4
@RT5616_CHOP_DAC_ADC = common dso_local global i64 0, align 8
@RT5616_HP_CO_MASK = common dso_local global i32 0, align 4
@RT5616_HP_CO_EN = common dso_local global i32 0, align 4
@RT5616_HP_SG_EN = common dso_local global i32 0, align 4
@RT5616_HP_L_SMT_MASK = common dso_local global i32 0, align 4
@RT5616_HP_R_SMT_MASK = common dso_local global i32 0, align 4
@RT5616_HP_L_SMT_DIS = common dso_local global i32 0, align 4
@RT5616_HP_R_SMT_DIS = common dso_local global i32 0, align 4
@RT5616_SMT_TRIG_MASK = common dso_local global i32 0, align 4
@RT5616_HP_CD_PD_MASK = common dso_local global i32 0, align 4
@RT5616_SMT_TRIG_DIS = common dso_local global i32 0, align 4
@RT5616_HP_CD_PD_EN = common dso_local global i32 0, align 4
@RT5616_HP_CO_DIS = common dso_local global i32 0, align 4
@RT5616_HP_CP_PD = common dso_local global i32 0, align 4
@RT5616_HP_CB_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5616_charge_pump_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5616_charge_pump_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %147 [
    i32 129, label %14
    i32 128, label %95
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i64, i64* @RT5616_DEPOP_M2, align 8
  %17 = load i32, i32* @RT5616_DEPOP_MASK, align 4
  %18 = load i32, i32* @RT5616_DEPOP_MAN, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i64 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = load i64, i64* @RT5616_DEPOP_M1, align 8
  %22 = load i32, i32* @RT5616_HP_CP_MASK, align 4
  %23 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RT5616_HP_CB_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5616_HP_CP_PU, align 4
  %28 = load i32, i32* @RT5616_HP_SG_DIS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RT5616_HP_CB_PU, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i64 %21, i32 %26, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i64, i64* @RT5616_PR_BASE, align 8
  %35 = load i64, i64* @RT5616_HP_DCC_INT1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i64 %36, i32 40704)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i64, i64* @RT5616_PWR_ANLG1, align 8
  %40 = load i32, i32* @RT5616_PWR_FV1, align 4
  %41 = load i32, i32* @RT5616_PWR_FV2, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i64 %39, i32 %42, i32 0)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i64, i64* @RT5616_PWR_VOL, align 8
  %46 = load i32, i32* @RT5616_PWR_HV_L, align 4
  %47 = load i32, i32* @RT5616_PWR_HV_R, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT5616_PWR_HV_L, align 4
  %50 = load i32, i32* @RT5616_PWR_HV_R, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i64 %45, i32 %48, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i64, i64* @RT5616_PWR_ANLG1, align 8
  %55 = load i32, i32* @RT5616_PWR_HP_L, align 4
  %56 = load i32, i32* @RT5616_PWR_HP_R, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RT5616_PWR_HA, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RT5616_PWR_HP_L, align 4
  %61 = load i32, i32* @RT5616_PWR_HP_R, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RT5616_PWR_HA, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i64 %54, i32 %59, i32 %64)
  %66 = call i32 @msleep(i32 50)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i64, i64* @RT5616_PWR_ANLG1, align 8
  %69 = load i32, i32* @RT5616_PWR_FV1, align 4
  %70 = load i32, i32* @RT5616_PWR_FV2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT5616_PWR_FV1, align 4
  %73 = load i32, i32* @RT5616_PWR_FV2, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i64 %68, i32 %71, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %77 = load i64, i64* @RT5616_CHARGE_PUMP, align 8
  %78 = load i32, i32* @RT5616_PM_HP_MASK, align 4
  %79 = load i32, i32* @RT5616_PM_HP_HV, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i64 %77, i32 %78, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i64, i64* @RT5616_PR_BASE, align 8
  %83 = load i64, i64* @RT5616_CHOP_DAC_ADC, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i64 %84, i32 512, i32 512)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = load i64, i64* @RT5616_DEPOP_M1, align 8
  %88 = load i32, i32* @RT5616_HP_CO_MASK, align 4
  %89 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RT5616_HP_CO_EN, align 4
  %92 = load i32, i32* @RT5616_HP_SG_EN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i64 %87, i32 %90, i32 %93)
  br label %148

95:                                               ; preds = %3
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %97 = load i64, i64* @RT5616_PR_BASE, align 8
  %98 = load i64, i64* @RT5616_CHOP_DAC_ADC, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i64 %99, i32 512, i32 0)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %102 = load i64, i64* @RT5616_DEPOP_M1, align 8
  %103 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %104 = load i32, i32* @RT5616_HP_L_SMT_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RT5616_HP_R_SMT_MASK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @RT5616_HP_SG_DIS, align 4
  %109 = load i32, i32* @RT5616_HP_L_SMT_DIS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @RT5616_HP_R_SMT_DIS, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i64 %102, i32 %107, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %115 = load i64, i64* @RT5616_DEPOP_M1, align 8
  %116 = load i32, i32* @RT5616_SMT_TRIG_MASK, align 4
  %117 = load i32, i32* @RT5616_HP_CD_PD_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @RT5616_HP_CO_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @RT5616_HP_CP_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @RT5616_HP_CB_MASK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @RT5616_SMT_TRIG_DIS, align 4
  %128 = load i32, i32* @RT5616_HP_CD_PD_EN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RT5616_HP_CO_DIS, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @RT5616_HP_CP_PD, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @RT5616_HP_SG_EN, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @RT5616_HP_CB_PD, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i64 %115, i32 %126, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %140 = load i64, i64* @RT5616_PWR_ANLG1, align 8
  %141 = load i32, i32* @RT5616_PWR_HP_L, align 4
  %142 = load i32, i32* @RT5616_PWR_HP_R, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @RT5616_PWR_HA, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i64 %140, i32 %145, i32 0)
  br label %148

147:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

148:                                              ; preds = %95, %14
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %147
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
