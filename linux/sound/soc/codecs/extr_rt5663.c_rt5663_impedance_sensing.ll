; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_impedance_sensing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_impedance_sensing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SND_JACK_HEADSET = common dso_local global i64 0, align 8
@RT5663_MIC_DECRO_2 = common dso_local global i32 0, align 4
@RT5663_MIC_DECRO_3 = common dso_local global i32 0, align 4
@RT5663_MIC_DECRO_5 = common dso_local global i32 0, align 4
@RT5663_MIC_DECRO_6 = common dso_local global i32 0, align 4
@RT5663_ASRC_2 = common dso_local global i32 0, align 4
@RT5663_STO1_ADC_MIXER = common dso_local global i32 0, align 4
@RT5663_DUMMY_1 = common dso_local global i32 0, align 4
@RT5663_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_RECMIX = common dso_local global i32 0, align 4
@RT5663_GLB_CLK = common dso_local global i32 0, align 4
@RT5663_STO_DRE_1 = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5663_PWR_VREF1_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_VREF2_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_FV1_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_FV2_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5663_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5663_PWR_FV1 = common dso_local global i32 0, align 4
@RT5663_PWR_FV2 = common dso_local global i32 0, align 4
@RT5663_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5663_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@RT5663_RC_CLK = common dso_local global i32 0, align 4
@RT5663_DIG_25M_CLK_MASK = common dso_local global i32 0, align 4
@RT5663_DIG_25M_CLK_EN = common dso_local global i32 0, align 4
@RT5663_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5663_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5663_PRE_DIV_GATING_1 = common dso_local global i32 0, align 4
@RT5663_PRE_DIV_GATING_2 = common dso_local global i32 0, align 4
@RT5663_HP_LOGIC_2 = common dso_local global i32 0, align 4
@RT5663_DEPOP_2 = common dso_local global i32 0, align 4
@RT5663_DEPOP_1 = common dso_local global i32 0, align 4
@RT5663_PWR_DIG_2 = common dso_local global i32 0, align 4
@RT5663_PWR_ADC_S1F = common dso_local global i32 0, align 4
@RT5663_PWR_DAC_S1F = common dso_local global i32 0, align 4
@RT5663_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5663_PWR_DAC_L1 = common dso_local global i32 0, align 4
@RT5663_PWR_DAC_R1 = common dso_local global i32 0, align 4
@RT5663_PWR_LDO_DACREF_MASK = common dso_local global i32 0, align 4
@RT5663_PWR_ADC_L1 = common dso_local global i32 0, align 4
@RT5663_PWR_ADC_R1 = common dso_local global i32 0, align 4
@RT5663_PWR_LDO_DACREF_ON = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5663_PWR_RECMIX1 = common dso_local global i32 0, align 4
@RT5663_PWR_RECMIX2 = common dso_local global i32 0, align 4
@RT5663_HP_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@RT5663_STO_DAC_MIXER = common dso_local global i32 0, align 4
@RT5663_BYPASS_STO_DAC = common dso_local global i32 0, align 4
@RT5663_HP_BIAS = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_HP_OUT_EN = common dso_local global i32 0, align 4
@RT5663_CHOP_ADC = common dso_local global i32 0, align 4
@RT5663_ADDA_RST = common dso_local global i32 0, align 4
@RT5663_STO1_HPF_ADJ1 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_2 = common dso_local global i32 0, align 4
@RT5663_ANA_BIAS_CUR_1 = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@RT5663_STO_DRE_9 = common dso_local global i32 0, align 4
@RT5663_STO_DRE_10 = common dso_local global i32 0, align 4
@RT5663_DUMMY_2 = common dso_local global i32 0, align 4
@RT5663_HP_IMP_SEN_1 = common dso_local global i32 0, align 4
@RT5663_IRQ_3 = common dso_local global i32 0, align 4
@RT5663_HP_LOGIC_1 = common dso_local global i32 0, align 4
@RT5663_INT_ST_1 = common dso_local global i32 0, align 4
@RT5663_HP_IMP_SEN_4 = common dso_local global i32 0, align 4
@RT5663_DIG_25M_CLK_DIS = common dso_local global i32 0, align 4
@RT5663_DRE_GAIN_HP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5663_impedance_sensing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_impedance_sensing(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5663_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5663_priv* %13, %struct.rt5663_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SND_JACK_HEADSET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %36
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %44 = load i32, i32* @RT5663_MIC_DECRO_2, align 4
  %45 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 16
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %56 = load i32, i32* @RT5663_MIC_DECRO_3, align 4
  %57 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 65535
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = load i32, i32* @RT5663_MIC_DECRO_5, align 4
  %69 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 16
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %80 = load i32, i32* @RT5663_MIC_DECRO_6, align 4
  %81 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 65535
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 %89)
  br label %140

