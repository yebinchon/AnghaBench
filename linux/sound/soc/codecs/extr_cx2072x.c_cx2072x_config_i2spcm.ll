; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_config_i2spcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_config_i2spcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2072x_priv = type { i32, i32, i32, i32, i32, i64, %struct.device* }
%struct.device = type { i32 }
%union.cx2072x_reg_i2spcm_ctrl_reg1 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.cx2072x_reg_i2spcm_ctrl_reg2 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%union.cx2072x_reg_i2spcm_ctrl_reg3 = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }
%union.cx2072x_reg_i2spcm_ctrl_reg4 = type { i32 }
%union.cx2072x_reg_i2spcm_ctrl_reg5 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.cx2072x_reg_i2spcm_ctrl_reg6 = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%union.cx2072x_reg_digital_bios_test2 = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Incorrect frame len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Incorrect sample size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"config_i2spcm set_dai_fmt- %08x\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Sets Master mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Sets Slave mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unsupported DAI master mode\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Unsupported DAI format\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Unsupported DAI clock inversion\0A\00", align 1
@BITS_PER_SLOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"TDM mode is not implemented yet\0A\00", align 1
@CX2072X_I2SPCM_CONTROL5 = common dso_local global i32 0, align 4
@PLL_OUT_HZ_48 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"Unsupported BCLK %dHz\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"enables BCLK %dHz output\0A\00", align 1
@CX2072X_I2SPCM_CONTROL1 = common dso_local global i32 0, align 4
@CX2072X_I2SPCM_CONTROL2 = common dso_local global i32 0, align 4
@CX2072X_I2SPCM_CONTROL3 = common dso_local global i32 0, align 4
@CX2072X_I2SPCM_CONTROL4 = common dso_local global i32 0, align 4
@CX2072X_I2SPCM_CONTROL6 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_BIOS_TEST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx2072x_priv*)* @cx2072x_config_i2spcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_config_i2spcm(%struct.cx2072x_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx2072x_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg1, align 4
  %20 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg2, align 8
  %21 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg3, align 8
  %22 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg4, align 4
  %23 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg5, align 8
  %24 = alloca %union.cx2072x_reg_i2spcm_ctrl_reg6, align 4
  %25 = alloca %union.cx2072x_reg_digital_bios_test2, align 4
  %26 = alloca i32, align 4
  store %struct.cx2072x_priv* %0, %struct.cx2072x_priv** %3, align 8
  %27 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %28 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %27, i32 0, i32 6
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %30 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %31 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %34 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %36 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %37 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %26, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %355

47:                                               ; preds = %1
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %355

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %26, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = bitcast %union.cx2072x_reg_digital_bios_test2* %25 to i32*
  store i32 172, i32* %60, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %78 [
    i32 136, label %64
    i32 135, label %71
  ]

64:                                               ; preds = %56
  %65 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %83

71:                                               ; preds = %56
  %72 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %83

78:                                               ; preds = %56
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %355

83:                                               ; preds = %71, %64
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %96 [
    i32 134, label %87
    i32 128, label %90
    i32 131, label %93
  ]

87:                                               ; preds = %83
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %10, align 4
  br label %101

90:                                               ; preds = %83
  store i32 1, i32* %6, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %10, align 4
  br label %101

93:                                               ; preds = %83
  store i32 1, i32* %6, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %10, align 4
  br label %101

96:                                               ; preds = %83
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %355

101:                                              ; preds = %93, %90, %87
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %104 = and i32 %102, %103
  switch i32 %104, label %129 [
    i32 129, label %105
    i32 133, label %108
    i32 132, label %117
    i32 130, label %123
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %9, align 4
  br label %134

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %9, align 4
  br label %134

117:                                              ; preds = %101
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %9, align 4
  br label %134

123:                                              ; preds = %101
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %9, align 4
  br label %134

129:                                              ; preds = %101
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %355

134:                                              ; preds = %123, %117, %108, %105
  %135 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  %137 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load i32, i32* %11, align 4
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* @BITS_PER_SLOT, align 4
  %145 = sdiv i32 %143, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sdiv i32 %146, 2
  %148 = load i32, i32* @BITS_PER_SLOT, align 4
  %149 = srem i32 %147, %148
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @BITS_PER_SLOT, align 4
  %152 = mul nsw i32 %150, %151
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %141, %134
  %154 = load i32, i32* %8, align 4
  %155 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @BITS_PER_SLOT, align 4
  %163 = sdiv i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @BITS_PER_SLOT, align 4
  %169 = sdiv i32 %167, %168
  %170 = sub nsw i32 %169, 1
  %171 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sub nsw i32 %178, 1
  %180 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  %182 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 4
  %187 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %7, align 4
  %199 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %202 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %153
  %206 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  store i32 0, i32* %207, align 8
  br label %208

208:                                              ; preds = %205, %153
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %7, align 4
  %216 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg4* %22 to i32*
  store i32 0, i32* %218, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %208
  %222 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* %13, align 4
  %225 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  %227 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 4
  store i64 0, i64* %228, align 8
  %229 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %230 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %221
  %234 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  br label %240

236:                                              ; preds = %221
  %237 = load i32, i32* %13, align 4
  %238 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to %struct.TYPE_11__*
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %15, align 4
  %242 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg6* %24 to %struct.TYPE_12__*
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %14, align 4
  %245 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg6* %24 to %struct.TYPE_12__*
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %15, align 4
  %248 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg6* %24 to %struct.TYPE_12__*
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* %14, align 4
  %251 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg6* %24 to %struct.TYPE_12__*
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  br label %258

253:                                              ; preds = %208
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  br label %355

258:                                              ; preds = %240
  %259 = load i32, i32* %9, align 4
  %260 = bitcast %union.cx2072x_reg_digital_bios_test2* %25 to %struct.TYPE_7__*
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  store i32 1, i32* %263, align 4
  %264 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to %struct.TYPE_9__*
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  %266 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %267 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %11, align 4
  %270 = mul nsw i32 %268, %269
  store i32 %270, i32* %5, align 4
  %271 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg5* %23 to %struct.TYPE_8__*
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  %273 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %274 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CX2072X_I2SPCM_CONTROL5, align 4
  %277 = call i32 @regmap_write(i32 %275, i32 %276, i32 0)
  %278 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to %struct.TYPE_10__*
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %258
  %283 = load i64, i64* @PLL_OUT_HZ_48, align 8
  store i64 %283, i64* %17, align 8
  %284 = load i64, i64* %17, align 8
  %285 = load i32, i32* %5, align 4
  %286 = call i32 @do_div(i64 %284, i32 %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = load %struct.device*, %struct.device** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %2, align 4
  br label %355

295:                                              ; preds = %282
  %296 = load %struct.device*, %struct.device** %4, align 8
  %297 = load i32, i32* %5, align 4
  %298 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %297)
  %299 = load i64, i64* %17, align 8
  %300 = sub nsw i64 %299, 1
  %301 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg5* %23 to %struct.TYPE_8__*
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  store i64 %300, i64* %302, align 8
  %303 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg5* %23 to %struct.TYPE_8__*
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  store i32 1, i32* %304, align 8
  br label %305

305:                                              ; preds = %295, %258
  %306 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %307 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @CX2072X_I2SPCM_CONTROL1, align 4
  %310 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg1* %19 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @regmap_write(i32 %308, i32 %309, i32 %311)
  %313 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %314 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CX2072X_I2SPCM_CONTROL2, align 4
  %317 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg2* %20 to i32*
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @regmap_update_bits(i32 %315, i32 %316, i32 -64, i32 %318)
  %320 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %321 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @CX2072X_I2SPCM_CONTROL3, align 4
  %324 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg3* %21 to i32*
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @regmap_update_bits(i32 %322, i32 %323, i32 -64, i32 %325)
  %327 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %328 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @CX2072X_I2SPCM_CONTROL4, align 4
  %331 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg4* %22 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @regmap_write(i32 %329, i32 %330, i32 %332)
  %334 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %335 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CX2072X_I2SPCM_CONTROL6, align 4
  %338 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg6* %24 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @regmap_write(i32 %336, i32 %337, i32 %339)
  %341 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %342 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @CX2072X_I2SPCM_CONTROL5, align 4
  %345 = bitcast %union.cx2072x_reg_i2spcm_ctrl_reg5* %23 to i32*
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @regmap_write(i32 %343, i32 %344, i32 %346)
  %348 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %349 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @CX2072X_DIGITAL_BIOS_TEST2, align 4
  %352 = bitcast %union.cx2072x_reg_digital_bios_test2* %25 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @regmap_write(i32 %350, i32 %351, i32 %353)
  store i32 0, i32* %2, align 4
  br label %355

355:                                              ; preds = %305, %289, %253, %129, %96, %78, %50, %41
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
