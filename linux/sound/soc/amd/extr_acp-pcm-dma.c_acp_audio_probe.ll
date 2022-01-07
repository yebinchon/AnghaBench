; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.audio_drv_data = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"IORESOURCE_IRQ FAILED\0A\00", align 1
@dma_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ACP_IRQ\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ACP IRQ request failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ACP Init failed status:%d\0A\00", align 1
@acp_asoc_platform = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Fail to register ALSA platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acp_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_drv_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %128

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.audio_drv_data* @devm_kzalloc(%struct.TYPE_10__* %22, i32 40, i32 %23)
  store %struct.audio_drv_data* %24, %struct.audio_drv_data** %5, align 8
  %25 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %26 = icmp ne %struct.audio_drv_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %31, i32 0)
  %33 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %34 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %36 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %42 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %128

45:                                               ; preds = %30
  %46 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %47 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %49 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %51 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %53 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %57 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_IRQ, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %45
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %128

69:                                               ; preds = %45
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @dma_irq_handler, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @devm_request_irq(%struct.TYPE_10__* %71, i32 %74, i32 %75, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %128

86:                                               ; preds = %69
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %90 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %88, %struct.audio_drv_data* %89)
  %91 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %92 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.audio_drv_data*, %struct.audio_drv_data** %5, align 8
  %95 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @acp_init(i32 %93, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %128

106:                                              ; preds = %86
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @devm_snd_soc_register_component(%struct.TYPE_10__* %108, i32* @acp_asoc_platform, i32* null, i32 0)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %128

117:                                              ; preds = %106
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__* %119, i32 10000)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__* %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %117, %112, %100, %81, %63, %40, %27, %14
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.audio_drv_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.audio_drv_data*) #1

declare dso_local i32 @acp_init(i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
