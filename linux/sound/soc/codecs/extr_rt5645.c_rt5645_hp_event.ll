; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32, i32 }

@CODEC_TYPE_RT5645 = common dso_local global i32 0, align 4
@RT5645_DEPOP_M3 = common dso_local global i32 0, align 4
@RT5645_CP_FQ1_MASK = common dso_local global i32 0, align 4
@RT5645_CP_FQ2_MASK = common dso_local global i32 0, align 4
@RT5645_CP_FQ3_MASK = common dso_local global i32 0, align 4
@RT5645_CP_FQ_192_KHZ = common dso_local global i32 0, align 4
@RT5645_CP_FQ1_SFT = common dso_local global i32 0, align 4
@RT5645_CP_FQ_12_KHZ = common dso_local global i32 0, align 4
@RT5645_CP_FQ2_SFT = common dso_local global i32 0, align 4
@RT5645_CP_FQ3_SFT = common dso_local global i32 0, align 4
@RT5645_PR_BASE = common dso_local global i64 0, align 8
@RT5645_MAMP_INT_REG2 = common dso_local global i64 0, align 8
@RT5645_DEPOP_M1 = common dso_local global i32 0, align 4
@RT5645_SMT_TRIG_MASK = common dso_local global i32 0, align 4
@RT5645_SMT_TRIG_EN = common dso_local global i32 0, align 4
@RT5645_RSTN_MASK = common dso_local global i32 0, align 4
@RT5645_RSTN_EN = common dso_local global i32 0, align 4
@RT5645_HP_L_SMT_MASK = common dso_local global i32 0, align 4
@RT5645_HP_R_SMT_MASK = common dso_local global i32 0, align 4
@RT5645_RSTN_DIS = common dso_local global i32 0, align 4
@RT5645_HP_L_SMT_EN = common dso_local global i32 0, align 4
@RT5645_HP_R_SMT_EN = common dso_local global i32 0, align 4
@RT5645_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5645_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5645_HP_L_SMT_DIS = common dso_local global i32 0, align 4
@RT5645_HP_R_SMT_DIS = common dso_local global i32 0, align 4
@RT5645_CP_FQ_96_KHZ = common dso_local global i32 0, align 4
@RT5645_HP_SG_EN = common dso_local global i32 0, align 4
@RT5645_RSTP_MASK = common dso_local global i32 0, align 4
@RT5645_RSTP_EN = common dso_local global i32 0, align 4
@RT5645_RSTP_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5645_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5645_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5645_priv* %15, %struct.rt5645_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %150 [
    i32 129, label %17
    i32 128, label %90
  ]

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call i32 @hp_amp_power(%struct.snd_soc_component* %18, i32 1)
  %20 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %21 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CODEC_TYPE_RT5645, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %17
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @RT5645_DEPOP_M3, align 4
  %28 = load i32, i32* @RT5645_CP_FQ1_MASK, align 4
  %29 = load i32, i32* @RT5645_CP_FQ2_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RT5645_CP_FQ3_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RT5645_CP_FQ_192_KHZ, align 4
  %34 = load i32, i32* @RT5645_CP_FQ1_SFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @RT5645_CP_FQ_12_KHZ, align 4
  %37 = load i32, i32* @RT5645_CP_FQ2_SFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* @RT5645_CP_FQ_192_KHZ, align 4
  %41 = load i32, i32* @RT5645_CP_FQ3_SFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %32, i32 %43)
  %45 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %46 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @RT5645_PR_BASE, align 8
  %49 = load i64, i64* @RT5645_MAMP_INT_REG2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @regmap_write(i32 %47, i64 %50, i32 64512)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %54 = load i32, i32* @RT5645_SMT_TRIG_MASK, align 4
  %55 = load i32, i32* @RT5645_SMT_TRIG_EN, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %59 = load i32, i32* @RT5645_RSTN_MASK, align 4
  %60 = load i32, i32* @RT5645_RSTN_EN, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %64 = load i32, i32* @RT5645_RSTN_MASK, align 4
  %65 = load i32, i32* @RT5645_HP_L_SMT_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RT5645_HP_R_SMT_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RT5645_RSTN_DIS, align 4
  %70 = load i32, i32* @RT5645_HP_L_SMT_EN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT5645_HP_R_SMT_EN, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %68, i32 %73)
  %75 = call i32 @msleep(i32 40)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %77 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %78 = load i32, i32* @RT5645_HP_SG_MASK, align 4
  %79 = load i32, i32* @RT5645_HP_L_SMT_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RT5645_HP_R_SMT_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RT5645_HP_SG_DIS, align 4
  %84 = load i32, i32* @RT5645_HP_L_SMT_DIS, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RT5645_HP_R_SMT_DIS, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %25, %17
  br label %151

90:                                               ; preds = %3
  %91 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %92 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CODEC_TYPE_RT5645, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %147

96:                                               ; preds = %90
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %98 = load i32, i32* @RT5645_DEPOP_M3, align 4
  %99 = load i32, i32* @RT5645_CP_FQ1_MASK, align 4
  %100 = load i32, i32* @RT5645_CP_FQ2_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RT5645_CP_FQ3_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RT5645_CP_FQ_96_KHZ, align 4
  %105 = load i32, i32* @RT5645_CP_FQ1_SFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @RT5645_CP_FQ_12_KHZ, align 4
  %108 = load i32, i32* @RT5645_CP_FQ2_SFT, align 4
  %109 = shl i32 %107, %108
  %110 = or i32 %106, %109
  %111 = load i32, i32* @RT5645_CP_FQ_96_KHZ, align 4
  %112 = load i32, i32* @RT5645_CP_FQ3_SFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %110, %113
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %103, i32 %114)
  %116 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %117 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* @RT5645_PR_BASE, align 8
  %120 = load i64, i64* @RT5645_MAMP_INT_REG2, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @regmap_write(i32 %118, i64 %121, i32 64512)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %125 = load i32, i32* @RT5645_HP_SG_MASK, align 4
  %126 = load i32, i32* @RT5645_HP_SG_EN, align 4
  %127 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %129 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %130 = load i32, i32* @RT5645_RSTP_MASK, align 4
  %131 = load i32, i32* @RT5645_RSTP_EN, align 4
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %134 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %135 = load i32, i32* @RT5645_RSTP_MASK, align 4
  %136 = load i32, i32* @RT5645_HP_L_SMT_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @RT5645_HP_R_SMT_MASK, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @RT5645_RSTP_DIS, align 4
  %141 = load i32, i32* @RT5645_HP_L_SMT_EN, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @RT5645_HP_R_SMT_EN, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %133, i32 %134, i32 %139, i32 %144)
  %146 = call i32 @msleep(i32 30)
  br label %147

147:                                              ; preds = %96, %90
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %149 = call i32 @hp_amp_power(%struct.snd_soc_component* %148, i32 0)
  br label %151

150:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

151:                                              ; preds = %147, %89
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %150
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @hp_amp_power(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
