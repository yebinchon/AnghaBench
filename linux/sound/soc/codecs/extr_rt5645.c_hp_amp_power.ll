; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_hp_amp_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_hp_amp_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i64, i32, i32 }

@hp_amp_power.hp_amp_power_count = internal global i32 0, align 4
@CODEC_TYPE_RT5650 = common dso_local global i64 0, align 8
@RT5645_DEPOP_M2 = common dso_local global i32 0, align 4
@RT5645_CHARGE_PUMP = common dso_local global i32 0, align 4
@RT5645_DEPOP_M1 = common dso_local global i32 0, align 4
@RT5645_PR_BASE = common dso_local global i64 0, align 8
@RT5645_HP_DCC_INT1 = common dso_local global i64 0, align 8
@RT5645_HP_CO_MASK = common dso_local global i32 0, align 4
@RT5645_HP_CO_EN = common dso_local global i32 0, align 4
@RT5645_DEPOP_M3 = common dso_local global i32 0, align 4
@RT5645_MAMP_INT_REG2 = common dso_local global i64 0, align 8
@RT5645_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5645_DEPOP_MAN = common dso_local global i32 0, align 4
@RT5645_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5645_PWR_FV1 = common dso_local global i32 0, align 4
@RT5645_PWR_FV2 = common dso_local global i32 0, align 4
@RT5645_PWR_VOL = common dso_local global i32 0, align 4
@RT5645_PWR_HV_L = common dso_local global i32 0, align 4
@RT5645_PWR_HV_R = common dso_local global i32 0, align 4
@RT5645_PWR_HP_L = common dso_local global i32 0, align 4
@RT5645_PWR_HP_R = common dso_local global i32 0, align 4
@RT5645_PWR_HA = common dso_local global i32 0, align 4
@RT5645_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5645_HP_SG_EN = common dso_local global i32 0, align 4
@RT5645_HP_L_SMT_MASK = common dso_local global i32 0, align 4
@RT5645_HP_R_SMT_MASK = common dso_local global i32 0, align 4
@RT5645_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5645_HP_L_SMT_DIS = common dso_local global i32 0, align 4
@RT5645_HP_R_SMT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @hp_amp_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_amp_power(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5645_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5645_priv* %7, %struct.rt5645_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %144

10:                                               ; preds = %2
  %11 = load i32, i32* @hp_amp_power.hp_amp_power_count, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %141

13:                                               ; preds = %10
  %14 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 12544)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i32, i32* @RT5645_CHARGE_PUMP, align 4
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %23, i32 %24, i32 3590)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 13)
  %29 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @RT5645_PR_BASE, align 8
  %33 = load i64, i64* @RT5645_HP_DCC_INT1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @regmap_write(i32 %31, i64 %34, i32 40705)
  %36 = call i32 @msleep(i32 20)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %39 = load i32, i32* @RT5645_HP_CO_MASK, align 4
  %40 = load i32, i32* @RT5645_HP_CO_EN, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %43 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @RT5645_PR_BASE, align 8
  %46 = add nsw i64 %45, 62
  %47 = call i32 @regmap_write(i32 %44, i64 %46, i32 29696)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @RT5645_DEPOP_M3, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 1847)
  %51 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %52 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @RT5645_PR_BASE, align 8
  %55 = load i64, i64* @RT5645_MAMP_INT_REG2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @regmap_write(i32 %53, i64 %56, i32 64512)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 %59, i32 4416)
  %61 = call i32 @msleep(i32 90)
  %62 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %63 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %140

