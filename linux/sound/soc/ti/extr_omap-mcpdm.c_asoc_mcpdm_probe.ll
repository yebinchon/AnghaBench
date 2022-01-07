; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_asoc_mcpdm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_asoc_mcpdm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_mcpdm = type { i64, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@MCPDM_REG_DN_DATA = common dso_local global i64 0, align 8
@MCPDM_REG_UP_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"dn_link\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"up_link\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap_mcpdm_component = common dso_local global i32 0, align 4
@omap_mcpdm_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_mcpdm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_mcpdm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_mcpdm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.omap_mcpdm* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.omap_mcpdm* %10, %struct.omap_mcpdm** %4, align 8
  %11 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %12 = icmp ne %struct.omap_mcpdm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.omap_mcpdm* %18)
  %20 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %21 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = icmp eq %struct.resource* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %16
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MCPDM_REG_DN_DATA, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %38 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %36, i64* %41, align 8
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MCPDM_REG_UP_DATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %48 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 %46, i64* %51, align 8
  %52 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %53 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %58 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %64, %struct.resource** %5, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = call i32 @devm_ioremap_resource(i32* %66, %struct.resource* %67)
  %69 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %70 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %72 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %31
  %77 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %78 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %111

81:                                               ; preds = %31
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i64 @platform_get_irq(%struct.platform_device* %82, i32 0)
  %84 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %85 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %87 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %92 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %111

95:                                               ; preds = %81
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %4, align 8
  %99 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @devm_snd_soc_register_component(i32* %101, i32* @omap_mcpdm_component, i32* @omap_mcpdm_dai, i32 1)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @sdma_pcm_platform_register(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %105, %90, %76, %28, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.omap_mcpdm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_mcpdm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @sdma_pcm_platform_register(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
