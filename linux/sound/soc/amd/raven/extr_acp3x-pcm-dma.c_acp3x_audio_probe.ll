; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.resource = type { i32 }
%struct.i2s_dev_data = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"platform_data not retrieved\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"IORESOURCE_IRQ FAILED\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@acp3x_i2s_component = common dso_local global i32 0, align 4
@acp3x_i2s_dai_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail to register acp i2s dai\0A\00", align 1
@i2s_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ACP3x_I2S_IRQ\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ACP3x I2S IRQ request failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ACP de-init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ACP de-initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acp3x_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.i2s_dev_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_11__* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %146

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %5, align 8
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %146

37:                                               ; preds = %19
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.i2s_dev_data* @devm_kzalloc(%struct.TYPE_11__* %39, i32 24, i32 %40)
  store %struct.i2s_dev_data* %41, %struct.i2s_dev_data** %6, align 8
  %42 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %43 = icmp ne %struct.i2s_dev_data* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %146

47:                                               ; preds = %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i32 @devm_ioremap(%struct.TYPE_11__* %49, i32 %52, i32 %54)
  %56 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %57 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_IRQ, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %5, align 8
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %47
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_11__* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %146

69:                                               ; preds = %47
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %74 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %76 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %78 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %82 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %80, %struct.i2s_dev_data* %81)
  %83 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %84 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @acp3x_init(i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %69
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %146

92:                                               ; preds = %69
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @devm_snd_soc_register_component(%struct.TYPE_11__* %94, i32* @acp3x_i2s_component, i32* @acp3x_i2s_dai_driver, i32 1)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_11__* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %128

102:                                              ; preds = %92
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %106 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @i2s_irq_handler, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %111 = call i32 @devm_request_irq(%struct.TYPE_11__* %104, i32 %107, i32 %108, i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.i2s_dev_data* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_11__* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %128

118:                                              ; preds = %102
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_11__* %120, i32 10000)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_11__* %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @pm_runtime_enable(%struct.TYPE_11__* %126)
  store i32 0, i32* %2, align 4
  br label %146

128:                                              ; preds = %114, %98
  %129 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %130 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @acp3x_deinit(i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(%struct.TYPE_11__* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %143

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_info(%struct.TYPE_11__* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %118, %89, %63, %44, %31, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.i2s_dev_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.i2s_dev_data*) #1

declare dso_local i32 @acp3x_init(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i8*, %struct.i2s_dev_data*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_11__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @acp3x_deinit(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
