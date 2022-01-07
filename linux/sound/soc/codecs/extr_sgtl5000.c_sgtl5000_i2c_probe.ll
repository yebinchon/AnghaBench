; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sgtl5000_priv = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sgtl5000_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get mclock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error enabling clock %d\0A\00", align 1
@SGTL5000_CHIP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error reading chip id %d\0A\00", align 1
@SGTL5000_PARTID_MASK = common dso_local global i32 0, align 4
@SGTL5000_PARTID_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_PARTID_PART_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Device with ID register %x is not a sgtl5000\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SGTL5000_REVID_MASK = common dso_local global i32 0, align 4
@SGTL5000_REVID_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"sgtl5000 revision 0x%x\0A\00", align 1
@SGTL5000_CHIP_CLK_CTRL = common dso_local global i32 0, align 4
@SGTL5000_CHIP_CLK_CTRL_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Error %d initializing CHIP_CLK_CTRL\0A\00", align 1
@SGTL5000_ANA_POWER_DEFAULT = common dso_local global i32 0, align 4
@VDDD = common dso_local global i64 0, align 8
@SGTL5000_CHIP_LINREG_CTRL = common dso_local global i32 0, align 4
@SGTL5000_LINREG_VDDD_MASK = common dso_local global i32 0, align 4
@LINREG_VDDD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Error %d setting LINREG_VDDD\0A\00", align 1
@SGTL5000_LINEREG_D_POWERUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Using internal LDO instead of VDDD: check ER1 erratum\0A\00", align 1
@SGTL5000_STARTUP_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_LINREG_SIMPLE_POWERUP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Using external VDDD\0A\00", align 1
@SGTL5000_CHIP_ANA_POWER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Error %d setting CHIP_ANA_POWER to %04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"micbias-resistor-k-ohms\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Unsuitable MicBias resistor\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"micbias-voltage-m-volts\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unsuitable MicBias voltage\0A\00", align 1
@I2S_LRCLK_STRENGTH_LOW = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"lrclk-strength\00", align 1
@I2S_LRCLK_STRENGTH_HIGH = common dso_local global i32 0, align 4
@I2S_SCLK_STRENGTH_LOW = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"sclk-strength\00", align 1
@I2S_SCLK_STRENGTH_HIGH = common dso_local global i32 0, align 4
@sgtl5000_driver = common dso_local global i32 0, align 4
@sgtl5000_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sgtl5000_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.sgtl5000_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sgtl5000_priv* @devm_kzalloc(%struct.TYPE_7__* %18, i32 48, i32 %19)
  store %struct.sgtl5000_priv* %20, %struct.sgtl5000_priv** %6, align 8
  %21 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %22 = icmp ne %struct.sgtl5000_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %337

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.sgtl5000_priv* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @sgtl5000_enable_regulators(%struct.i2c_client* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %337

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %37, i32* @sgtl5000_regmap)
  %39 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %40 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %42 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %48 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %321

55:                                               ; preds = %36
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(%struct.TYPE_7__* %57, i32* null)
  %59 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %60 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %62 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %55
  %67 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %68 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %66
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %321

