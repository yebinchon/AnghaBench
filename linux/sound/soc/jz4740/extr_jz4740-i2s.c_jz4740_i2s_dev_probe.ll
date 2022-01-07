; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jz4740_i2s = type { i32, i8*, i8*, i32, i8* }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jz4740_of_matches = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aic\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@JZ_I2S_JZ4780 = common dso_local global i64 0, align 8
@jz4740_i2s_component = common dso_local global i32 0, align 4
@jz4780_i2s_dai = common dso_local global i32 0, align 4
@jz4740_i2s_dai = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_i2s_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.jz4740_i2s*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.jz4740_i2s* @devm_kzalloc(i32* %9, i32 40, i32 %10)
  store %struct.jz4740_i2s* %11, %struct.jz4740_i2s** %4, align 8
  %12 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %13 = icmp ne %struct.jz4740_i2s* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load i32, i32* @jz4740_of_matches, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.of_device_id* @of_match_device(i32 %18, i32* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %7, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %26 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %30 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i8* @devm_ioremap_resource(i32* %36, %struct.resource* %37)
  %39 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %40 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %42 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %48 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %116

51:                                               ; preds = %31
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %56 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i8* @devm_clk_get(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %61 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %63 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %69 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %2, align 4
  br label %116

72:                                               ; preds = %51
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i8* @devm_clk_get(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %77 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %79 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %85 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %116

88:                                               ; preds = %72
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.jz4740_i2s* %90)
  %92 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %93 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @JZ_I2S_JZ4780, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @devm_snd_soc_register_component(i32* %100, i32* @jz4740_i2s_component, i32* @jz4780_i2s_dai, i32 1)
  store i32 %101, i32* %6, align 4
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @devm_snd_soc_register_component(i32* %104, i32* @jz4740_i2s_component, i32* @jz4740_i2s_dai, i32 1)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %116

111:                                              ; preds = %106
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %115 = call i32 @devm_snd_dmaengine_pcm_register(i32* %113, i32* null, i32 %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %109, %83, %67, %46, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.jz4740_i2s* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4740_i2s*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
