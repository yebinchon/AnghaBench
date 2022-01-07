; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { i32, %struct.wm8350* }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm8350_audio_platform_data* }
%struct.wm8350_audio_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WM8350_POWER_MGMT_1 = common dso_local global i32 0, align 4
@WM8350_VMID_MASK = common dso_local global i32 0, align 4
@WM8350_CODEC_ISEL_MASK = common dso_local global i32 0, align 4
@WM8350_VMID_50K = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8350_DAC_MUTE = common dso_local global i32 0, align 4
@WM8350_DAC_MUTE_ENA = common dso_local global i32 0, align 4
@WM8350_ANTI_POP_CONTROL = common dso_local global i32 0, align 4
@WM8350_VMID_5K = common dso_local global i32 0, align 4
@WM8350_VMIDEN = common dso_local global i32 0, align 4
@WM8350_VBUFEN = common dso_local global i32 0, align 4
@WM8350_VMID_300K = common dso_local global i32 0, align 4
@WM8350_BIASEN = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_3 = common dso_local global i32 0, align 4
@WM8350_OUT1L_ENA = common dso_local global i32 0, align 4
@WM8350_OUT1R_ENA = common dso_local global i32 0, align 4
@WM8350_OUT2L_ENA = common dso_local global i32 0, align 4
@WM8350_OUT2R_ENA = common dso_local global i32 0, align 4
@WM8350_OUTPUT_DRAIN_EN = common dso_local global i32 0, align 4
@WM8350_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_LOUT2_VOLUME = common dso_local global i32 0, align 4
@WM8350_ROUT2_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8350_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350_data*, align 8
  %7 = alloca %struct.wm8350*, align 8
  %8 = alloca %struct.wm8350_audio_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8350_data* %12, %struct.wm8350_data** %6, align 8
  %13 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %14 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %13, i32 0, i32 1
  %15 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  store %struct.wm8350* %15, %struct.wm8350** %7, align 8
  %16 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %17 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %18, align 8
  store %struct.wm8350_audio_platform_data* %19, %struct.wm8350_audio_platform_data** %8, align 8
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %304 [
    i32 130, label %21
    i32 129, label %41
    i32 128, label %55
    i32 131, label %183
  ]

21:                                               ; preds = %2
  %22 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %23 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %24 = call i32 @wm8350_reg_read(%struct.wm8350* %22, i32 %23)
  %25 = load i32, i32* @WM8350_VMID_MASK, align 4
  %26 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %31 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @WM8350_VMID_50K, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %36 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 14
  %39 = or i32 %34, %38
  %40 = call i32 @wm8350_reg_write(%struct.wm8350* %30, i32 %31, i32 %39)
  br label %304

41:                                               ; preds = %2
  %42 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %43 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %44 = call i32 @wm8350_reg_read(%struct.wm8350* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @WM8350_VMID_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %50 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @WM8350_VMID_50K, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wm8350_reg_write(%struct.wm8350* %49, i32 %50, i32 %53)
  br label %304

55:                                               ; preds = %2
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %57 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %56)
  %58 = icmp eq i32 %57, 131
  br i1 %58, label %59, label %162

