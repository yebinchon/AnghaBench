; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5663_priv = type { i32 }

@RT5663_RESET = common dso_local global i32 0, align 4
@RT5663_ANA_BIAS_CUR_4 = common dso_local global i32 0, align 4
@RT5663_RC_CLK = common dso_local global i32 0, align 4
@RT5663_GLB_CLK = common dso_local global i32 0, align 4
@RT5663_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5663_VREF_RECMIX = common dso_local global i32 0, align 4
@RT5663_HP_IMP_SEN_19 = common dso_local global i32 0, align 4
@RT5663_DUMMY_1 = common dso_local global i32 0, align 4
@RT5663_DIG_MISC = common dso_local global i32 0, align 4
@RT5663_VREFADJ_OP = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_3 = common dso_local global i32 0, align 4
@RT5663_PRE_DIV_GATING_1 = common dso_local global i32 0, align 4
@RT5663_PRE_DIV_GATING_2 = common dso_local global i32 0, align 4
@RT5663_CBJ_1 = common dso_local global i32 0, align 4
@RT5663_IL_CMD_2 = common dso_local global i32 0, align 4
@RT5663_EM_JACK_TYPE_1 = common dso_local global i32 0, align 4
@RT5663_EM_JACK_TYPE_2 = common dso_local global i32 0, align 4
@RT5663_INT_ST_2 = common dso_local global i32 0, align 4
@RT5663_DEPOP_2 = common dso_local global i32 0, align 4
@RT5663_DEPOP_1 = common dso_local global i32 0, align 4
@RT5663_PWR_DIG_2 = common dso_local global i32 0, align 4
@RT5663_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5663_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_DUMMY_2 = common dso_local global i32 0, align 4
@RT5663_DACREF_LDO = common dso_local global i32 0, align 4
@RT5663_STO_DAC_MIXER = common dso_local global i32 0, align 4
@RT5663_BYPASS_STO_DAC = common dso_local global i32 0, align 4
@RT5663_HP_BIAS = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_HP_OUT_EN = common dso_local global i32 0, align 4
@RT5663_STO_DRE_9 = common dso_local global i32 0, align 4
@RT5663_STO_DRE_10 = common dso_local global i32 0, align 4
@RT5663_STO1_ADC_MIXER = common dso_local global i32 0, align 4
@RT5663_CHOP_ADC = common dso_local global i32 0, align 4
@RT5663_RECMIX = common dso_local global i32 0, align 4
@RT5663_ADDA_RST = common dso_local global i32 0, align 4
@RT5663_STO1_HPF_ADJ1 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_2 = common dso_local global i32 0, align 4
@RT5663_ANA_BIAS_CUR_1 = common dso_local global i32 0, align 4
@RT5663_BIAS_CUR_8 = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_1 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_3 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_1_1 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5663_priv*)* @rt5663_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5663_calibrate(%struct.rt5663_priv* %0) #0 {
  %2 = alloca %struct.rt5663_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt5663_priv* %0, %struct.rt5663_priv** %2, align 8
  %5 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RT5663_RESET, align 4
  %9 = call i32 @regmap_write(i32 %7, i32 %8, i32 0)
  %10 = call i32 @msleep(i32 20)
  %11 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %12 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RT5663_ANA_BIAS_CUR_4, align 4
  %15 = call i32 @regmap_write(i32 %13, i32 %14, i32 161)
  %16 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %17 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RT5663_RC_CLK, align 4
  %20 = call i32 @regmap_write(i32 %18, i32 %19, i32 896)
  %21 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %22 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RT5663_GLB_CLK, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 32768)
  %26 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %27 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RT5663_ADDA_CLK_1, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 4096)
  %31 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %32 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RT5663_VREF_RECMIX, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 50)
  %36 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %37 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RT5663_HP_IMP_SEN_19, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 12)
  %41 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %42 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RT5663_DUMMY_1, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 804)
  %46 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %47 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RT5663_DIG_MISC, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 32769)
  %51 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %52 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RT5663_VREFADJ_OP, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 3880)
  %56 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %57 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 41531)
  %61 = call i32 @msleep(i32 30)
  %62 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %63 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 62011)
  %67 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %68 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RT5663_PWR_ANLG_2, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 32768)
  %72 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %73 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RT5663_PWR_ANLG_3, align 4
  %76 = call i32 @regmap_write(i32 %74, i32 %75, i32 8)
  %77 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %78 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RT5663_PRE_DIV_GATING_1, align 4
  %81 = call i32 @regmap_write(i32 %79, i32 %80, i32 65535)
  %82 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %83 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RT5663_PRE_DIV_GATING_2, align 4
  %86 = call i32 @regmap_write(i32 %84, i32 %85, i32 65535)
  %87 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %88 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RT5663_CBJ_1, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 35856)
  %92 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %93 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RT5663_IL_CMD_2, align 4
  %96 = call i32 @regmap_write(i32 %94, i32 %95, i32 193)
  %97 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %98 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RT5663_EM_JACK_TYPE_1, align 4
  %101 = call i32 @regmap_write(i32 %99, i32 %100, i32 47232)
  %102 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %103 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RT5663_EM_JACK_TYPE_2, align 4
  %106 = call i32 @regmap_write(i32 %104, i32 %105, i32 16656)
  %107 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %108 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RT5663_EM_JACK_TYPE_2, align 4
  %111 = call i32 @regmap_write(i32 %109, i32 %110, i32 16664)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %1, %129
  %113 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %114 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RT5663_INT_ST_2, align 4
  %117 = call i32 @regmap_read(i32 %115, i32 %116, i32* %3)
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %124