91:                                               ; preds = %36
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %93 = load i32, i32* @RT5663_MIC_DECRO_2, align 4
  %94 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %95 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 16
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %92, i32 %93, i32 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %105 = load i32, i32* @RT5663_MIC_DECRO_3, align 4
  %106 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %107 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65535
  %115 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %117 = load i32, i32* @RT5663_MIC_DECRO_5, align 4
  %118 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %119 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 16
  %127 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %116, i32 %117, i32 %126)
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %129 = load i32, i32* @RT5663_MIC_DECRO_6, align 4
  %130 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %131 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 65535
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %128, i32 %129, i32 %138)
  br label %140

140:                                              ; preds = %91, %42
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %142 = load i32, i32* @RT5663_ASRC_2, align 4
  %143 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %141, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %145 = load i32, i32* @RT5663_STO1_ADC_MIXER, align 4
  %146 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %148 = load i32, i32* @RT5663_DUMMY_1, align 4
  %149 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %151 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %152 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %154 = load i32, i32* @RT5663_RECMIX, align 4
  %155 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %153, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = load i32, i32* @RT5663_GLB_CLK, align 4
  %158 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %160 = load i32, i32* @RT5663_STO_DRE_1, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %159, i32 %160, i32 32768, i32 0)
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %163 = load i32, i32* @RT5663_ASRC_2, align 4
  %164 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %162, i32 %163, i32 0)
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %166 = load i32, i32* @RT5663_STO1_ADC_MIXER, align 4
  %167 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %165, i32 %166, i32 16448)
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %169 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %170 = load i32, i32* @RT5663_PWR_VREF1_MASK, align 4
  %171 = load i32, i32* @RT5663_PWR_VREF2_MASK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @RT5663_PWR_FV1_MASK, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @RT5663_PWR_FV2_MASK, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @RT5663_PWR_VREF1, align 4
  %178 = load i32, i32* @RT5663_PWR_VREF2, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %168, i32 %169, i32 %176, i32 %179)
  %181 = call i32 @usleep_range(i32 10000, i32 10005)
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %183 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %184 = load i32, i32* @RT5663_PWR_FV1_MASK, align 4
  %185 = load i32, i32* @RT5663_PWR_FV2_MASK, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @RT5663_PWR_FV1, align 4
  %188 = load i32, i32* @RT5663_PWR_FV2, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %182, i32 %183, i32 %186, i32 %189)
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %192 = load i32, i32* @RT5663_GLB_CLK, align 4
  %193 = load i32, i32* @RT5663_SCLK_SRC_MASK, align 4
  %194 = load i32, i32* @RT5663_SCLK_SRC_RCCLK, align 4
  %195 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %197 = load i32, i32* @RT5663_RC_CLK, align 4
  %198 = load i32, i32* @RT5663_DIG_25M_CLK_MASK, align 4
  %199 = load i32, i32* @RT5663_DIG_25M_CLK_EN, align 4
  %200 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %196, i32 %197, i32 %198, i32 %199)
  %201 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %202 = load i32, i32* @RT5663_ADDA_CLK_1, align 4
  %203 = load i32, i32* @RT5663_I2S_PD1_MASK, align 4
  %204 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %201, i32 %202, i32 %203, i32 0)
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %206 = load i32, i32* @RT5663_PRE_DIV_GATING_1, align 4
  %207 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %205, i32 %206, i32 65280)
  %208 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %209 = load i32, i32* @RT5663_PRE_DIV_GATING_2, align 4
  %210 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %208, i32 %209, i32 65532)
  %211 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %212 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %213 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %211, i32 %212, i32 4658)
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %215 = load i32, i32* @RT5663_HP_LOGIC_2, align 4
  %216 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %214, i32 %215, i32 5)
  %217 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %218 = load i32, i32* @RT5663_DEPOP_2, align 4
  %219 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %217, i32 %218, i32 12291)
  %220 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %221 = load i32, i32* @RT5663_DEPOP_1, align 4
  %222 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %220, i32 %221, i32 48, i32 48)
  %223 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %224 = load i32, i32* @RT5663_DEPOP_1, align 4
  %225 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %223, i32 %224, i32 3, i32 3)
  %226 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %227 = load i32, i32* @RT5663_PWR_DIG_2, align 4
  %228 = load i32, i32* @RT5663_PWR_ADC_S1F, align 4
  %229 = load i32, i32* @RT5663_PWR_DAC_S1F, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @RT5663_PWR_ADC_S1F, align 4
  %232 = load i32, i32* @RT5663_PWR_DAC_S1F, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %226, i32 %227, i32 %230, i32 %233)
  %235 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %236 = load i32, i32* @RT5663_PWR_DIG_1, align 4
  %237 = load i32, i32* @RT5663_PWR_DAC_L1, align 4
  %238 = load i32, i32* @RT5663_PWR_DAC_R1, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @RT5663_PWR_LDO_DACREF_MASK, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @RT5663_PWR_ADC_L1, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @RT5663_PWR_ADC_R1, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @RT5663_PWR_DAC_L1, align 4
  %247 = load i32, i32* @RT5663_PWR_DAC_R1, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @RT5663_PWR_LDO_DACREF_ON, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @RT5663_PWR_ADC_L1, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @RT5663_PWR_ADC_R1, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %235, i32 %236, i32 %245, i32 %254)
  %256 = call i32 @msleep(i32 40)
  %257 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %258 = load i32, i32* @RT5663_PWR_ANLG_2, align 4
  %259 = load i32, i32* @RT5663_PWR_RECMIX1, align 4
  %260 = load i32, i32* @RT5663_PWR_RECMIX2, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @RT5663_PWR_RECMIX1, align 4
  %263 = load i32, i32* @RT5663_PWR_RECMIX2, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %257, i32 %258, i32 %261, i32 %264)
  %266 = call i32 @msleep(i32 30)
  %267 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %268 = load i32, i32* @RT5663_HP_CHARGE_PUMP_2, align 4
  %269 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %267, i32 %268, i32 4977)
  %270 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %271 = load i32, i32* @RT5663_STO_DAC_MIXER, align 4
  %272 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %270, i32 %271, i32 0)
  %273 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %274 = load i32, i32* @RT5663_BYPASS_STO_DAC, align 4
  %275 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %273, i32 %274, i32 12)
  %276 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %277 = load i32, i32* @RT5663_HP_BIAS, align 4
  %278 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %276, i32 %277, i32 44970)
  %279 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %280 = load i32, i32* @RT5663_CHARGE_PUMP_1, align 4
  %281 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %279, i32 %280, i32 8740)
  %282 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %283 = load i32, i32* @RT5663_HP_OUT_EN, align 4
  %284 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %282, i32 %283, i32 32904)
  %285 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %286 = load i32, i32* @RT5663_CHOP_ADC, align 4
  %287 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %285, i32 %286, i32 12288)
  %288 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %289 = load i32, i32* @RT5663_ADDA_RST, align 4
  %290 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %288, i32 %289, i32 49152)
  %291 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %292 = load i32, i32* @RT5663_STO1_HPF_ADJ1, align 4
  %293 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %291, i32 %292, i32 13088)
  %294 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %295 = load i32, i32* @RT5663_HP_CALIB_2, align 4
  %296 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %294, i32 %295, i32 201)
  %297 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %298 = load i32, i32* @RT5663_DUMMY_1, align 4
  %299 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %297, i32 %298, i32 76)
  %300 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %301 = load i32, i32* @RT5663_ANA_BIAS_CUR_1, align 4
  %302 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %300, i32 %301, i32 30515)
  %303 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %304 = load i32, i32* @RT5663_CHARGE_PUMP_2, align 4
  %305 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %303, i32 %304, i32 30583)
  %306 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %307 = load i32, i32* @RT5663_STO_DRE_9, align 4
  %308 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %306, i32 %307, i32 7)
  %309 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %310 = load i32, i32* @RT5663_STO_DRE_10, align 4
  %311 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %309, i32 %310, i32 7)
  %312 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %313 = load i32, i32* @RT5663_DUMMY_2, align 4
  %314 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %312, i32 %313, i32 676)
  %315 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %316 = load i32, i32* @RT5663_RECMIX, align 4
  %317 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %315, i32 %316, i32 5)
  %318 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %319 = load i32, i32* @RT5663_HP_IMP_SEN_1, align 4
  %320 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %318, i32 %319, i32 17204)
  %321 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %322 = load i32, i32* @RT5663_IRQ_3, align 4
  %323 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %321, i32 %322, i32 4, i32 4)
  %324 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %325 = load i32, i32* @RT5663_HP_LOGIC_1, align 4
  %326 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %324, i32 %325, i32 8704)
  %327 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %328 = load i32, i32* @RT5663_DEPOP_1, align 4
  %329 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %327, i32 %328, i32 12288, i32 12288)
  %330 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %331 = load i32, i32* @RT5663_HP_LOGIC_1, align 4
  %332 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %330, i32 %331, i32 25088)
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %345, %140
  %334 = load i32, i32* %5, align 4
  %335 = icmp ult i32 %334, 100
  br i1 %335, label %336, label %348

