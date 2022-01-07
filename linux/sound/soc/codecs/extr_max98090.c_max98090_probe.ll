; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.max98090_cdata*, %struct.snd_soc_component*, i32 }
%struct.max98090_cdata = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"max98090_probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@M98090_REG_REVISION_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@M98090_REVA = common dso_local global i32 0, align 4
@MAX98090 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"MAX98090 REVID=0x%02x\0A\00", align 1
@M98091_REVA = common dso_local global i32 0, align 4
@MAX98091 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"MAX98091 REVID=0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unrecognized revision 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Mismatch in DT specified CODEC type.\0A\00", align 1
@M98090_JACK_STATE_NO_HEADSET = common dso_local global i32 0, align 4
@max98090_jack_work = common dso_local global i32 0, align 4
@max98090_pll_det_enable_work = common dso_local global i32 0, align 4
@max98090_pll_det_disable_work = common dso_local global i32 0, align 4
@max98090_pll_work = common dso_local global i32 0, align 4
@M98090_REG_JACK_DETECT = common dso_local global i32 0, align 4
@M98090_JDETEN_MASK = common dso_local global i32 0, align 4
@M98090_JDEB_25MS = common dso_local global i32 0, align 4
@M98090_REG_DEVICE_STATUS = common dso_local global i32 0, align 4
@M98090_REG_DAC_CONTROL = common dso_local global i32 0, align 4
@M98090_DACHP_MASK = common dso_local global i32 0, align 4
@M98090_DACHP_SHIFT = common dso_local global i32 0, align 4
@M98090_PERFMODE_MASK = common dso_local global i32 0, align 4
@M98090_PERFMODE_SHIFT = common dso_local global i32 0, align 4
@M98090_REG_ADC_CONTROL = common dso_local global i32 0, align 4
@M98090_ADCHP_MASK = common dso_local global i32 0, align 4
@M98090_ADCHP_SHIFT = common dso_local global i32 0, align 4
@M98090_REG_BIAS_CONTROL = common dso_local global i32 0, align 4
@M98090_VCM_MODE_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"maxim,micbias\00", align 1
@M98090_MBVSEL_2V8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"use default 2.8v micbias\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"micbias out of range 0x%x\0A\00", align 1
@M98090_REG_MIC_BIAS_VOLTAGE = common dso_local global i32 0, align 4
@M98090_MBVSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98090_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.max98090_priv*, align 8
  %5 = alloca %struct.max98090_cdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.max98090_priv* %11, %struct.max98090_priv** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @devm_clk_get(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %21 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 8
  %22 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %23 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %208

32:                                               ; preds = %1
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %35 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %34, i32 0, i32 13
  store %struct.snd_soc_component* %33, %struct.snd_soc_component** %35, align 8
  %36 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %37 = call i32 @max98090_reset(%struct.max98090_priv* %36)
  %38 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %39 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %41 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %43 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %45 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %44, i32 0, i32 12
  %46 = load %struct.max98090_cdata*, %struct.max98090_cdata** %45, align 8
  %47 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %46, i64 0
  store %struct.max98090_cdata* %47, %struct.max98090_cdata** %5, align 8
  %48 = load %struct.max98090_cdata*, %struct.max98090_cdata** %5, align 8
  %49 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  %50 = load %struct.max98090_cdata*, %struct.max98090_cdata** %5, align 8
  %51 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  %52 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %53 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %52, i32 0, i32 11
  store i64 0, i64* %53, align 8
  %54 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %55 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %54, i32 0, i32 10
  store i64 0, i64* %55, align 8
  %56 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %57 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @M98090_REG_REVISION_ID, align 4
  %60 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %32
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %206

69:                                               ; preds = %32
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @M98090_REVA, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @M98090_REVA, align 4
  %76 = add nsw i32 %75, 15
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @MAX98090, align 4
  store i32 %79, i32* %6, align 4
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %109

85:                                               ; preds = %73, %69
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @M98091_REVA, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @M98091_REVA, align 4
  %92 = add nsw i32 %91, 15
  %93 = icmp sle i32 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* @MAX98091, align 4
  store i32 %95, i32* %6, align 4
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i32, i8*, ...) @dev_info(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %108

101:                                              ; preds = %89, %85
  %102 = load i32, i32* @MAX98090, align 4
  store i32 %102, i32* %6, align 4
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %104 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108, %78
  %110 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %111 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_warn(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %122 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %109
  %124 = load i32, i32* @M98090_JACK_STATE_NO_HEADSET, align 4
  %125 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %126 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %128 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %127, i32 0, i32 7
  %129 = load i32, i32* @max98090_jack_work, align 4
  %130 = call i32 @INIT_DELAYED_WORK(i32* %128, i32 %129)
  %131 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %132 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %131, i32 0, i32 6
  %133 = load i32, i32* @max98090_pll_det_enable_work, align 4
  %134 = call i32 @INIT_DELAYED_WORK(i32* %132, i32 %133)
  %135 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %136 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %135, i32 0, i32 5
  %137 = load i32, i32* @max98090_pll_det_disable_work, align 4
  %138 = call i32 @INIT_WORK(i32* %136, i32 %137)
  %139 = load %struct.max98090_priv*, %struct.max98090_priv** %4, align 8
  %140 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %139, i32 0, i32 4
  %141 = load i32, i32* @max98090_pll_work, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %144 = load i32, i32* @M98090_REG_JACK_DETECT, align 4
  %145 = load i32, i32* @M98090_JDETEN_MASK, align 4
  %146 = load i32, i32* @M98090_JDEB_25MS, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %143, i32 %144, i32 %147)
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %150 = load i32, i32* @M98090_REG_DEVICE_STATUS, align 4
  %151 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %149, i32 %150)
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = load i32, i32* @M98090_REG_DAC_CONTROL, align 4
  %154 = load i32, i32* @M98090_DACHP_MASK, align 4
  %155 = load i32, i32* @M98090_DACHP_SHIFT, align 4
  %156 = shl i32 1, %155
  %157 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %152, i32 %153, i32 %154, i32 %156)
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %159 = load i32, i32* @M98090_REG_DAC_CONTROL, align 4
  %160 = load i32, i32* @M98090_PERFMODE_MASK, align 4
  %161 = load i32, i32* @M98090_PERFMODE_SHIFT, align 4
  %162 = shl i32 0, %161
  %163 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %158, i32 %159, i32 %160, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %165 = load i32, i32* @M98090_REG_ADC_CONTROL, align 4
  %166 = load i32, i32* @M98090_ADCHP_MASK, align 4
  %167 = load i32, i32* @M98090_ADCHP_SHIFT, align 4
  %168 = shl i32 1, %167
  %169 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %166, i32 %168)
  %170 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %171 = load i32, i32* @M98090_REG_BIAS_CONTROL, align 4
  %172 = load i32, i32* @M98090_VCM_MODE_MASK, align 4
  %173 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %170, i32 %171, i32 %172)
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @device_property_read_u32(i32 %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %123
  %181 = load i32, i32* @M98090_MBVSEL_2V8, align 4
  store i32 %181, i32* %9, align 4
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %183 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @dev_info(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %198

186:                                              ; preds = %123
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @M98090_MBVSEL_2V8, align 4
  %189 = icmp ugt i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %192 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @dev_err(i32 %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @M98090_MBVSEL_2V8, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %190, %186
  br label %198

198:                                              ; preds = %197, %180
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %200 = load i32, i32* @M98090_REG_MIC_BIAS_VOLTAGE, align 4
  %201 = load i32, i32* @M98090_MBVSEL_MASK, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %205 = call i32 @max98090_add_widgets(%struct.snd_soc_component* %204)
  br label %206

206:                                              ; preds = %198, %63
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %29
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @max98090_reset(%struct.max98090_priv*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @max98090_add_widgets(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