123:                                              ; preds = %112
  br label %130

124:                                              ; preds = %121
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = icmp sgt i32 %126, 200
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %130

129:                                              ; preds = %124
  br label %112

130:                                              ; preds = %128, %123
  %131 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %132 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @RT5663_HP_IMP_SEN_19, align 4
  %135 = call i32 @regmap_write(i32 %133, i32 %134, i32 0)
  %136 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %137 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RT5663_DEPOP_2, align 4
  %140 = call i32 @regmap_write(i32 %138, i32 %139, i32 12291)
  %141 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %142 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RT5663_DEPOP_1, align 4
  %145 = call i32 @regmap_write(i32 %143, i32 %144, i32 56)
  %146 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %147 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RT5663_DEPOP_1, align 4
  %150 = call i32 @regmap_write(i32 %148, i32 %149, i32 59)
  %151 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %152 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @RT5663_PWR_DIG_2, align 4
  %155 = call i32 @regmap_write(i32 %153, i32 %154, i32 33792)
  %156 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %157 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RT5663_PWR_DIG_1, align 4
  %160 = call i32 @regmap_write(i32 %158, i32 %159, i32 36344)
  %161 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %162 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RT5663_PWR_ANLG_2, align 4
  %165 = call i32 @regmap_write(i32 %163, i32 %164, i32 32771)
  %166 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %167 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RT5663_PWR_ANLG_3, align 4
  %170 = call i32 @regmap_write(i32 %168, i32 %169, i32 396)
  %171 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %172 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %175 = call i32 @regmap_write(i32 %173, i32 %174, i32 7730)
  %176 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %177 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RT5663_DUMMY_2, align 4
  %180 = call i32 @regmap_write(i32 %178, i32 %179, i32 32905)
  %181 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %182 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RT5663_DACREF_LDO, align 4
  %185 = call i32 @regmap_write(i32 %183, i32 %184, i32 15115)
  %186 = call i32 @msleep(i32 40)
  %187 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %188 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @RT5663_STO_DAC_MIXER, align 4
  %191 = call i32 @regmap_write(i32 %189, i32 %190, i32 0)
  %192 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %193 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RT5663_BYPASS_STO_DAC, align 4
  %196 = call i32 @regmap_write(i32 %194, i32 %195, i32 12)
  %197 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %198 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @RT5663_HP_BIAS, align 4
  %201 = call i32 @regmap_write(i32 %199, i32 %200, i32 44970)
  %202 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %203 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @RT5663_CHARGE_PUMP_1, align 4
  %206 = call i32 @regmap_write(i32 %204, i32 %205, i32 8740)
  %207 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %208 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @RT5663_HP_OUT_EN, align 4
  %211 = call i32 @regmap_write(i32 %209, i32 %210, i32 32904)
  %212 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %213 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @RT5663_STO_DRE_9, align 4
  %216 = call i32 @regmap_write(i32 %214, i32 %215, i32 23)
  %217 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %218 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RT5663_STO_DRE_10, align 4
  %221 = call i32 @regmap_write(i32 %219, i32 %220, i32 23)
  %222 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %223 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @RT5663_STO1_ADC_MIXER, align 4
  %226 = call i32 @regmap_write(i32 %224, i32 %225, i32 16448)
  %227 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %228 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @RT5663_CHOP_ADC, align 4
  %231 = call i32 @regmap_write(i32 %229, i32 %230, i32 12288)
  %232 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %233 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @RT5663_RECMIX, align 4
  %236 = call i32 @regmap_write(i32 %234, i32 %235, i32 5)
  %237 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %238 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @RT5663_ADDA_RST, align 4
  %241 = call i32 @regmap_write(i32 %239, i32 %240, i32 49152)
  %242 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %243 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @RT5663_STO1_HPF_ADJ1, align 4
  %246 = call i32 @regmap_write(i32 %244, i32 %245, i32 13088)
  %247 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %248 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @RT5663_HP_CALIB_2, align 4
  %251 = call i32 @regmap_write(i32 %249, i32 %250, i32 201)
  %252 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %253 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @RT5663_DUMMY_1, align 4
  %256 = call i32 @regmap_write(i32 %254, i32 %255, i32 76)
  %257 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %258 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @RT5663_ANA_BIAS_CUR_1, align 4
  %261 = call i32 @regmap_write(i32 %259, i32 %260, i32 4369)
  %262 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %263 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @RT5663_BIAS_CUR_8, align 4
  %266 = call i32 @regmap_write(i32 %264, i32 %265, i32 17410)
  %267 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %268 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @RT5663_CHARGE_PUMP_2, align 4
  %271 = call i32 @regmap_write(i32 %269, i32 %270, i32 13073)
  %272 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %273 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @RT5663_HP_CALIB_1, align 4
  %276 = call i32 @regmap_write(i32 %274, i32 %275, i32 105)
  %277 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %278 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @RT5663_HP_CALIB_3, align 4
  %281 = call i32 @regmap_write(i32 %279, i32 %280, i32 1742)
  %282 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %283 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %286 = call i32 @regmap_write(i32 %284, i32 %285, i32 26624)
  %287 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %288 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @RT5663_CHARGE_PUMP_2, align 4
  %291 = call i32 @regmap_write(i32 %289, i32 %290, i32 4352)
  %292 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %293 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @RT5663_HP_CALIB_7, align 4
  %296 = call i32 @regmap_write(i32 %294, i32 %295, i32 87)
  %297 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %298 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %301 = call i32 @regmap_write(i32 %299, i32 %300, i32 59392)
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %130, %318
  %303 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %304 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %307 = call i32 @regmap_read(i32 %305, i32 %306, i32* %3)
  %308 = load i32, i32* %3, align 4
  %309 = and i32 %308, 32768
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %302
  %312 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %314

