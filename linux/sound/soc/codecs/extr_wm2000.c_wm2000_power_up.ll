; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i64, i32, i32, i64, i32, i32, i32 }

@ANC_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Beginning power up\0A\00", align 1
@WM2000_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Disabling MCLK divider\0A\00", align 1
@WM2000_REG_SYS_CTL2 = common dso_local global i32 0, align 4
@WM2000_MCLK_DIV2_ENA_CLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Enabling MCLK divider\0A\00", align 1
@WM2000_MCLK_DIV2_ENA_SET = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_CLR = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_SET = common dso_local global i32 0, align 4
@WM2000_REG_ANC_STAT = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_IDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ANC engine failed to reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_BOOT_COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"ANC engine failed to initialise\0A\00", align 1
@WM2000_RAM_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Downloading %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"i2c_transfer() failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"i2c_transfer() failed, %d != %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Download complete\0A\00", align 1
@WM2000_REG_ANA_VMID_PU_TIME = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_MOUSE_ENABLE = common dso_local global i32 0, align 4
@WM2000_MODE_THERMAL_ENABLE = common dso_local global i32 0, align 4
@WM2000_REG_SPEECH_CLARITY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Unable to read Speech Clarity: %d\0A\00", align 1
@WM2000_SPEECH_CLARITY = common dso_local global i32 0, align 4
@WM2000_REG_SYS_START0 = common dso_local global i32 0, align 4
@WM2000_REG_SYS_START1 = common dso_local global i32 0, align 4
@WM2000_ANC_INT_N_CLR = common dso_local global i32 0, align 4
@WM2000_STATUS_MOUSE_ACTIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Timed out waiting for device\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ANC active\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Analogue active\0A\00", align 1
@ANC_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_power_up(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm2000_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.wm2000_priv* @dev_get_drvdata(i32* %11)
  store %struct.wm2000_priv* %12, %struct.wm2000_priv** %6, align 8
  %13 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ANC_OFF, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %263

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %29 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_bulk_enable(i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %263

41:                                               ; preds = %24
  %42 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @clk_get_rate(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ule i64 %46, 13500000
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %54 = load i32, i32* @WM2000_MCLK_DIV2_ENA_CLR, align 4
  %55 = call i32 @wm2000_write(%struct.i2c_client* %52, i32 %53, i32 %54)
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %62 = load i32, i32* @WM2000_MCLK_DIV2_ENA_SET, align 4
  %63 = call i32 @wm2000_write(%struct.i2c_client* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %67 = load i32, i32* @WM2000_ANC_ENG_CLR, align 4
  %68 = call i32 @wm2000_write(%struct.i2c_client* %65, i32 %66, i32 %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %71 = load i32, i32* @WM2000_ANC_ENG_SET, align 4
  %72 = call i32 @wm2000_write(%struct.i2c_client* %69, i32 %70, i32 %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @WM2000_REG_ANC_STAT, align 4
  %75 = load i32, i32* @WM2000_ANC_ENG_IDLE, align 4
  %76 = call i32 @wm2000_poll_bit(%struct.i2c_client* %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %64
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %83 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regulator_bulk_disable(i32 %82, i32 %85)
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %263

89:                                               ; preds = %64
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %92 = load i32, i32* @WM2000_STATUS_BOOT_COMPLETE, align 4
  %93 = call i32 @wm2000_poll_bit(%struct.i2c_client* %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %89
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %100 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %101 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regulator_bulk_disable(i32 %99, i32 %102)
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %263

106:                                              ; preds = %89
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %109 = load i32, i32* @WM2000_RAM_SET, align 4
  %110 = call i32 @wm2000_write(%struct.i2c_client* %107, i32 %108, i32 %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %114 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 2
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %120 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %123 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @i2c_master_send(%struct.i2c_client* %118, i32 %121, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %106
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %134 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %135 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @regulator_bulk_disable(i32 %133, i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %263

139:                                              ; preds = %106
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %142 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %150 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %154 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %155 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @regulator_bulk_disable(i32 %153, i32 %156)
  %158 = load i32, i32* @EIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %263

160:                                              ; preds = %139
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %160
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load i32, i32* @WM2000_REG_ANA_VMID_PU_TIME, align 4
  %169 = call i32 @wm2000_write(%struct.i2c_client* %167, i32 %168, i32 62)
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %172 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %173 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @wm2000_write(%struct.i2c_client* %170, i32 %171, i32 %176)
  br label %185

178:                                              ; preds = %160
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %181 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %182 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @wm2000_write(%struct.i2c_client* %179, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %178, %166
  %186 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %187 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @WM2000_REG_SPEECH_CLARITY, align 4
  %190 = call i32 @regmap_read(i32 %188, i32 %189, i32* %8)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i32, i32* %9, align 4
  %197 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %199 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %200 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @regulator_bulk_disable(i32 %198, i32 %201)
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %3, align 4
  br label %263

204:                                              ; preds = %185
  %205 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %206 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i32, i32* @WM2000_SPEECH_CLARITY, align 4
  %211 = load i32, i32* %8, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %218

213:                                              ; preds = %204
  %214 = load i32, i32* @WM2000_SPEECH_CLARITY, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %8, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %213, %209
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = load i32, i32* @WM2000_REG_SPEECH_CLARITY, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @wm2000_write(%struct.i2c_client* %219, i32 %220, i32 %221)
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = load i32, i32* @WM2000_REG_SYS_START0, align 4
  %225 = call i32 @wm2000_write(%struct.i2c_client* %223, i32 %224, i32 51)
  %226 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %227 = load i32, i32* @WM2000_REG_SYS_START1, align 4
  %228 = call i32 @wm2000_write(%struct.i2c_client* %226, i32 %227, i32 2)
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %231 = load i32, i32* @WM2000_ANC_INT_N_CLR, align 4
  %232 = call i32 @wm2000_write(%struct.i2c_client* %229, i32 %230, i32 %231)
  %233 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %234 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %235 = load i32, i32* @WM2000_STATUS_MOUSE_ACTIVE, align 4
  %236 = call i32 @wm2000_poll_bit(%struct.i2c_client* %233, i32 %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %218
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = call i32 (i32*, i8*, ...) @dev_err(i32* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %242 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %243 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %244 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @regulator_bulk_disable(i32 %242, i32 %245)
  %247 = load i32, i32* @ETIMEDOUT, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %3, align 4
  br label %263

249:                                              ; preds = %218
  %250 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 0
  %252 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %251, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %253 = load i32, i32* %5, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 0
  %258 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %259

259:                                              ; preds = %255, %249
  %260 = load i64, i64* @ANC_ACTIVE, align 8
  %261 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %262 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %261, i32 0, i32 0
  store i64 %260, i64* %262, align 8
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %259, %238, %193, %145, %128, %95, %78, %35, %21
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.wm2000_priv* @dev_get_drvdata(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @wm2000_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @wm2000_poll_bit(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
