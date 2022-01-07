; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node*, %struct.kirkwood_asoc_platform_data* }
%struct.device_node = type { i32 }
%struct.kirkwood_asoc_platform_data = type { i32 }
%struct.kirkwood_dma_data = type { i64, i32, i8*, i8*, i32, i32, i8* }

@kirkwood_i2s_dai = common dso_local global %struct.snd_soc_dai_driver* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no DT nor platform data ?!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"found external clock\0A\00", align 1
@kirkwood_i2s_dai_extclk = common dso_local global %struct.snd_soc_dai_driver* null, align 8
@KIRKWOOD_PLAYCTL_SIZE_24 = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SIZE_24 = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_BURST_32 = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_BURST_32 = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_BURST_128 = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_BURST_128 = common dso_local global i32 0, align 4
@kirkwood_soc_component = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"snd_soc_register_component failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kirkwood_i2s_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kirkwood_asoc_platform_data*, align 8
  %5 = alloca %struct.snd_soc_dai_driver*, align 8
  %6 = alloca %struct.kirkwood_dma_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.kirkwood_asoc_platform_data*, %struct.kirkwood_asoc_platform_data** %11, align 8
  store %struct.kirkwood_asoc_platform_data* %12, %struct.kirkwood_asoc_platform_data** %4, align 8
  %13 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** @kirkwood_i2s_dai, align 8
  store %struct.snd_soc_dai_driver* %13, %struct.snd_soc_dai_driver** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.kirkwood_dma_data* @devm_kzalloc(%struct.TYPE_8__* %19, i32 48, i32 %20)
  store %struct.kirkwood_dma_data* %21, %struct.kirkwood_dma_data** %6, align 8
  %22 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %23 = icmp ne %struct.kirkwood_dma_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %232

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %31 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %29, %struct.kirkwood_dma_data* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %32, i32 0)
  %34 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %35 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %37 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %43 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %2, align 4
  br label %232

46:                                               ; preds = %27
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i64 @platform_get_irq(%struct.platform_device* %47, i32 0)
  %49 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %50 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %52 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %57 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %232

60:                                               ; preds = %46
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = icmp ne %struct.device_node* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %65 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %64, i32 0, i32 1
  store i32 128, i32* %65, align 8
  br label %82

66:                                               ; preds = %60
  %67 = load %struct.kirkwood_asoc_platform_data*, %struct.kirkwood_asoc_platform_data** %4, align 8
  %68 = icmp ne %struct.kirkwood_asoc_platform_data* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.kirkwood_asoc_platform_data*, %struct.kirkwood_asoc_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.kirkwood_asoc_platform_data, %struct.kirkwood_asoc_platform_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %74 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %81

75:                                               ; preds = %66
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %232

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.device_node*, %struct.device_node** %7, align 8
  %86 = icmp ne %struct.device_node* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* null
  %89 = call i8* @devm_clk_get(%struct.TYPE_8__* %84, i8* %88)
  %90 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %91 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %93 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %82
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %102 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %2, align 4
  br label %232

105:                                              ; preds = %82
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i8* @devm_clk_get(%struct.TYPE_8__* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %110 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %112 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @IS_ERR(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %105
  %117 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %118 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  %121 = load i32, i32* @EPROBE_DEFER, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* @EPROBE_DEFER, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %232

127:                                              ; preds = %116
  br label %159

128:                                              ; preds = %105
  %129 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %130 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %133 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @clk_is_match(i8* %131, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %128
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %141 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @devm_clk_put(%struct.TYPE_8__* %139, i8* %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  %146 = call i8* @ERR_PTR(i32 %145)
  %147 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %148 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %158

149:                                              ; preds = %128
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_info(%struct.TYPE_8__* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %154 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @clk_prepare_enable(i8* %155)
  %157 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** @kirkwood_i2s_dai_extclk, align 8
  store %struct.snd_soc_dai_driver* %157, %struct.snd_soc_dai_driver** %5, align 8
  br label %158

158:                                              ; preds = %149, %137
  br label %159

159:                                              ; preds = %158, %127
  %160 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %161 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @clk_prepare_enable(i8* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %232

168:                                              ; preds = %159
  %169 = load i32, i32* @KIRKWOOD_PLAYCTL_SIZE_24, align 4
  %170 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %171 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @KIRKWOOD_RECCTL_SIZE_24, align 4
  %173 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %174 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %176 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %190

179:                                              ; preds = %168
  %180 = load i32, i32* @KIRKWOOD_PLAYCTL_BURST_32, align 4
  %181 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %182 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @KIRKWOOD_RECCTL_BURST_32, align 4
  %186 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %187 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %201

190:                                              ; preds = %168
  %191 = load i32, i32* @KIRKWOOD_PLAYCTL_BURST_128, align 4
  %192 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %193 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* @KIRKWOOD_RECCTL_BURST_128, align 4
  %197 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %198 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %190, %179
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %205 = call i32 @snd_soc_register_component(%struct.TYPE_8__* %203, i32* @kirkwood_soc_component, %struct.snd_soc_dai_driver* %204, i32 2)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 @dev_err(%struct.TYPE_8__* %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %215

212:                                              ; preds = %201
  %213 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %214 = call i32 @kirkwood_i2s_init(%struct.kirkwood_dma_data* %213)
  store i32 0, i32* %2, align 4
  br label %232

215:                                              ; preds = %208
  %216 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %217 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = call i64 @IS_ERR(i8* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %215
  %222 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %223 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @clk_disable_unprepare(i8* %224)
  br label %226

226:                                              ; preds = %221, %215
  %227 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %228 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @clk_disable_unprepare(i8* %229)
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %226, %212, %166, %124, %97, %75, %55, %41, %24
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.kirkwood_dma_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.kirkwood_dma_data*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @clk_is_match(i8*, i8*) #1

declare dso_local i32 @devm_clk_put(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @snd_soc_register_component(%struct.TYPE_8__*, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @kirkwood_i2s_init(%struct.kirkwood_dma_data*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
