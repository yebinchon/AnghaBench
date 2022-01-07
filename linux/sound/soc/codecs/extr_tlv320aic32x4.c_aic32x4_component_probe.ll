; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic32x4_priv = type { i32, i32, i64, i32 }
%struct.clk_bulk_data = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"codec_clkin\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bdiv\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mdac\00", align 1
@AIC32X4_RESET = common dso_local global i32 0, align 4
@AIC32X4_PWR_MICBIAS_2075_LDOIN = common dso_local global i32 0, align 4
@AIC32X4_MICBIAS = common dso_local global i32 0, align 4
@AIC32X4_MICBIAS_LDOIN = common dso_local global i32 0, align 4
@AIC32X4_MICBIAS_2075V = common dso_local global i32 0, align 4
@AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE = common dso_local global i32 0, align 4
@AIC32X4_PWRCFG = common dso_local global i32 0, align 4
@AIC32X4_AVDDWEAKDISABLE = common dso_local global i32 0, align 4
@AIC32X4_PWR_AIC32X4_LDO_ENABLE = common dso_local global i32 0, align 4
@AIC32X4_LDOCTLEN = common dso_local global i32 0, align 4
@AIC32X4_LDOCTL = common dso_local global i32 0, align 4
@AIC32X4_CMMODE = common dso_local global i32 0, align 4
@AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36 = common dso_local global i32 0, align 4
@AIC32X4_LDOIN_18_36 = common dso_local global i32 0, align 4
@AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED = common dso_local global i32 0, align 4
@AIC32X4_LDOIN2HP = common dso_local global i32 0, align 4
@AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K = common dso_local global i32 0, align 4
@AIC32X4_LMICPGANIN = common dso_local global i32 0, align 4
@AIC32X4_LMICPGANIN_IN2R_10K = common dso_local global i32 0, align 4
@AIC32X4_LMICPGANIN_CM1L_10K = common dso_local global i32 0, align 4
@AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K = common dso_local global i32 0, align 4
@AIC32X4_RMICPGANIN = common dso_local global i32 0, align 4
@AIC32X4_RMICPGANIN_IN1L_10K = common dso_local global i32 0, align 4
@AIC32X4_RMICPGANIN_CM1R_10K = common dso_local global i32 0, align 4
@AIC32X4_ADCSETUP = common dso_local global i32 0, align 4
@AIC32X4_LADC_EN = common dso_local global i32 0, align 4
@AIC32X4_RADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic32x4_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.aic32x4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.clk_bulk_data], align 16
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.aic32x4_priv* %9, %struct.aic32x4_priv** %4, align 8
  %10 = bitcast [4 x %struct.clk_bulk_data]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false)
  %11 = bitcast i8* %10 to [4 x %struct.clk_bulk_data]*
  %12 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %11, i32 0, i32 2
  %17 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %11, i32 0, i32 3
  %19 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %19, align 16
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(%struct.clk_bulk_data* %23)
  %25 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %26 = call i32 @devm_clk_bulk_get(i32 %22, i32 %24, %struct.clk_bulk_data* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %189

31:                                               ; preds = %1
  %32 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = call i32 @ndelay(i32 10)
  %39 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %40 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @gpio_set_value(i32 %41, i32 1)
  %43 = call i32 @mdelay(i32 1)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @AIC32X4_RESET, align 4
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 1)
  %48 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %49 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = call i32 @aic32x4_setup_gpios(%struct.snd_soc_component* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %57 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 1
  %60 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_set_parent(i32 %58, i32 %61)
  %63 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 2
  %64 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [4 x %struct.clk_bulk_data], [4 x %struct.clk_bulk_data]* %7, i64 0, i64 3
  %67 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_set_parent(i32 %65, i32 %68)
  %70 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %71 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AIC32X4_PWR_MICBIAS_2075_LDOIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %55
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = load i32, i32* @AIC32X4_MICBIAS, align 4
  %79 = load i32, i32* @AIC32X4_MICBIAS_LDOIN, align 4
  %80 = load i32, i32* @AIC32X4_MICBIAS_2075V, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %55
  %84 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %85 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = load i32, i32* @AIC32X4_PWRCFG, align 4
  %93 = load i32, i32* @AIC32X4_AVDDWEAKDISABLE, align 4
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %97 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AIC32X4_PWR_AIC32X4_LDO_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @AIC32X4_LDOCTLEN, align 4
  br label %105

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  store i32 %106, i32* %5, align 4
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @AIC32X4_LDOCTL, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %107, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %112 = load i32, i32* @AIC32X4_CMMODE, align 4
  %113 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %115 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load i32, i32* @AIC32X4_LDOIN_18_36, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %105
  %125 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %126 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @AIC32X4_LDOIN2HP, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %137 = load i32, i32* @AIC32X4_CMMODE, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %136, i32 %137, i32 %138)
  %140 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %141 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %148 = load i32, i32* @AIC32X4_LMICPGANIN, align 4
  %149 = load i32, i32* @AIC32X4_LMICPGANIN_IN2R_10K, align 4
  %150 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %147, i32 %148, i32 %149)
  br label %156

151:                                              ; preds = %135
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = load i32, i32* @AIC32X4_LMICPGANIN, align 4
  %154 = load i32, i32* @AIC32X4_LMICPGANIN_CM1L_10K, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %158 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %165 = load i32, i32* @AIC32X4_RMICPGANIN, align 4
  %166 = load i32, i32* @AIC32X4_RMICPGANIN_IN1L_10K, align 4
  %167 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %164, i32 %165, i32 %166)
  br label %173

168:                                              ; preds = %156
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %170 = load i32, i32* @AIC32X4_RMICPGANIN, align 4
  %171 = load i32, i32* @AIC32X4_RMICPGANIN_CM1R_10K, align 4
  %172 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = load i32, i32* @AIC32X4_ADCSETUP, align 4
  %176 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %178 = load i32, i32* @AIC32X4_ADCSETUP, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @AIC32X4_LADC_EN, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @AIC32X4_RADC_EN, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %177, i32 %178, i32 %183)
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %186 = load i32, i32* @AIC32X4_ADCSETUP, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %185, i32 %186, i32 %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %173, %29
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.clk_bulk_data*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.clk_bulk_data*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @aic32x4_setup_gpios(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