336:                                              ; preds = %333
  %337 = call i32 @msleep(i32 20)
  %338 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %339 = load i32, i32* @RT5663_INT_ST_1, align 4
  %340 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %338, i32 %339)
  %341 = and i32 %340, 2
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %336
  br label %348

344:                                              ; preds = %336
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %5, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %5, align 4
  br label %333

348:                                              ; preds = %343, %333
  %349 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %350 = load i32, i32* @RT5663_HP_IMP_SEN_4, align 4
  %351 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %349, i32 %350)
  store i32 %351, i32* %4, align 4
  %352 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %353 = load i32, i32* @RT5663_DEPOP_1, align 4
  %354 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %352, i32 %353, i32 12288, i32 0)
  %355 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %356 = load i32, i32* @RT5663_INT_ST_1, align 4
  %357 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %355, i32 %356, i32 0)
  %358 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %359 = load i32, i32* @RT5663_HP_LOGIC_1, align 4
  %360 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %358, i32 %359, i32 0)
  %361 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %362 = load i32, i32* @RT5663_RC_CLK, align 4
  %363 = load i32, i32* @RT5663_DIG_25M_CLK_MASK, align 4
  %364 = load i32, i32* @RT5663_DIG_25M_CLK_DIS, align 4
  %365 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %361, i32 %362, i32 %363, i32 %364)
  %366 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %367 = load i32, i32* @RT5663_GLB_CLK, align 4
  %368 = load i32, i32* %11, align 4
  %369 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %366, i32 %367, i32 %368)
  %370 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %371 = load i32, i32* @RT5663_RECMIX, align 4
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %370, i32 %371, i32 %372)
  %374 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %375 = load i32, i32* @RT5663_DUMMY_2, align 4
  %376 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %374, i32 %375, i32 164)
  %377 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %378 = load i32, i32* @RT5663_DUMMY_1, align 4
  %379 = load i32, i32* %8, align 4
  %380 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %377, i32 %378, i32 %379)
  %381 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %382 = load i32, i32* @RT5663_HP_CALIB_2, align 4
  %383 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %381, i32 %382, i32 200)
  %384 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %385 = load i32, i32* @RT5663_STO1_HPF_ADJ1, align 4
  %386 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %384, i32 %385, i32 45856)
  %387 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %388 = load i32, i32* @RT5663_ADDA_RST, align 4
  %389 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %387, i32 %388, i32 58368)
  %390 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %391 = load i32, i32* @RT5663_CHOP_ADC, align 4
  %392 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %390, i32 %391, i32 8192)
  %393 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %394 = load i32, i32* @RT5663_HP_OUT_EN, align 4
  %395 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %393, i32 %394, i32 8)
  %396 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %397 = load i32, i32* @RT5663_PWR_ANLG_2, align 4
  %398 = load i32, i32* @RT5663_PWR_RECMIX1, align 4
  %399 = load i32, i32* @RT5663_PWR_RECMIX2, align 4
  %400 = or i32 %398, %399
  %401 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %396, i32 %397, i32 %400, i32 0)
  %402 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %403 = load i32, i32* @RT5663_PWR_DIG_1, align 4
  %404 = load i32, i32* @RT5663_PWR_DAC_L1, align 4
  %405 = load i32, i32* @RT5663_PWR_DAC_R1, align 4
  %406 = or i32 %404, %405
  %407 = load i32, i32* @RT5663_PWR_LDO_DACREF_MASK, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* @RT5663_PWR_ADC_L1, align 4
  %410 = or i32 %408, %409
  %411 = load i32, i32* @RT5663_PWR_ADC_R1, align 4
  %412 = or i32 %410, %411
  %413 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %402, i32 %403, i32 %412, i32 0)
  %414 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %415 = load i32, i32* @RT5663_PWR_DIG_2, align 4
  %416 = load i32, i32* @RT5663_PWR_ADC_S1F, align 4
  %417 = load i32, i32* @RT5663_PWR_DAC_S1F, align 4
  %418 = or i32 %416, %417
  %419 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %414, i32 %415, i32 %418, i32 0)
  %420 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %421 = load i32, i32* @RT5663_DEPOP_1, align 4
  %422 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %420, i32 %421, i32 3, i32 0)
  %423 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %424 = load i32, i32* @RT5663_DEPOP_1, align 4
  %425 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %423, i32 %424, i32 48, i32 0)
  %426 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %427 = load i32, i32* @RT5663_HP_LOGIC_2, align 4
  %428 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %426, i32 %427, i32 0)
  %429 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %430 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %431 = load i32, i32* %9, align 4
  %432 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %429, i32 %430, i32 %431)
  %433 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %434 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %435 = load i32, i32* @RT5663_PWR_VREF1_MASK, align 4
  %436 = load i32, i32* @RT5663_PWR_VREF2_MASK, align 4
  %437 = or i32 %435, %436
  %438 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %433, i32 %434, i32 %437, i32 0)
  %439 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %440 = load i32, i32* @RT5663_STO1_ADC_MIXER, align 4
  %441 = load i32, i32* %7, align 4
  %442 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %439, i32 %440, i32 %441)
  %443 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %444 = load i32, i32* @RT5663_ASRC_2, align 4
  %445 = load i32, i32* %6, align 4
  %446 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %443, i32 %444, i32 %445)
  store i32 0, i32* %5, align 4
  br label %447

