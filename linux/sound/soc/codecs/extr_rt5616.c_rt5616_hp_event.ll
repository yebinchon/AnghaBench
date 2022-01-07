; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5616_DEPOP_M3 = common dso_local global i32 0, align 4
@RT5616_CP_FQ1_MASK = common dso_local global i32 0, align 4
@RT5616_CP_FQ2_MASK = common dso_local global i32 0, align 4
@RT5616_CP_FQ3_MASK = common dso_local global i32 0, align 4
@RT5616_CP_FQ_192_KHZ = common dso_local global i32 0, align 4
@RT5616_CP_FQ1_SFT = common dso_local global i32 0, align 4
@RT5616_CP_FQ_12_KHZ = common dso_local global i32 0, align 4
@RT5616_CP_FQ2_SFT = common dso_local global i32 0, align 4
@RT5616_CP_FQ3_SFT = common dso_local global i32 0, align 4
@RT5616_PR_BASE = common dso_local global i64 0, align 8
@RT5616_MAMP_INT_REG2 = common dso_local global i64 0, align 8
@RT5616_DEPOP_M1 = common dso_local global i32 0, align 4
@RT5616_SMT_TRIG_MASK = common dso_local global i32 0, align 4
@RT5616_SMT_TRIG_EN = common dso_local global i32 0, align 4
@RT5616_RSTN_MASK = common dso_local global i32 0, align 4
@RT5616_RSTN_EN = common dso_local global i32 0, align 4
@RT5616_HP_L_SMT_MASK = common dso_local global i32 0, align 4
@RT5616_HP_R_SMT_MASK = common dso_local global i32 0, align 4
@RT5616_RSTN_DIS = common dso_local global i32 0, align 4
@RT5616_HP_L_SMT_EN = common dso_local global i32 0, align 4
@RT5616_HP_R_SMT_EN = common dso_local global i32 0, align 4
@RT5616_HP_VOL = common dso_local global i32 0, align 4
@RT5616_L_MUTE = common dso_local global i32 0, align 4
@RT5616_R_MUTE = common dso_local global i32 0, align 4
@RT5616_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5616_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5616_HP_L_SMT_DIS = common dso_local global i32 0, align 4
@RT5616_HP_R_SMT_DIS = common dso_local global i32 0, align 4
@RT5616_HP_CALIB_AMP_DET = common dso_local global i32 0, align 4
@RT5616_HPD_PS_MASK = common dso_local global i32 0, align 4
@RT5616_HPD_PS_EN = common dso_local global i32 0, align 4
@RT5616_CP_FQ_96_KHZ = common dso_local global i32 0, align 4
@RT5616_HP_SG_EN = common dso_local global i32 0, align 4
@RT5616_RSTP_MASK = common dso_local global i32 0, align 4
@RT5616_RSTP_EN = common dso_local global i32 0, align 4
@RT5616_RSTP_DIS = common dso_local global i32 0, align 4
@RT5616_HPD_PS_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5616_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5616_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %13, label %152 [
    i32 129, label %14
    i32 128, label %88
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @RT5616_DEPOP_M3, align 4
  %17 = load i32, i32* @RT5616_CP_FQ1_MASK, align 4
  %18 = load i32, i32* @RT5616_CP_FQ2_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RT5616_CP_FQ3_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RT5616_CP_FQ_192_KHZ, align 4
  %23 = load i32, i32* @RT5616_CP_FQ1_SFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @RT5616_CP_FQ_12_KHZ, align 4
  %26 = load i32, i32* @RT5616_CP_FQ2_SFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @RT5616_CP_FQ_192_KHZ, align 4
  %30 = load i32, i32* @RT5616_CP_FQ3_SFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %21, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = load i64, i64* @RT5616_PR_BASE, align 8
  %36 = load i64, i64* @RT5616_MAMP_INT_REG2, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i64 %37, i32 64512)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %41 = load i32, i32* @RT5616_SMT_TRIG_MASK, align 4
  %42 = load i32, i32* @RT5616_SMT_TRIG_EN, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %46 = load i32, i32* @RT5616_RSTN_MASK, align 4
  %47 = load i32, i32* @RT5616_RSTN_EN, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %51 = load i32, i32* @RT5616_RSTN_MASK, align 4
  %52 = load i32, i32* @RT5616_HP_L_SMT_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RT5616_HP_R_SMT_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RT5616_RSTN_DIS, align 4
  %57 = load i32, i32* @RT5616_HP_L_SMT_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RT5616_HP_R_SMT_EN, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %55, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = load i32, i32* @RT5616_HP_VOL, align 4
  %64 = load i32, i32* @RT5616_L_MUTE, align 4
  %65 = load i32, i32* @RT5616_R_MUTE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %66, i32 0)
  %68 = call i32 @msleep(i32 100)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %71 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %72 = load i32, i32* @RT5616_HP_L_SMT_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RT5616_HP_R_SMT_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RT5616_HP_SG_DIS, align 4
  %77 = load i32, i32* @RT5616_HP_L_SMT_DIS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RT5616_HP_R_SMT_DIS, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %75, i32 %80)
  %82 = call i32 @msleep(i32 20)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = load i32, i32* @RT5616_HP_CALIB_AMP_DET, align 4
  %85 = load i32, i32* @RT5616_HPD_PS_MASK, align 4
  %86 = load i32, i32* @RT5616_HPD_PS_EN, align 4
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i32 %84, i32 %85, i32 %86)
  br label %153