89:                                               ; preds = %55
  %90 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %91 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_prepare_enable(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %321

101:                                              ; preds = %89
  %102 = call i32 @udelay(i32 1)
  %103 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %104 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SGTL5000_CHIP_ID, align 4
  %107 = call i32 @regmap_read(i32 %105, i32 %106, i32* %8)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %316

115:                                              ; preds = %101
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SGTL5000_PARTID_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @SGTL5000_PARTID_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* @SGTL5000_PARTID_PART_ID, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %316

130:                                              ; preds = %115
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @SGTL5000_REVID_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @SGTL5000_REVID_SHIFT, align 4
  %135 = ashr i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_info(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %142 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %144 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @SGTL5000_CHIP_CLK_CTRL, align 4
  %147 = load i32, i32* @SGTL5000_CHIP_CLK_CTRL_DEFAULT, align 4
  %148 = call i32 @regmap_write(i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %130
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %151, %130
  %157 = load i32, i32* @SGTL5000_ANA_POWER_DEFAULT, align 4
  store i32 %157, i32* %12, align 4
  %158 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %159 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @VDDD, align 8
  %162 = icmp sle i64 %160, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %156
  %164 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %165 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SGTL5000_CHIP_LINREG_CTRL, align 4
  %168 = load i32, i32* @SGTL5000_LINREG_VDDD_MASK, align 4
  %169 = load i32, i32* @LINREG_VDDD, align 4
  %170 = call i32 @regmap_update_bits(i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %163
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %173, %163
  %179 = load i32, i32* @SGTL5000_LINEREG_D_POWERUP, align 4
  %180 = load i32, i32* %12, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %12, align 4
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_info(%struct.TYPE_7__* %183, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  br label %195

185:                                              ; preds = %156
  %186 = load i32, i32* @SGTL5000_STARTUP_POWERUP, align 4
  %187 = load i32, i32* @SGTL5000_LINREG_SIMPLE_POWERUP, align 4
  %188 = or i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call i32 @dev_dbg(%struct.TYPE_7__* %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %195

195:                                              ; preds = %185, %178
  %196 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %197 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @regmap_write(i32 %198, i32 %199, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 0
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %206, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %195
  %211 = load %struct.device_node*, %struct.device_node** %10, align 8
  %212 = icmp ne %struct.device_node* %211, null
  br i1 %212, label %213, label %268

213:                                              ; preds = %210
  %214 = load %struct.device_node*, %struct.device_node** %10, align 8
  %215 = call i32 @of_property_read_u32(%struct.device_node* %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32* %11)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %238, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %11, align 4
  switch i32 %218, label %231 [
    i32 128, label %219
    i32 131, label %222
    i32 130, label %225
    i32 129, label %228
  ]

219:                                              ; preds = %217
  %220 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %221 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  br label %237

222:                                              ; preds = %217
  %223 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %224 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  br label %237

225:                                              ; preds = %217
  %226 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %227 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %226, i32 0, i32 2
  store i32 2, i32* %227, align 8
  br label %237

228:                                              ; preds = %217
  %229 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %230 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %229, i32 0, i32 2
  store i32 3, i32* %230, align 8
  br label %237

231:                                              ; preds = %217
  %232 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %233 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %232, i32 0, i32 2
  store i32 2, i32* %233, align 8
  %234 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %235 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %234, i32 0, i32 0
  %236 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %237

237:                                              ; preds = %231, %228, %225, %222, %219
  br label %241

238:                                              ; preds = %213
  %239 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %240 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %239, i32 0, i32 2
  store i32 2, i32* %240, align 8
  br label %241

241:                                              ; preds = %238, %237
  %242 = load %struct.device_node*, %struct.device_node** %10, align 8
  %243 = call i32 @of_property_read_u32(%struct.device_node* %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* %11)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %264, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %11, align 4
  %247 = icmp sge i32 %246, 1250
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i32, i32* %11, align 4
  %250 = icmp sle i32 %249, 3000
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load i32, i32* %11, align 4
  %253 = sdiv i32 %252, 250
  %254 = sub nsw i32 %253, 5
  %255 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %256 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  br label %263

257:                                              ; preds = %248, %245
  %258 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %259 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %258, i32 0, i32 3
  store i32 0, i32* %259, align 4
  %260 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %261 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %260, i32 0, i32 0
  %262 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %263

263:                                              ; preds = %257, %251
  br label %267

264:                                              ; preds = %241
  %265 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %266 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %265, i32 0, i32 3
  store i32 0, i32* %266, align 4
  br label %267

267:                                              ; preds = %264, %263
  br label %268

268:                                              ; preds = %267, %210
  %269 = load i8*, i8** @I2S_LRCLK_STRENGTH_LOW, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %272 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 8
  %273 = load %struct.device_node*, %struct.device_node** %10, align 8
  %274 = call i32 @of_property_read_u32(%struct.device_node* %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %11)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %287, label %276

276:                                              ; preds = %268
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @I2S_LRCLK_STRENGTH_HIGH, align 4
  %279 = icmp sgt i32 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i8*, i8** @I2S_LRCLK_STRENGTH_LOW, align 8
  %282 = ptrtoint i8* %281 to i32
  store i32 %282, i32* %11, align 4
  br label %283

283:                                              ; preds = %280, %276
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %286 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %283, %268
  %288 = load i8*, i8** @I2S_SCLK_STRENGTH_LOW, align 8
  %289 = ptrtoint i8* %288 to i32
  %290 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %291 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %290, i32 0, i32 5
  store i32 %289, i32* %291, align 4
  %292 = load %struct.device_node*, %struct.device_node** %10, align 8
  %293 = call i32 @of_property_read_u32(%struct.device_node* %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32* %11)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %287
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* @I2S_SCLK_STRENGTH_HIGH, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i8*, i8** @I2S_SCLK_STRENGTH_LOW, align 8
  %301 = ptrtoint i8* %300 to i32
  store i32 %301, i32* %11, align 4
  br label %302

302:                                              ; preds = %299, %295
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %305 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %304, i32 0, i32 5
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %302, %287
  %307 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %308 = call i32 @sgtl5000_fill_defaults(%struct.i2c_client* %307)
  %309 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %310 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %309, i32 0, i32 0
  %311 = call i32 @devm_snd_soc_register_component(%struct.TYPE_7__* %310, i32* @sgtl5000_driver, i32* @sgtl5000_dai, i32 1)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %306
  br label %316

315:                                              ; preds = %306
  store i32 0, i32* %3, align 4
  br label %337

316:                                              ; preds = %314, %123, %110
  %317 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %318 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @clk_disable_unprepare(i32 %319)
  br label %321

321:                                              ; preds = %316, %96, %88, %46
  %322 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %323 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %326 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @regulator_bulk_disable(i64 %324, i32 %327)
  %329 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %330 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %333 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @regulator_bulk_free(i64 %331, i32 %334)
  %336 = load i32, i32* %7, align 4
  store i32 %336, i32* %3, align 4
  br label %337

337:                                              ; preds = %321, %315, %34, %23
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local %struct.sgtl5000_priv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sgtl5000_priv*) #1

declare dso_local i32 @sgtl5000_enable_regulators(%struct.i2c_client*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @sgtl5000_fill_defaults(%struct.i2c_client*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i64, i32) #1

declare dso_local i32 @regulator_bulk_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
