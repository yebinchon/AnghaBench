; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i64, i64, i64, %struct.max98095_cdata*, i64, i64, i32 }
%struct.max98095_cdata = type { i32, i32, i64, i64 }
%struct.i2c_client = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@max98095_report_jack = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"max98095\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@M98095_0FF_REV_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failure reading hardware revision: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Hardware revision: %c\0A\00", align 1
@M98095_097_PWR_SYS = common dso_local global i32 0, align 4
@M98095_PWRSV = common dso_local global i32 0, align 4
@M98095_048_MIX_DAC_LR = common dso_local global i32 0, align 4
@M98095_DAI1L_TO_DACL = common dso_local global i32 0, align 4
@M98095_DAI1R_TO_DACR = common dso_local global i32 0, align 4
@M98095_049_MIX_DAC_M = common dso_local global i32 0, align 4
@M98095_DAI2M_TO_DACM = common dso_local global i32 0, align 4
@M98095_DAI3M_TO_DACM = common dso_local global i32 0, align 4
@M98095_092_PWR_EN_OUT = common dso_local global i32 0, align 4
@M98095_SPK_SPREADSPECTRUM = common dso_local global i32 0, align 4
@M98095_045_CFG_DSP = common dso_local global i32 0, align 4
@M98095_DSPNORMAL = common dso_local global i32 0, align 4
@M98095_04E_CFG_HP = common dso_local global i32 0, align 4
@M98095_HPNORMAL = common dso_local global i32 0, align 4
@M98095_02C_DAI1_IOCFG = common dso_local global i32 0, align 4
@M98095_S1NORMAL = common dso_local global i32 0, align 4
@M98095_SDATA = common dso_local global i32 0, align 4
@M98095_036_DAI2_IOCFG = common dso_local global i32 0, align 4
@M98095_S2NORMAL = common dso_local global i32 0, align 4
@M98095_040_DAI3_IOCFG = common dso_local global i32 0, align 4
@M98095_S3NORMAL = common dso_local global i32 0, align 4
@M98095_SHDNRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98095_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.max98095_priv*, align 8
  %5 = alloca %struct.max98095_cdata*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.max98095_priv* %9, %struct.max98095_priv** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @devm_clk_get(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %15 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %17 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PTR_ERR(i32 %18)
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %193

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = call i32 @max98095_reset(%struct.snd_soc_component* %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.i2c_client* @to_i2c_client(i32 %31)
  store %struct.i2c_client* %32, %struct.i2c_client** %6, align 8
  %33 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %34 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %36 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %38 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %40 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %39, i32 0, i32 4
  %41 = load %struct.max98095_cdata*, %struct.max98095_cdata** %40, align 8
  %42 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %41, i64 0
  store %struct.max98095_cdata* %42, %struct.max98095_cdata** %5, align 8
  %43 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %44 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %46 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %48 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %50 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %52 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %51, i32 0, i32 4
  %53 = load %struct.max98095_cdata*, %struct.max98095_cdata** %52, align 8
  %54 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %53, i64 1
  store %struct.max98095_cdata* %54, %struct.max98095_cdata** %5, align 8
  %55 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %56 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %58 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %60 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %62 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %64 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %63, i32 0, i32 4
  %65 = load %struct.max98095_cdata*, %struct.max98095_cdata** %64, align 8
  %66 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %65, i64 2
  store %struct.max98095_cdata* %66, %struct.max98095_cdata** %5, align 8
  %67 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %68 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %70 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  %71 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %72 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.max98095_cdata*, %struct.max98095_cdata** %5, align 8
  %74 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %76 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %78 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %80 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %26
  %86 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @max98095_report_jack, align 4
  %90 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %96 = call i32 @request_threaded_irq(i64 %88, i32* null, i32 %89, i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.snd_soc_component* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %191

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105, %26
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @M98095_0FF_REV_ID, align 4
  %109 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %114 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %179

118:                                              ; preds = %106
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %120 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 64
  %124 = add nsw i32 %123, 65
  %125 = call i32 @dev_info(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %127 = load i32, i32* @M98095_097_PWR_SYS, align 4
  %128 = load i32, i32* @M98095_PWRSV, align 4
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %126, i32 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %131 = load i32, i32* @M98095_048_MIX_DAC_LR, align 4
  %132 = load i32, i32* @M98095_DAI1L_TO_DACL, align 4
  %133 = load i32, i32* @M98095_DAI1R_TO_DACR, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %134)
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %137 = load i32, i32* @M98095_049_MIX_DAC_M, align 4
  %138 = load i32, i32* @M98095_DAI2M_TO_DACM, align 4
  %139 = load i32, i32* @M98095_DAI3M_TO_DACM, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %136, i32 %137, i32 %140)
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %143 = load i32, i32* @M98095_092_PWR_EN_OUT, align 4
  %144 = load i32, i32* @M98095_SPK_SPREADSPECTRUM, align 4
  %145 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %142, i32 %143, i32 %144)
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %147 = load i32, i32* @M98095_045_CFG_DSP, align 4
  %148 = load i32, i32* @M98095_DSPNORMAL, align 4
  %149 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %146, i32 %147, i32 %148)
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %151 = load i32, i32* @M98095_04E_CFG_HP, align 4
  %152 = load i32, i32* @M98095_HPNORMAL, align 4
  %153 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %150, i32 %151, i32 %152)
  %154 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %155 = load i32, i32* @M98095_02C_DAI1_IOCFG, align 4
  %156 = load i32, i32* @M98095_S1NORMAL, align 4
  %157 = load i32, i32* @M98095_SDATA, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %154, i32 %155, i32 %158)
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %161 = load i32, i32* @M98095_036_DAI2_IOCFG, align 4
  %162 = load i32, i32* @M98095_S2NORMAL, align 4
  %163 = load i32, i32* @M98095_SDATA, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %160, i32 %161, i32 %164)
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %167 = load i32, i32* @M98095_040_DAI3_IOCFG, align 4
  %168 = load i32, i32* @M98095_S3NORMAL, align 4
  %169 = load i32, i32* @M98095_SDATA, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %166, i32 %167, i32 %170)
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %173 = call i32 @max98095_handle_pdata(%struct.snd_soc_component* %172)
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = load i32, i32* @M98095_097_PWR_SYS, align 4
  %176 = load i32, i32* @M98095_SHDNRUN, align 4
  %177 = load i32, i32* @M98095_SHDNRUN, align 4
  %178 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %174, i32 %175, i32 %176, i32 %177)
  store i32 0, i32* %2, align 4
  br label %193

179:                                              ; preds = %112
  %180 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %189 = call i32 @free_irq(i64 %187, %struct.snd_soc_component* %188)
  br label %190

190:                                              ; preds = %184, %179
  br label %191

191:                                              ; preds = %190, %99
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %118, %23
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @max98095_reset(%struct.snd_soc_component*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @max98095_handle_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