447:                                              ; preds = %478, %348
  %448 = load i32, i32* %5, align 4
  %449 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %450 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp ult i32 %448, %452
  br i1 %453, label %454, label %481

454:                                              ; preds = %447
  %455 = load i32, i32* %4, align 4
  %456 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %457 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %456, i32 0, i32 1
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %457, align 8
  %459 = load i32, i32* %5, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = icmp uge i32 %455, %463
  br i1 %464, label %465, label %477

465:                                              ; preds = %454
  %466 = load i32, i32* %4, align 4
  %467 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %468 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %467, i32 0, i32 1
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %468, align 8
  %470 = load i32, i32* %5, align 4
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 4
  %475 = icmp ule i32 %466, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %465
  br label %481

477:                                              ; preds = %465, %454
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %5, align 4
  %480 = add i32 %479, 1
  store i32 %480, i32* %5, align 4
  br label %447

481:                                              ; preds = %476, %447
  %482 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %483 = load i32, i32* @RT5663_STO_DRE_9, align 4
  %484 = load i32, i32* @RT5663_DRE_GAIN_HP_MASK, align 4
  %485 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %486 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %485, i32 0, i32 1
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %486, align 8
  %488 = load i32, i32* %5, align 4
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %482, i32 %483, i32 %484, i32 %492)
  %494 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %495 = load i32, i32* @RT5663_STO_DRE_10, align 4
  %496 = load i32, i32* @RT5663_DRE_GAIN_HP_MASK, align 4
  %497 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %498 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %497, i32 0, i32 1
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %498, align 8
  %500 = load i32, i32* %5, align 4
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %494, i32 %495, i32 %496, i32 %504)
  %506 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %507 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @SND_JACK_HEADSET, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %560

