; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_tscs42xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_tscs42xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tscs42xx = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for data (%d)\0A\00", align 1
@TSCS42XX_PLL_SRC_XTAL = common dso_local global i32 0, align 4
@TSCS42XX_PLL_SRC_CNT = common dso_local global i32 0, align 4
@src_names = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to get sysclk (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get a valid clock name (%d)\0A\00", align 1
@tscs42xx_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to allocate regmap (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No valid part (%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@R_RESET = common dso_local global i32 0, align 4
@RV_RESET_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to reset device (%d)\0A\00", align 1
@tscs42xx_patch = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to apply patch (%d)\0A\00", align 1
@soc_codec_dev_tscs42xx = common dso_local global i32 0, align 4
@tscs42xx_dai = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to register codec (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tscs42xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs42xx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tscs42xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tscs42xx* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.tscs42xx* %12, %struct.tscs42xx** %6, align 8
  %13 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %14 = icmp ne %struct.tscs42xx* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %175

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.tscs42xx* %25)
  %27 = load i32, i32* @TSCS42XX_PLL_SRC_XTAL, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %69, %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TSCS42XX_PLL_SRC_CNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32*, i32** @src_names, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @devm_clk_get(i32* %34, i32 %39)
  %41 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %42 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %44 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  br label %72

49:                                               ; preds = %32
  %50 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %51 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %59 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %175

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %28

72:                                               ; preds = %48, %28
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TSCS42XX_PLL_SRC_CNT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %175

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %87 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %88, i32* @tscs42xx_regmap)
  %90 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %91 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %93 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %84
  %98 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %99 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %175

107:                                              ; preds = %84
  %108 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %109 = call i32 @init_coeff_ram_cache(%struct.tscs42xx* %108)
  %110 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %111 = call i32 @part_is_valid(%struct.tscs42xx* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %175

122:                                              ; preds = %107
  %123 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %124 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @R_RESET, align 4
  %127 = load i32, i32* @RV_RESET_ENABLE, align 4
  %128 = call i32 @regmap_write(i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %175

137:                                              ; preds = %122
  %138 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %139 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @tscs42xx_patch, align 4
  %142 = load i32, i32* @tscs42xx_patch, align 4
  %143 = call i32 @ARRAY_SIZE(i32 %142)
  %144 = call i32 @regmap_register_patch(i32 %140, i32 %141, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %137
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %175

153:                                              ; preds = %137
  %154 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %155 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %154, i32 0, i32 3
  %156 = call i32 @mutex_init(i32* %155)
  %157 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %158 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %157, i32 0, i32 2
  %159 = call i32 @mutex_init(i32* %158)
  %160 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %161 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %160, i32 0, i32 1
  %162 = call i32 @mutex_init(i32* %161)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 @devm_snd_soc_register_component(i32* %164, i32* @soc_codec_dev_tscs42xx, i32* @tscs42xx_dai, i32 1)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %153
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %175

174:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %168, %147, %131, %114, %97, %76, %57, %15
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.tscs42xx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tscs42xx*) #1

declare dso_local i32 @devm_clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @init_coeff_ram_cache(%struct.tscs42xx*) #1

declare dso_local i32 @part_is_valid(%struct.tscs42xx*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