59:                                               ; preds = %55
  %60 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %61 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %65 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @regulator_bulk_enable(i32 %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %305

72:                                               ; preds = %59
  %73 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %74 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %75 = load i32, i32* @WM8350_SYSCLK_ENA, align 4
  %76 = call i32 @wm8350_set_bits(%struct.wm8350* %73, i32 %74, i32 %75)
  %77 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %78 = load i32, i32* @WM8350_DAC_MUTE, align 4
  %79 = load i32, i32* @WM8350_DAC_MUTE_ENA, align 4
  %80 = call i32 @wm8350_set_bits(%struct.wm8350* %77, i32 %78, i32 %79)
  %81 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %82 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %83 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %84 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %87 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 2
  %90 = or i32 %85, %89
  %91 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %92 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 4
  %95 = or i32 %90, %94
  %96 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %97 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 6
  %100 = or i32 %95, %99
  %101 = call i32 @wm8350_reg_write(%struct.wm8350* %81, i32 %82, i32 %100)
  %102 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %103 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @msecs_to_jiffies(i32 %104)
  %106 = call i32 @schedule_timeout_interruptible(i32 %105)
  %107 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %108 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %109 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %110 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = call i32 @wm8350_reg_write(%struct.wm8350* %107, i32 %108, i32 %112)
  %114 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %115 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %116 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %117 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 14
  %120 = load i32, i32* @WM8350_VMID_5K, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WM8350_VMIDEN, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @WM8350_VBUFEN, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @wm8350_reg_write(%struct.wm8350* %114, i32 %115, i32 %125)
  %127 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %128 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @msecs_to_jiffies(i32 %129)
  %131 = call i32 @schedule_timeout_interruptible(i32 %130)
  %132 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %133 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %134 = call i32 @wm8350_reg_read(%struct.wm8350* %132, i32 %133)
  %135 = load i32, i32* @WM8350_VMID_MASK, align 4
  %136 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = and i32 %134, %138
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* @WM8350_VMID_300K, align 4
  %141 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %142 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 14
  %145 = or i32 %140, %144
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %149 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @wm8350_reg_write(%struct.wm8350* %148, i32 %149, i32 %150)
  %152 = load i32, i32* @WM8350_BIASEN, align 4
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %156 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @wm8350_reg_write(%struct.wm8350* %155, i32 %156, i32 %157)
  %159 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %160 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %161 = call i32 @wm8350_reg_write(%struct.wm8350* %159, i32 %160, i32 0)
  br label %182

162:                                              ; preds = %55
  %163 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %164 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %165 = call i32 @wm8350_reg_read(%struct.wm8350* %163, i32 %164)
  %166 = load i32, i32* @WM8350_VMID_MASK, align 4
  %167 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %168 = or i32 %166, %167
  %169 = xor i32 %168, -1
  %170 = and i32 %165, %169
  store i32 %170, i32* %9, align 4
  %171 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %172 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @WM8350_VMID_300K, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %177 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 14
  %180 = or i32 %175, %179
  %181 = call i32 @wm8350_reg_write(%struct.wm8350* %171, i32 %172, i32 %180)
  br label %182

182:                                              ; preds = %162, %72
  br label %304

183:                                              ; preds = %2
  %184 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %185 = load i32, i32* @WM8350_DAC_MUTE, align 4
  %186 = load i32, i32* @WM8350_DAC_MUTE_ENA, align 4
  %187 = call i32 @wm8350_set_bits(%struct.wm8350* %184, i32 %185, i32 %186)
  %188 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %189 = load i32, i32* @WM8350_POWER_MGMT_3, align 4
  %190 = load i32, i32* @WM8350_OUT1L_ENA, align 4
  %191 = load i32, i32* @WM8350_OUT1R_ENA, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @WM8350_OUT2L_ENA, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @WM8350_OUT2R_ENA, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @wm8350_set_bits(%struct.wm8350* %188, i32 %189, i32 %196)
  %198 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %199 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %200 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %201 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 8
  %204 = call i32 @wm8350_reg_write(%struct.wm8350* %198, i32 %199, i32 %203)
  %205 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %206 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %207 = call i32 @wm8350_reg_read(%struct.wm8350* %205, i32 %206)
  %208 = load i32, i32* @WM8350_VMIDEN, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %207, %209
  store i32 %210, i32* %9, align 4
  %211 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %212 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @wm8350_reg_write(%struct.wm8350* %211, i32 %212, i32 %213)
  %215 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %216 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @msecs_to_jiffies(i32 %217)
  %219 = call i32 @schedule_timeout_interruptible(i32 %218)
  %220 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %221 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %222 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %223 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 8
  %226 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %227 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %225, %228
  %230 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %231 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 2
  %234 = or i32 %229, %233
  %235 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %236 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 4
  %239 = or i32 %234, %238
  %240 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %241 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 6
  %244 = or i32 %239, %243
  %245 = call i32 @wm8350_reg_write(%struct.wm8350* %220, i32 %221, i32 %244)
  %246 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %247 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %248 = call i32 @wm8350_reg_read(%struct.wm8350* %246, i32 %247)
  %249 = load i32, i32* @WM8350_VBUFEN, align 4
  %250 = load i32, i32* @WM8350_VMID_MASK, align 4
  %251 = or i32 %249, %250
  %252 = xor i32 %251, -1
  %253 = and i32 %248, %252
  store i32 %253, i32* %9, align 4
  %254 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %255 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @WM8350_OUTPUT_DRAIN_EN, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @wm8350_reg_write(%struct.wm8350* %254, i32 %255, i32 %258)
  %260 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %261 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @msecs_to_jiffies(i32 %262)
  %264 = call i32 @schedule_timeout_interruptible(i32 %263)
  %265 = load i32, i32* @WM8350_BIASEN, align 4
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %9, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %9, align 4
  %269 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %270 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @wm8350_reg_write(%struct.wm8350* %269, i32 %270, i32 %271)
  %273 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %274 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %275 = call i32 @wm8350_reg_write(%struct.wm8350* %273, i32 %274, i32 0)
  %276 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %277 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %278 = load i32, i32* @WM8350_OUT1L_ENA, align 4
  %279 = call i32 @wm8350_clear_bits(%struct.wm8350* %276, i32 %277, i32 %278)
  %280 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %281 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %282 = load i32, i32* @WM8350_OUT1R_ENA, align 4
  %283 = call i32 @wm8350_clear_bits(%struct.wm8350* %280, i32 %281, i32 %282)
  %284 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %285 = load i32, i32* @WM8350_LOUT2_VOLUME, align 4
  %286 = load i32, i32* @WM8350_OUT2L_ENA, align 4
  %287 = call i32 @wm8350_clear_bits(%struct.wm8350* %284, i32 %285, i32 %286)
  %288 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %289 = load i32, i32* @WM8350_ROUT2_VOLUME, align 4
  %290 = load i32, i32* @WM8350_OUT2R_ENA, align 4
  %291 = call i32 @wm8350_clear_bits(%struct.wm8350* %288, i32 %289, i32 %290)
  %292 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %293 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %294 = load i32, i32* @WM8350_SYSCLK_ENA, align 4
  %295 = call i32 @wm8350_clear_bits(%struct.wm8350* %292, i32 %293, i32 %294)
  %296 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %297 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @ARRAY_SIZE(i32 %298)
  %300 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %301 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @regulator_bulk_disable(i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %2, %183, %182, %41, %21
  store i32 0, i32* %3, align 4
  br label %305

305:                                              ; preds = %304, %70
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