88:                                               ; preds = %3
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = load i32, i32* @RT5616_DEPOP_M3, align 4
  %91 = load i32, i32* @RT5616_CP_FQ1_MASK, align 4
  %92 = load i32, i32* @RT5616_CP_FQ2_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RT5616_CP_FQ3_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RT5616_CP_FQ_96_KHZ, align 4
  %97 = load i32, i32* @RT5616_CP_FQ1_SFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* @RT5616_CP_FQ_12_KHZ, align 4
  %100 = load i32, i32* @RT5616_CP_FQ2_SFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load i32, i32* @RT5616_CP_FQ_96_KHZ, align 4
  %104 = load i32, i32* @RT5616_CP_FQ3_SFT, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %102, %105
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %95, i32 %106)
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %109 = load i64, i64* @RT5616_PR_BASE, align 8
  %110 = load i64, i64* @RT5616_MAMP_INT_REG2, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %108, i64 %111, i32 64512)
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %115 = load i32, i32* @RT5616_HP_SG_MASK, align 4
  %116 = load i32, i32* @RT5616_HP_SG_EN, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %120 = load i32, i32* @RT5616_RSTP_MASK, align 4
  %121 = load i32, i32* @RT5616_RSTP_EN, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load i32, i32* @RT5616_DEPOP_M1, align 4
  %125 = load i32, i32* @RT5616_RSTP_MASK, align 4
  %126 = load i32, i32* @RT5616_HP_L_SMT_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @RT5616_HP_R_SMT_MASK, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RT5616_RSTP_DIS, align 4
  %131 = load i32, i32* @RT5616_HP_L_SMT_EN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @RT5616_HP_R_SMT_EN, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %124, i32 %129, i32 %134)
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %137 = load i32, i32* @RT5616_HP_CALIB_AMP_DET, align 4
  %138 = load i32, i32* @RT5616_HPD_PS_MASK, align 4
  %139 = load i32, i32* @RT5616_HPD_PS_DIS, align 4
  %140 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %136, i32 %137, i32 %138, i32 %139)
  %141 = call i32 @msleep(i32 90)
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %143 = load i32, i32* @RT5616_HP_VOL, align 4
  %144 = load i32, i32* @RT5616_L_MUTE, align 4
  %145 = load i32, i32* @RT5616_R_MUTE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @RT5616_L_MUTE, align 4
  %148 = load i32, i32* @RT5616_R_MUTE, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %142, i32 %143, i32 %146, i32 %149)
  %151 = call i32 @msleep(i32 30)
  br label %153

152:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %154

153:                                              ; preds = %88, %14
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %152
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
