; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8961_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8961_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM8961_PWR_MGMT_2 = common dso_local global i32 0, align 4
@WM8961_DC_SERVO_1 = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@WM8961_HPR_RMV_SHORT = common dso_local global i32 0, align 4
@WM8961_HPL_RMV_SHORT = common dso_local global i32 0, align 4
@WM8961_CP_ENA = common dso_local global i32 0, align 4
@WM8961_LOUT1_PGA = common dso_local global i32 0, align 4
@WM8961_ROUT1_PGA = common dso_local global i32 0, align 4
@WM8961_HPR_ENA = common dso_local global i32 0, align 4
@WM8961_HPL_ENA = common dso_local global i32 0, align 4
@WM8961_HPR_ENA_DLY = common dso_local global i32 0, align 4
@WM8961_HPL_ENA_DLY = common dso_local global i32 0, align 4
@WM8961_DCS_ENA_CHAN_HPR = common dso_local global i32 0, align 4
@WM8961_DCS_TRIG_STARTUP_HPR = common dso_local global i32 0, align 4
@WM8961_DCS_ENA_CHAN_HPL = common dso_local global i32 0, align 4
@WM8961_DCS_TRIG_STARTUP_HPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enabling DC servo\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DC servo startup complete\0A\00", align 1
@WM8961_HPR_ENA_OUTP = common dso_local global i32 0, align 4
@WM8961_HPL_ENA_OUTP = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Disabling charge pump\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8961_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  store i32 500, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %150

33:                                               ; preds = %3
  %34 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %35 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %41 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @WM8961_CP_ENA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 %49)
  %51 = call i32 @mdelay(i32 5)
  %52 = load i32, i32* @WM8961_LOUT1_PGA, align 4
  %53 = load i32, i32* @WM8961_ROUT1_PGA, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @WM8961_HPR_ENA, align 4
  %62 = load i32, i32* @WM8961_HPL_ENA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %67 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @WM8961_HPR_ENA_DLY, align 4
  %71 = load i32, i32* @WM8961_HPL_ENA_DLY, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %76 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPR, align 4
  %80 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %93 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %112, %33
  %97 = call i32 @msleep(i32 1)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %99 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %100 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %108 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %105, %101
  %113 = phi i1 [ false, %101 ], [ %111, %105 ]
  br i1 %113, label %96, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %117 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %131

126:                                              ; preds = %114
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %128 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i32, i32* @WM8961_HPR_ENA_OUTP, align 4
  %133 = load i32, i32* @WM8961_HPL_ENA_OUTP, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %138 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %137, i32 %138, i32 %139)
  %141 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %142 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %147 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %131, %3
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %221

155:                                              ; preds = %150
  %156 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %157 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %163 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %162, i32 %163, i32 %164)
  %166 = load i32, i32* @WM8961_HPR_ENA_OUTP, align 4
  %167 = load i32, i32* @WM8961_HPL_ENA_OUTP, align 4
  %168 = or i32 %166, %167
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %173 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %172, i32 %173, i32 %174)
  %176 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPR, align 4
  %177 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPL, align 4
  %178 = or i32 %176, %177
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %11, align 4
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %183 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %182, i32 %183, i32 %184)
  %186 = load i32, i32* @WM8961_HPR_ENA_DLY, align 4
  %187 = load i32, i32* @WM8961_HPR_ENA, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @WM8961_HPL_ENA_DLY, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @WM8961_HPL_ENA, align 4
  %192 = or i32 %190, %191
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %197 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %196, i32 %197, i32 %198)
  %200 = load i32, i32* @WM8961_LOUT1_PGA, align 4
  %201 = load i32, i32* @WM8961_ROUT1_PGA, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %10, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %10, align 4
  %206 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %207 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %206, i32 %207, i32 %208)
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %211 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dev_dbg(i32 %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %215 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @WM8961_CP_ENA, align 4
  %218 = xor i32 %217, -1
  %219 = and i32 %216, %218
  %220 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %214, i32 %215, i32 %219)
  br label %221

221:                                              ; preds = %155, %150
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