511:                                              ; preds = %481
  %512 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %513 = load i32, i32* @RT5663_MIC_DECRO_2, align 4
  %514 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %515 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %514, i32 0, i32 1
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %515, align 8
  %517 = load i32, i32* %5, align 4
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = ashr i32 %521, 16
  %523 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %512, i32 %513, i32 %522)
  %524 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %525 = load i32, i32* @RT5663_MIC_DECRO_3, align 4
  %526 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %527 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %526, i32 0, i32 1
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** %527, align 8
  %529 = load i32, i32* %5, align 4
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = and i32 %533, 65535
  %535 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %524, i32 %525, i32 %534)
  %536 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %537 = load i32, i32* @RT5663_MIC_DECRO_5, align 4
  %538 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %539 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %538, i32 0, i32 1
  %540 = load %struct.TYPE_4__*, %struct.TYPE_4__** %539, align 8
  %541 = load i32, i32* %5, align 4
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = ashr i32 %545, 16
  %547 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %536, i32 %537, i32 %546)
  %548 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %549 = load i32, i32* @RT5663_MIC_DECRO_6, align 4
  %550 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %551 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %550, i32 0, i32 1
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %551, align 8
  %553 = load i32, i32* %5, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = and i32 %557, 65535
  %559 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %548, i32 %549, i32 %558)
  br label %609

