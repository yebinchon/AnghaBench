; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_asoc_dmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_asoc_dmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_dmic = type { i32, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cant get fck\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid dma memory resource\0A\00", align 1
@OMAP_DMIC_DATA_REG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"up_link\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap_dmic_component = common dso_local global i32 0, align 4
@omap_dmic_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_dmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_dmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_dmic*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.omap_dmic* @devm_kzalloc(i32* %8, i32 48, i32 %9)
  store %struct.omap_dmic* %10, %struct.omap_dmic** %4, align 8
  %11 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %12 = icmp ne %struct.omap_dmic* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.omap_dmic* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* @OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS, align 4
  %25 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %26 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %28 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %27, i32 0, i32 4
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @devm_clk_get(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %37 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %16
  %42 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %43 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %109

48:                                               ; preds = %16
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %56 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %48
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OMAP_DMIC_DATA_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %68 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %71 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %75, %struct.resource** %5, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = call i32 @devm_ioremap_resource(i32* %77, %struct.resource* %78)
  %80 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %81 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %83 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %61
  %88 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %89 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %109

92:                                               ; preds = %61
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @devm_snd_soc_register_component(i32* %94, i32* @omap_dmic_component, i32* @omap_dmic_dai, i32 1)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %109

100:                                              ; preds = %92
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @sdma_pcm_platform_register(i32* %102, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %106, %98, %87, %54, %41, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.omap_dmic* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_dmic*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @sdma_pcm_platform_register(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
