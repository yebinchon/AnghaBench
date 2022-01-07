; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.zx_spdif_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fail to get clk\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ioremap failed!\0A\00", align 1
@zx_spdif_component = common dso_local global i32 0, align 4
@zx_spdif_dai = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Register DAI failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Register platform PCM failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_spdif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_spdif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.zx_spdif_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.zx_spdif_info* @devm_kzalloc(i32* %8, i32 12, i32 %9)
  store %struct.zx_spdif_info* %10, %struct.zx_spdif_info** %5, align 8
  %11 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %12 = icmp ne %struct.zx_spdif_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @devm_clk_get(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %21 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %23 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %32 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %16
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %4, align 8
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %43 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i32 @devm_ioremap_resource(i32* %45, %struct.resource* %46)
  %48 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %49 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %51 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %35
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %60 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %95

63:                                               ; preds = %35
  %64 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %65 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @zx_spdif_dev_init(i32 %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %5, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.zx_spdif_info* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @devm_snd_soc_register_component(i32* %72, i32* @zx_spdif_component, i32* @zx_spdif_dai, i32 1)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %95

82:                                               ; preds = %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @devm_snd_dmaengine_pcm_register(i32* %84, i32* null, i32 0)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %76, %55, %27, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.zx_spdif_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @zx_spdif_dev_init(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_spdif_info*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