560:                                              ; preds = %481
  %561 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %562 = load i32, i32* @RT5663_MIC_DECRO_2, align 4
  %563 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %564 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %563, i32 0, i32 1
  %565 = load %struct.TYPE_4__*, %struct.TYPE_4__** %564, align 8
  %566 = load i32, i32* %5, align 4
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 3
  %570 = load i32, i32* %569, align 4
  %571 = ashr i32 %570, 16
  %572 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %561, i32 %562, i32 %571)
  %573 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %574 = load i32, i32* @RT5663_MIC_DECRO_3, align 4
  %575 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %576 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %575, i32 0, i32 1
  %577 = load %struct.TYPE_4__*, %struct.TYPE_4__** %576, align 8
  %578 = load i32, i32* %5, align 4
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 4
  %583 = and i32 %582, 65535
  %584 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %573, i32 %574, i32 %583)
  %585 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %586 = load i32, i32* @RT5663_MIC_DECRO_5, align 4
  %587 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %588 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %587, i32 0, i32 1
  %589 = load %struct.TYPE_4__*, %struct.TYPE_4__** %588, align 8
  %590 = load i32, i32* %5, align 4
  %591 = zext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 4
  %595 = ashr i32 %594, 16
  %596 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %585, i32 %586, i32 %595)
  %597 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %598 = load i32, i32* @RT5663_MIC_DECRO_6, align 4
  %599 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %600 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %599, i32 0, i32 1
  %601 = load %struct.TYPE_4__*, %struct.TYPE_4__** %600, align 8
  %602 = load i32, i32* %5, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 4
  %607 = and i32 %606, 65535
  %608 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %597, i32 %598, i32 %607)
  br label %609

609:                                              ; preds = %560, %511
  ret i32 0
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
