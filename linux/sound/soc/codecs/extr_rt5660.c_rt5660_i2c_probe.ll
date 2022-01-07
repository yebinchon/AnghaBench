; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.rt5660_platform_data = type { i64 }
%struct.rt5660_priv = type { i32, %struct.rt5660_platform_data, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@rt5660_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5660_VENDOR_ID2 = common dso_local global i32 0, align 4
@RT5660_DEVICE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Device with ID register %#x is not rt5660\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5660_RESET = common dso_local global i32 0, align 4
@rt5660_patch = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5660_GEN_CTRL1 = common dso_local global i32 0, align 4
@RT5660_AUTO_DIS_AMP = common dso_local global i32 0, align 4
@RT5660_MCLK_DET = common dso_local global i32 0, align 4
@RT5660_POW_CLKDET = common dso_local global i32 0, align 4
@RT5660_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5660_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5660_GP1_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5660_DMIC1_DATA_GPIO2 = common dso_local global i64 0, align 8
@RT5660_DMIC_CTRL1 = common dso_local global i32 0, align 4
@RT5660_SEL_DMIC_DATA_MASK = common dso_local global i32 0, align 4
@RT5660_SEL_DMIC_DATA_GPIO2 = common dso_local global i32 0, align 4
@RT5660_DMIC1_DATA_IN1P = common dso_local global i64 0, align 8
@RT5660_SEL_DMIC_DATA_IN1P = common dso_local global i32 0, align 4
@soc_component_dev_rt5660 = common dso_local global i32 0, align 4
@rt5660_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5660_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5660_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5660_platform_data*, align 8
  %7 = alloca %struct.rt5660_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.rt5660_platform_data* @dev_get_platdata(%struct.TYPE_8__* %11)
  store %struct.rt5660_platform_data* %12, %struct.rt5660_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rt5660_priv* @devm_kzalloc(%struct.TYPE_8__* %14, i32 24, i32 %15)
  store %struct.rt5660_priv* %16, %struct.rt5660_priv** %7, align 8
  %17 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %18 = icmp eq %struct.rt5660_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %185

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @devm_clk_get(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %27 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %29 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %185

38:                                               ; preds = %22
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.rt5660_priv* %40)
  %42 = load %struct.rt5660_platform_data*, %struct.rt5660_platform_data** %6, align 8
  %43 = icmp ne %struct.rt5660_platform_data* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %45, i32 0, i32 1
  %47 = load %struct.rt5660_platform_data*, %struct.rt5660_platform_data** %6, align 8
  %48 = bitcast %struct.rt5660_platform_data* %46 to i8*
  %49 = bitcast %struct.rt5660_platform_data* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 @rt5660_parse_dt(%struct.rt5660_priv* %57, %struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %63, i32* @rt5660_regmap)
  %65 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %66 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %68 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %74 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dev_err(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %185

82:                                               ; preds = %62
  %83 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %84 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RT5660_VENDOR_ID2, align 4
  %87 = call i32 @regmap_read(i32 %85, i32 %86, i32* %9)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @RT5660_DEVICE_ID, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dev_err(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %185

98:                                               ; preds = %82
  %99 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %100 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RT5660_RESET, align 4
  %103 = call i32 @regmap_write(i32 %101, i32 %102, i32 0)
  %104 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %105 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @rt5660_patch, align 4
  %108 = load i32, i32* @rt5660_patch, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = call i32 @regmap_register_patch(i32 %106, i32 %107, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dev_warn(%struct.TYPE_8__* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %98
  %119 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %120 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RT5660_GEN_CTRL1, align 4
  %123 = load i32, i32* @RT5660_AUTO_DIS_AMP, align 4
  %124 = load i32, i32* @RT5660_MCLK_DET, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @RT5660_POW_CLKDET, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @RT5660_AUTO_DIS_AMP, align 4
  %129 = load i32, i32* @RT5660_MCLK_DET, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @RT5660_POW_CLKDET, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @regmap_update_bits(i32 %121, i32 %122, i32 %127, i32 %132)
  %134 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %135 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.rt5660_platform_data, %struct.rt5660_platform_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %118
  %140 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %141 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @RT5660_GPIO_CTRL1, align 4
  %144 = load i32, i32* @RT5660_GP1_PIN_MASK, align 4
  %145 = load i32, i32* @RT5660_GP1_PIN_DMIC1_SCL, align 4
  %146 = call i32 @regmap_update_bits(i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %148 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.rt5660_platform_data, %struct.rt5660_platform_data* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @RT5660_DMIC1_DATA_GPIO2, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %139
  %154 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %155 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @RT5660_DMIC_CTRL1, align 4
  %158 = load i32, i32* @RT5660_SEL_DMIC_DATA_MASK, align 4
  %159 = load i32, i32* @RT5660_SEL_DMIC_DATA_GPIO2, align 4
  %160 = call i32 @regmap_update_bits(i32 %156, i32 %157, i32 %158, i32 %159)
  br label %177

161:                                              ; preds = %139
  %162 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %163 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.rt5660_platform_data, %struct.rt5660_platform_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @RT5660_DMIC1_DATA_IN1P, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load %struct.rt5660_priv*, %struct.rt5660_priv** %7, align 8
  %170 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @RT5660_DMIC_CTRL1, align 4
  %173 = load i32, i32* @RT5660_SEL_DMIC_DATA_MASK, align 4
  %174 = load i32, i32* @RT5660_SEL_DMIC_DATA_IN1P, align 4
  %175 = call i32 @regmap_update_bits(i32 %171, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %161
  br label %177

177:                                              ; preds = %176, %153
  br label %178

178:                                              ; preds = %177, %118
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i32, i32* @rt5660_dai, align 4
  %182 = load i32, i32* @rt5660_dai, align 4
  %183 = call i32 @ARRAY_SIZE(i32 %182)
  %184 = call i32 @devm_snd_soc_register_component(%struct.TYPE_8__* %180, i32* @soc_component_dev_rt5660, i32 %181, i32 %183)
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %178, %91, %72, %35, %19
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.rt5660_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local %struct.rt5660_priv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5660_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5660_parse_dt(%struct.rt5660_priv*, %struct.TYPE_8__*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
