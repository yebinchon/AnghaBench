; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.jz_icdc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jz4725b_codec_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aic\00", align 1
@jz4725b_codec = common dso_local global i32 0, align 4
@jz4725b_codec_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register codec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4725b_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.jz_icdc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.jz_icdc* @devm_kzalloc(%struct.device* %9, i32 12, i32 %10)
  store %struct.jz_icdc* %11, %struct.jz_icdc** %5, align 8
  %12 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %13 = icmp ne %struct.jz_icdc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %21 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %23 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %29 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %35 = call i32 @devm_regmap_init(%struct.device* %33, i32* null, %struct.jz_icdc* %34, i32* @jz4725b_codec_regmap_config)
  %36 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %37 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %39 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %45 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %77

48:                                               ; preds = %32
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %53 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %55 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %61 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %48
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.jz_icdc*, %struct.jz_icdc** %5, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.jz_icdc* %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @devm_snd_soc_register_component(%struct.device* %68, i32* @jz4725b_codec, i32* @jz4725b_codec_dai, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %64
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %59, %43, %27, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.jz_icdc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init(%struct.device*, i32*, %struct.jz_icdc*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz_icdc*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
