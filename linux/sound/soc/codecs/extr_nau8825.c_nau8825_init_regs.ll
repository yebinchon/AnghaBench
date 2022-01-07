; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i32, i32, %struct.regmap*, i64, i64, i64, i64, i64 }
%struct.regmap = type { i32 }

@NAU8825_REG_IIC_ADDR_SET = common dso_local global i32 0, align 4
@NAU8825_REG_BIAS_ADJ = common dso_local global i32 0, align 4
@NAU8825_BIAS_VMID = common dso_local global i32 0, align 4
@NAU8825_REG_BOOST = common dso_local global i32 0, align 4
@NAU8825_GLOBAL_BIAS_EN = common dso_local global i32 0, align 4
@NAU8825_BIAS_VMID_SEL_MASK = common dso_local global i32 0, align 4
@NAU8825_BIAS_VMID_SEL_SFT = common dso_local global i32 0, align 4
@NAU8825_PRECHARGE_DIS = common dso_local global i32 0, align 4
@NAU8825_HP_BOOST_DIS = common dso_local global i32 0, align 4
@NAU8825_HP_BOOST_G_DIS = common dso_local global i32 0, align 4
@NAU8825_SHORT_SHUTDOWN_EN = common dso_local global i32 0, align 4
@NAU8825_REG_GPIO12_CTRL = common dso_local global i32 0, align 4
@NAU8825_JKDET_OUTPUT_EN = common dso_local global i32 0, align 4
@NAU8825_JKDET_PULL_EN = common dso_local global i32 0, align 4
@NAU8825_JKDET_PULL_UP = common dso_local global i32 0, align 4
@NAU8825_REG_JACK_DET_CTRL = common dso_local global i32 0, align 4
@NAU8825_JACK_POLARITY = common dso_local global i32 0, align 4
@NAU8825_JACK_INSERT_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@NAU8825_JACK_INSERT_DEBOUNCE_SFT = common dso_local global i32 0, align 4
@NAU8825_JACK_EJECT_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@NAU8825_JACK_EJECT_DEBOUNCE_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_PIN_PULLUP = common dso_local global i32 0, align 4
@NAU8825_IRQ_PIN_PULL_EN = common dso_local global i32 0, align 4
@NAU8825_REG_MIC_BIAS = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_VOLTAGE_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_ADC_RATE = common dso_local global i32 0, align 4
@NAU8825_ADC_SYNC_DOWN_MASK = common dso_local global i32 0, align 4
@NAU8825_ADC_SINC4_EN = common dso_local global i32 0, align 4
@NAU8825_ADC_SYNC_DOWN_64 = common dso_local global i32 0, align 4
@NAU8825_REG_DAC_CTRL1 = common dso_local global i32 0, align 4
@NAU8825_DAC_OVERSAMPLE_MASK = common dso_local global i32 0, align 4
@NAU8825_DAC_OVERSAMPLE_64 = common dso_local global i32 0, align 4
@NAU8825_REG_CHARGE_PUMP = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACR = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACL = common dso_local global i32 0, align 4
@NAU8825_BIAS_TESTDAC_EN = common dso_local global i32 0, align 4
@NAU8825_DAC_CLIP_OFF = common dso_local global i32 0, align 4
@NAU8825_REG_ANALOG_CONTROL_2 = common dso_local global i32 0, align 4
@NAU8825_HP_NON_CLASSG_CURRENT_2xADJ = common dso_local global i32 0, align 4
@NAU8825_DAC_CAPACITOR_MSB = common dso_local global i32 0, align 4
@NAU8825_DAC_CAPACITOR_LSB = common dso_local global i32 0, align 4
@NAU8825_REG_CLASSG_CTRL = common dso_local global i32 0, align 4
@NAU8825_CLASSG_TIMER_MASK = common dso_local global i32 0, align 4
@NAU8825_CLASSG_TIMER_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_RDAC = common dso_local global i32 0, align 4
@NAU8825_RDAC_CLK_DELAY_MASK = common dso_local global i32 0, align 4
@NAU8825_RDAC_VREF_MASK = common dso_local global i32 0, align 4
@NAU8825_RDAC_CLK_DELAY_SFT = common dso_local global i32 0, align 4
@NAU8825_RDAC_VREF_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_DACL_CTRL = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_SEL_MASK = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_SEL_L = common dso_local global i32 0, align 4
@NAU8825_REG_DACR_CTRL = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_SEL_R = common dso_local global i32 0, align 4
@NAU8825_REG_LEFT_TIME_SLOT = common dso_local global i32 0, align 4
@NAU8825_DIS_FS_SHORT_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_init_regs(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %4 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %5 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %4, i32 0, i32 4
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @NAU8825_REG_IIC_ADDR_SET, align 4
  %9 = call i32 @regmap_write(%struct.regmap* %7, i32 %8, i32 1)
  %10 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %11 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %10, i32 0, i32 4
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  %13 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %14 = load i32, i32* @NAU8825_BIAS_VMID, align 4
  %15 = load i32, i32* @NAU8825_BIAS_VMID, align 4
  %16 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %18 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %17, i32 0, i32 4
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  %20 = load i32, i32* @NAU8825_REG_BOOST, align 4
  %21 = load i32, i32* @NAU8825_GLOBAL_BIAS_EN, align 4
  %22 = load i32, i32* @NAU8825_GLOBAL_BIAS_EN, align 4
  %23 = call i32 @regmap_update_bits(%struct.regmap* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.regmap*, %struct.regmap** %3, align 8
  %25 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %26 = load i32, i32* @NAU8825_BIAS_VMID_SEL_MASK, align 4
  %27 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %28 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NAU8825_BIAS_VMID_SEL_SFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @regmap_update_bits(%struct.regmap* %24, i32 %25, i32 %26, i32 %31)
  %33 = load %struct.regmap*, %struct.regmap** %3, align 8
  %34 = load i32, i32* @NAU8825_REG_BOOST, align 4
  %35 = load i32, i32* @NAU8825_PRECHARGE_DIS, align 4
  %36 = load i32, i32* @NAU8825_HP_BOOST_DIS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NAU8825_HP_BOOST_G_DIS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NAU8825_SHORT_SHUTDOWN_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NAU8825_PRECHARGE_DIS, align 4
  %43 = load i32, i32* @NAU8825_HP_BOOST_DIS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NAU8825_HP_BOOST_G_DIS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @NAU8825_SHORT_SHUTDOWN_EN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_update_bits(%struct.regmap* %33, i32 %34, i32 %41, i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %3, align 8
  %51 = load i32, i32* @NAU8825_REG_GPIO12_CTRL, align 4
  %52 = load i32, i32* @NAU8825_JKDET_OUTPUT_EN, align 4
  %53 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %54 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %1
  br label %60

58:                                               ; preds = %1
  %59 = load i32, i32* @NAU8825_JKDET_OUTPUT_EN, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  %62 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %52, i32 %61)
  %63 = load %struct.regmap*, %struct.regmap** %3, align 8
  %64 = load i32, i32* @NAU8825_REG_GPIO12_CTRL, align 4
  %65 = load i32, i32* @NAU8825_JKDET_PULL_EN, align 4
  %66 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %67 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @NAU8825_JKDET_PULL_EN, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  %75 = call i32 @regmap_update_bits(%struct.regmap* %63, i32 %64, i32 %65, i32 %74)
  %76 = load %struct.regmap*, %struct.regmap** %3, align 8
  %77 = load i32, i32* @NAU8825_REG_GPIO12_CTRL, align 4
  %78 = load i32, i32* @NAU8825_JKDET_PULL_UP, align 4
  %79 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %80 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @NAU8825_JKDET_PULL_UP, align 4
  br label %86

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = call i32 @regmap_update_bits(%struct.regmap* %76, i32 %77, i32 %78, i32 %87)
  %89 = load %struct.regmap*, %struct.regmap** %3, align 8
  %90 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %91 = load i32, i32* @NAU8825_JACK_POLARITY, align 4
  %92 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %93 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @NAU8825_JACK_POLARITY, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  %101 = call i32 @regmap_update_bits(%struct.regmap* %89, i32 %90, i32 %91, i32 %100)
  %102 = load %struct.regmap*, %struct.regmap** %3, align 8
  %103 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %104 = load i32, i32* @NAU8825_JACK_INSERT_DEBOUNCE_MASK, align 4
  %105 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %106 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NAU8825_JACK_INSERT_DEBOUNCE_SFT, align 4
  %109 = shl i32 %107, %108
  %110 = call i32 @regmap_update_bits(%struct.regmap* %102, i32 %103, i32 %104, i32 %109)
  %111 = load %struct.regmap*, %struct.regmap** %3, align 8
  %112 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %113 = load i32, i32* @NAU8825_JACK_EJECT_DEBOUNCE_MASK, align 4
  %114 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %115 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NAU8825_JACK_EJECT_DEBOUNCE_SFT, align 4
  %118 = shl i32 %116, %117
  %119 = call i32 @regmap_update_bits(%struct.regmap* %111, i32 %112, i32 %113, i32 %118)
  %120 = load %struct.regmap*, %struct.regmap** %3, align 8
  %121 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %122 = load i32, i32* @NAU8825_IRQ_PIN_PULLUP, align 4
  %123 = load i32, i32* @NAU8825_IRQ_PIN_PULL_EN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @NAU8825_IRQ_PIN_PULLUP, align 4
  %126 = load i32, i32* @NAU8825_IRQ_PIN_PULL_EN, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @regmap_update_bits(%struct.regmap* %120, i32 %121, i32 %124, i32 %127)
  %129 = load %struct.regmap*, %struct.regmap** %3, align 8
  %130 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %131 = call i32 @regmap_update_bits(%struct.regmap* %129, i32 %130, i32 2047, i32 2047)
  %132 = load %struct.regmap*, %struct.regmap** %3, align 8
  %133 = load i32, i32* @NAU8825_REG_MIC_BIAS, align 4
  %134 = load i32, i32* @NAU8825_MICBIAS_VOLTAGE_MASK, align 4
  %135 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %136 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @regmap_update_bits(%struct.regmap* %132, i32 %133, i32 %134, i32 %137)
  %139 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %140 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %99
  %144 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %145 = call i32 @nau8825_setup_buttons(%struct.nau8825* %144)
  br label %146

146:                                              ; preds = %143, %99
  %147 = load %struct.regmap*, %struct.regmap** %3, align 8
  %148 = load i32, i32* @NAU8825_REG_ADC_RATE, align 4
  %149 = load i32, i32* @NAU8825_ADC_SYNC_DOWN_MASK, align 4
  %150 = load i32, i32* @NAU8825_ADC_SINC4_EN, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @NAU8825_ADC_SYNC_DOWN_64, align 4
  %153 = call i32 @regmap_update_bits(%struct.regmap* %147, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.regmap*, %struct.regmap** %3, align 8
  %155 = load i32, i32* @NAU8825_REG_DAC_CTRL1, align 4
  %156 = load i32, i32* @NAU8825_DAC_OVERSAMPLE_MASK, align 4
  %157 = load i32, i32* @NAU8825_DAC_OVERSAMPLE_64, align 4
  %158 = call i32 @regmap_update_bits(%struct.regmap* %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.regmap*, %struct.regmap** %3, align 8
  %160 = load i32, i32* @NAU8825_REG_CHARGE_PUMP, align 4
  %161 = load i32, i32* @NAU8825_POWER_DOWN_DACR, align 4
  %162 = load i32, i32* @NAU8825_POWER_DOWN_DACL, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @NAU8825_POWER_DOWN_DACR, align 4
  %165 = load i32, i32* @NAU8825_POWER_DOWN_DACL, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @regmap_update_bits(%struct.regmap* %159, i32 %160, i32 %163, i32 %166)
  %168 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %169 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %168, i32 0, i32 4
  %170 = load %struct.regmap*, %struct.regmap** %169, align 8
  %171 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %172 = load i32, i32* @NAU8825_BIAS_TESTDAC_EN, align 4
  %173 = load i32, i32* @NAU8825_BIAS_TESTDAC_EN, align 4
  %174 = call i32 @regmap_update_bits(%struct.regmap* %170, i32 %171, i32 %172, i32 %173)
  %175 = load %struct.regmap*, %struct.regmap** %3, align 8
  %176 = load i32, i32* @NAU8825_REG_DAC_CTRL1, align 4
  %177 = load i32, i32* @NAU8825_DAC_CLIP_OFF, align 4
  %178 = load i32, i32* @NAU8825_DAC_CLIP_OFF, align 4
  %179 = call i32 @regmap_update_bits(%struct.regmap* %175, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.regmap*, %struct.regmap** %3, align 8
  %181 = load i32, i32* @NAU8825_REG_ANALOG_CONTROL_2, align 4
  %182 = load i32, i32* @NAU8825_HP_NON_CLASSG_CURRENT_2xADJ, align 4
  %183 = load i32, i32* @NAU8825_DAC_CAPACITOR_MSB, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @NAU8825_DAC_CAPACITOR_LSB, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @NAU8825_HP_NON_CLASSG_CURRENT_2xADJ, align 4
  %188 = load i32, i32* @NAU8825_DAC_CAPACITOR_MSB, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @NAU8825_DAC_CAPACITOR_LSB, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @regmap_update_bits(%struct.regmap* %180, i32 %181, i32 %186, i32 %191)
  %193 = load %struct.regmap*, %struct.regmap** %3, align 8
  %194 = load i32, i32* @NAU8825_REG_CLASSG_CTRL, align 4
  %195 = load i32, i32* @NAU8825_CLASSG_TIMER_MASK, align 4
  %196 = load i32, i32* @NAU8825_CLASSG_TIMER_SFT, align 4
  %197 = shl i32 32, %196
  %198 = call i32 @regmap_update_bits(%struct.regmap* %193, i32 %194, i32 %195, i32 %197)
  %199 = load %struct.regmap*, %struct.regmap** %3, align 8
  %200 = load i32, i32* @NAU8825_REG_RDAC, align 4
  %201 = load i32, i32* @NAU8825_RDAC_CLK_DELAY_MASK, align 4
  %202 = load i32, i32* @NAU8825_RDAC_VREF_MASK, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @NAU8825_RDAC_CLK_DELAY_SFT, align 4
  %205 = shl i32 2, %204
  %206 = load i32, i32* @NAU8825_RDAC_VREF_SFT, align 4
  %207 = shl i32 3, %206
  %208 = or i32 %205, %207
  %209 = call i32 @regmap_update_bits(%struct.regmap* %199, i32 %200, i32 %203, i32 %208)
  %210 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %211 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %210, i32 0, i32 4
  %212 = load %struct.regmap*, %struct.regmap** %211, align 8
  %213 = load i32, i32* @NAU8825_REG_DACL_CTRL, align 4
  %214 = load i32, i32* @NAU8825_DACL_CH_SEL_MASK, align 4
  %215 = load i32, i32* @NAU8825_DACL_CH_SEL_L, align 4
  %216 = call i32 @regmap_update_bits(%struct.regmap* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %218 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %217, i32 0, i32 4
  %219 = load %struct.regmap*, %struct.regmap** %218, align 8
  %220 = load i32, i32* @NAU8825_REG_DACR_CTRL, align 4
  %221 = load i32, i32* @NAU8825_DACL_CH_SEL_MASK, align 4
  %222 = load i32, i32* @NAU8825_DACL_CH_SEL_R, align 4
  %223 = call i32 @regmap_update_bits(%struct.regmap* %219, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.regmap*, %struct.regmap** %3, align 8
  %225 = load i32, i32* @NAU8825_REG_LEFT_TIME_SLOT, align 4
  %226 = load i32, i32* @NAU8825_DIS_FS_SHORT_DET, align 4
  %227 = load i32, i32* @NAU8825_DIS_FS_SHORT_DET, align 4
  %228 = call i32 @regmap_update_bits(%struct.regmap* %224, i32 %225, i32 %226, i32 %227)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8825_setup_buttons(%struct.nau8825*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