313:                                              ; preds = %302
  br label %321

314:                                              ; preds = %311
  %315 = load i32, i32* %4, align 4
  %316 = icmp sgt i32 %315, 200
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %393

318:                                              ; preds = %314
  %319 = load i32, i32* %4, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %4, align 4
  br label %302

321:                                              ; preds = %313
  %322 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %323 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %326 = call i32 @regmap_write(i32 %324, i32 %325, i32 25088)
  %327 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %328 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @RT5663_HP_CALIB_7, align 4
  %331 = call i32 @regmap_write(i32 %329, i32 %330, i32 89)
  %332 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %333 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %336 = call i32 @regmap_write(i32 %334, i32 %335, i32 57856)
  store i32 0, i32* %4, align 4
  br label %337

337:                                              ; preds = %321, %353
  %338 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %339 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @RT5663_HP_CALIB_1_1, align 4
  %342 = call i32 @regmap_read(i32 %340, i32 %341, i32* %3)
  %343 = load i32, i32* %3, align 4
  %344 = and i32 %343, 32768
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %337
  %347 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %349

348:                                              ; preds = %337
  br label %356

349:                                              ; preds = %346
  %350 = load i32, i32* %4, align 4
  %351 = icmp sgt i32 %350, 200
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  br label %393

353:                                              ; preds = %349
  %354 = load i32, i32* %4, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %4, align 4
  br label %337

356:                                              ; preds = %348
  %357 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %358 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @RT5663_EM_JACK_TYPE_1, align 4
  %361 = call i32 @regmap_write(i32 %359, i32 %360, i32 47328)
  %362 = call i32 @usleep_range(i32 10000, i32 10005)
  %363 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %364 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %367 = call i32 @regmap_write(i32 %365, i32 %366, i32 59)
  %368 = call i32 @usleep_range(i32 10000, i32 10005)
  %369 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %370 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @RT5663_PWR_DIG_1, align 4
  %373 = call i32 @regmap_write(i32 %371, i32 %372, i32 0)
  %374 = call i32 @usleep_range(i32 10000, i32 10005)
  %375 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %376 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @RT5663_DEPOP_1, align 4
  %379 = call i32 @regmap_write(i32 %377, i32 %378, i32 11)
  %380 = call i32 @usleep_range(i32 10000, i32 10005)
  %381 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %382 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @RT5663_DEPOP_1, align 4
  %385 = call i32 @regmap_write(i32 %383, i32 %384, i32 8)
  %386 = call i32 @usleep_range(i32 10000, i32 10005)
  %387 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %388 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @RT5663_PWR_ANLG_2, align 4
  %391 = call i32 @regmap_write(i32 %389, i32 %390, i32 0)
  %392 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %393

393:                                              ; preds = %356, %352, %317
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
