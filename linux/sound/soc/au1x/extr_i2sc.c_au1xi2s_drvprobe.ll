; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_drvprobe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_drvprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.au1xpsc_audio_data = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@au1xi2s_component = common dso_local global i32 0, align 4
@au1xi2s_dai_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xi2s_drvprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xi2s_drvprobe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.au1xpsc_audio_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.au1xpsc_audio_data* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %6, align 8
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %12 = icmp ne %struct.au1xpsc_audio_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %100

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %100

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = call i32 @resource_size(%struct.resource* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @devm_request_mem_region(i32* %27, i32 %30, i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %100

41:                                               ; preds = %25
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %4, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = call i32 @resource_size(%struct.resource* %47)
  %49 = call i32 @devm_ioremap_nocache(i32* %43, i32 %46, i32 %48)
  %50 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %51 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %53 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %100

59:                                               ; preds = %41
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_DMA, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %5, align 8
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %100

68:                                               ; preds = %59
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %73 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_DMA, align 4
  %79 = call %struct.resource* @platform_get_resource(%struct.platform_device* %77, i32 %78, i32 1)
  store %struct.resource* %79, %struct.resource** %5, align 8
  %80 = load %struct.resource*, %struct.resource** %5, align 8
  %81 = icmp ne %struct.resource* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %100

85:                                               ; preds = %68
  %86 = load %struct.resource*, %struct.resource** %5, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %90 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.au1xpsc_audio_data* %95)
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @snd_soc_register_component(i32* %98, i32* @au1xi2s_component, i32* @au1xi2s_dai_driver, i32 1)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %85, %82, %65, %56, %38, %22, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.au1xpsc_audio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.au1xpsc_audio_data*) #1

declare dso_local i32 @snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
