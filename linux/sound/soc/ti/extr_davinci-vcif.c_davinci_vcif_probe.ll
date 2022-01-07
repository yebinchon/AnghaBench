; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-vcif.c_davinci_vcif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-vcif.c_davinci_vcif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.davinci_vc* }
%struct.davinci_vc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.davinci_vcif_dev = type { %struct.TYPE_8__*, %struct.davinci_vc* }
%struct.TYPE_8__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@davinci_vcif_component = common dso_local global i32 0, align 4
@davinci_vcif_dai = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not register dai\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"register PCM failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_vcif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_vcif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.davinci_vc*, align 8
  %5 = alloca %struct.davinci_vcif_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.davinci_vc*, %struct.davinci_vc** %9, align 8
  store %struct.davinci_vc* %10, %struct.davinci_vc** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.davinci_vcif_dev* @devm_kzalloc(%struct.TYPE_10__* %12, i32 16, i32 %13)
  store %struct.davinci_vcif_dev* %14, %struct.davinci_vcif_dev** %5, align 8
  %15 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %16 = icmp ne %struct.davinci_vcif_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %89

20:                                               ; preds = %1
  %21 = load %struct.davinci_vc*, %struct.davinci_vc** %4, align 8
  %22 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %23 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %22, i32 0, i32 1
  store %struct.davinci_vc* %21, %struct.davinci_vc** %23, align 8
  %24 = load %struct.davinci_vc*, %struct.davinci_vc** %4, align 8
  %25 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %28 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32* %26, i32** %32, align 8
  %33 = load %struct.davinci_vc*, %struct.davinci_vc** %4, align 8
  %34 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %38 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 8
  %43 = load %struct.davinci_vc*, %struct.davinci_vc** %4, align 8
  %44 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %47 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32* %45, i32** %51, align 8
  %52 = load %struct.davinci_vc*, %struct.davinci_vc** %4, align 8
  %53 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %57 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %5, align 8
  %65 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %63, %struct.davinci_vcif_dev* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @devm_snd_soc_register_component(%struct.TYPE_10__* %67, i32* @davinci_vcif_component, i32* @davinci_vcif_dai, i32 1)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %20
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %89

76:                                               ; preds = %20
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @edma_pcm_platform_register(%struct.TYPE_10__* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %82, %71, %17
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.davinci_vcif_dev* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.davinci_vcif_dev*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @edma_pcm_platform_register(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