64:                                               ; preds = %13
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %67 = load i32, i32* @RT5645_DEPOP_MASK, align 4
  %68 = load i32, i32* @RT5645_DEPOP_MAN, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %70, i32 %71, i32 13)
  %73 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %74 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @RT5645_PR_BASE, align 8
  %77 = load i64, i64* @RT5645_HP_DCC_INT1, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @regmap_write(i32 %75, i64 %78, i32 40705)
  %80 = call i32 @mdelay(i32 150)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %83 = load i32, i32* @RT5645_PWR_FV1, align 4
  %84 = load i32, i32* @RT5645_PWR_FV2, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %85, i32 0)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i32, i32* @RT5645_PWR_VOL, align 4
  %89 = load i32, i32* @RT5645_PWR_HV_L, align 4
  %90 = load i32, i32* @RT5645_PWR_HV_R, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RT5645_PWR_HV_L, align 4
  %93 = load i32, i32* @RT5645_PWR_HV_R, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %98 = load i32, i32* @RT5645_PWR_HP_L, align 4
  %99 = load i32, i32* @RT5645_PWR_HP_R, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RT5645_PWR_HA, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @RT5645_PWR_HP_L, align 4
  %104 = load i32, i32* @RT5645_PWR_HP_R, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RT5645_PWR_HA, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %102, i32 %107)
  %109 = call i32 @mdelay(i32 5)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %111 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %112 = load i32, i32* @RT5645_PWR_FV1, align 4
  %113 = load i32, i32* @RT5645_PWR_FV2, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @RT5645_PWR_FV1, align 4
  %116 = load i32, i32* @RT5645_PWR_FV2, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %114, i32 %117)
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %120 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %121 = load i32, i32* @RT5645_HP_CO_MASK, align 4
  %122 = load i32, i32* @RT5645_HP_SG_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @RT5645_HP_CO_EN, align 4
  %125 = load i32, i32* @RT5645_HP_SG_EN, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 %123, i32 %126)
  %128 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %129 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* @RT5645_PR_BASE, align 8
  %132 = add nsw i64 %131, 20
  %133 = call i32 @regmap_write(i32 %130, i64 %132, i32 6826)
  %134 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %135 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @RT5645_PR_BASE, align 8
  %138 = add nsw i64 %137, 36
  %139 = call i32 @regmap_write(i32 %136, i64 %138, i32 1072)
  br label %140

140:                                              ; preds = %64, %19
  br label %141

141:                                              ; preds = %140, %10
  %142 = load i32, i32* @hp_amp_power.hp_amp_power_count, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* @hp_amp_power.hp_amp_power_count, align 4
  br label %210

144:                                              ; preds = %2
  %145 = load i32, i32* @hp_amp_power.hp_amp_power_count, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* @hp_amp_power.hp_amp_power_count, align 4
  %147 = load i32, i32* @hp_amp_power.hp_amp_power_count, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %209

149:                                              ; preds = %144
  %150 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %151 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %149
  %156 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %157 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @RT5645_PR_BASE, align 8
  %160 = add nsw i64 %159, 62
  %161 = call i32 @regmap_write(i32 %158, i64 %160, i32 29696)
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %163 = load i32, i32* @RT5645_DEPOP_M3, align 4
  %164 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %162, i32 %163, i32 1847)
  %165 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %166 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* @RT5645_PR_BASE, align 8
  %169 = load i64, i64* @RT5645_MAMP_INT_REG2, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @regmap_write(i32 %167, i64 %170, i32 64512)
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %173 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %174 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %172, i32 %173, i32 4416)
  %175 = call i32 @msleep(i32 100)
  %176 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %177 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %178 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %176, i32 %177, i32 1)
  br label %208

179:                                              ; preds = %149
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %181 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %182 = load i32, i32* @RT5645_HP_SG_MASK, align 4
  %183 = load i32, i32* @RT5645_HP_L_SMT_MASK, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @RT5645_HP_R_SMT_MASK, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @RT5645_HP_SG_DIS, align 4
  %188 = load i32, i32* @RT5645_HP_L_SMT_DIS, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @RT5645_HP_R_SMT_DIS, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %180, i32 %181, i32 %186, i32 %191)
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %194 = load i32, i32* @RT5645_DEPOP_M1, align 4
  %195 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %193, i32 %194, i32 0)
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %197 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %198 = load i32, i32* @RT5645_PWR_HP_L, align 4
  %199 = load i32, i32* @RT5645_PWR_HP_R, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @RT5645_PWR_HA, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %196, i32 %197, i32 %202, i32 0)
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %205 = load i32, i32* @RT5645_DEPOP_M2, align 4
  %206 = load i32, i32* @RT5645_DEPOP_MASK, align 4
  %207 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %204, i32 %205, i32 %206, i32 0)
  br label %208

208:                                              ; preds = %179, %155
  br label %209

209:                                              ; preds = %208, %144
  br label %210

210:                                              ; preds = %209, %141
  ret void
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
