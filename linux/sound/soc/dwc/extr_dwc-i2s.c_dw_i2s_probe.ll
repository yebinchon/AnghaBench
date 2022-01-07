; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.i2s_platform_data* }
%struct.i2s_platform_data = type { i32, i32, i32, i32, i32 }
%struct.dw_i2s_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.resource = type { i32 }
%struct.snd_soc_dai_driver = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_i2s_dai_ops = common dso_local global i32 0, align 4
@dw_i2s_suspend = common dso_local global i32 0, align 4
@dw_i2s_resume = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@i2s_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@I2S_COMP_PARAM_1 = common dso_local global i32 0, align 4
@I2S_COMP_PARAM_2 = common dso_local global i32 0, align 4
@DW_I2S_QUIRK_COMP_REG_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"i2sclk\00", align 1
@DW_I2S_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"no clock configure method\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dw_i2s_component = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"not able to register dai\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not register pcm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i2s_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2s_platform_data*, align 8
  %5 = alloca %struct.dw_i2s_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_dai_driver*, align 8
  %10 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %13, align 8
  store %struct.i2s_platform_data* %14, %struct.i2s_platform_data** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(%struct.TYPE_10__* %16, i32 48, i32 %17)
  %19 = bitcast i8* %18 to %struct.dw_i2s_dev*
  store %struct.dw_i2s_dev* %19, %struct.dw_i2s_dev** %5, align 8
  %20 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %21 = icmp ne %struct.dw_i2s_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %257

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(%struct.TYPE_10__* %27, i32 16, i32 %28)
  %30 = bitcast i8* %29 to %struct.snd_soc_dai_driver*
  store %struct.snd_soc_dai_driver* %30, %struct.snd_soc_dai_driver** %9, align 8
  %31 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %32 = icmp ne %struct.snd_soc_dai_driver* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %257

36:                                               ; preds = %25
  %37 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %37, i32 0, i32 2
  store i32* @dw_i2s_dai_ops, i32** %38, align 8
  %39 = load i32, i32* @dw_i2s_suspend, align 4
  %40 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @dw_i2s_resume, align 4
  %43 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 0)
  store %struct.resource* %47, %struct.resource** %6, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %49, %struct.resource* %50)
  %52 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %53 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %55 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %61 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %257

64:                                               ; preds = %36
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %68 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %67, i32 0, i32 7
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq(%struct.platform_device* %69, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %64
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @i2s_irq_handler, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %82 = call i32 @devm_request_irq(%struct.TYPE_10__* %75, i32 %76, i32 %77, i32 0, i32 %80, %struct.dw_i2s_dev* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %257

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i32, i32* @I2S_COMP_PARAM_1, align 4
  %93 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %94 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @I2S_COMP_PARAM_2, align 4
  %96 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %97 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %99 = icmp ne %struct.i2s_platform_data* %98, null
  br i1 %99, label %100, label %134

100:                                              ; preds = %91
  %101 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %105 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  store i8* null, i8** %10, align 8
  %106 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %107 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %110 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %112 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DW_I2S_QUIRK_COMP_REG_OFFSET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %100
  %118 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %119 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %122 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %124 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %127 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %117, %100
  %129 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %130 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %131 = load %struct.resource*, %struct.resource** %6, align 8
  %132 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %133 = call i32 @dw_configure_dai_by_pd(%struct.dw_i2s_dev* %129, %struct.snd_soc_dai_driver* %130, %struct.resource* %131, %struct.i2s_platform_data* %132)
  store i32 %133, i32* %7, align 4
  br label %139

134:                                              ; preds = %91
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %135 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %136 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %137 = load %struct.resource*, %struct.resource** %6, align 8
  %138 = call i32 @dw_configure_dai_by_dt(%struct.dw_i2s_dev* %135, %struct.snd_soc_dai_driver* %136, %struct.resource* %137)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %257

144:                                              ; preds = %139
  %145 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %146 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DW_I2S_MASTER, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %198

151:                                              ; preds = %144
  %152 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %153 = icmp ne %struct.i2s_platform_data* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %156 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %159 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %161 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %154
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %257

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170, %151
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @devm_clk_get(%struct.TYPE_10__* %173, i8* %174)
  %176 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %177 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %179 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @IS_ERR(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %171
  %184 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %185 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @PTR_ERR(i32 %186)
  store i32 %187, i32* %2, align 4
  br label %257

188:                                              ; preds = %171
  %189 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %190 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @clk_prepare_enable(i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %2, align 4
  br label %257

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %144
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %202 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %200, %struct.dw_i2s_dev* %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %206 = call i32 @devm_snd_soc_register_component(%struct.TYPE_10__* %204, i32* @dw_i2s_component, %struct.snd_soc_dai_driver* %205, i32 1)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %198
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %243

213:                                              ; preds = %198
  %214 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %4, align 8
  %215 = icmp ne %struct.i2s_platform_data* %214, null
  br i1 %215, label %239, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %8, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = call i32 @dw_pcm_register(%struct.platform_device* %220)
  store i32 %221, i32* %7, align 4
  %222 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %223 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  br label %230

224:                                              ; preds = %216
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_10__* %226, i32* null, i32 0)
  store i32 %227, i32* %7, align 4
  %228 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %229 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %224, %219
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load i32, i32* %7, align 4
  %237 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  br label %243

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238, %213
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %241)
  store i32 0, i32* %2, align 4
  br label %257

243:                                              ; preds = %233, %209
  %244 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %245 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @DW_I2S_MASTER, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %252 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @clk_disable_unprepare(i32 %253)
  br label %255

255:                                              ; preds = %250, %243
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %255, %239, %195, %183, %164, %142, %85, %59, %33, %22
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.dw_i2s_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dw_configure_dai_by_pd(%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, %struct.resource*, %struct.i2s_platform_data*) #1

declare dso_local i32 @dw_configure_dai_by_dt(%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, %struct.resource*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.dw_i2s_dev*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_10__*, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @dw_pcm_register(%struct.platform_device*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
