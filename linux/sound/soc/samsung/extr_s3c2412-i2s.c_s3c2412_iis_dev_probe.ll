; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c2412-i2s.c_s3c2412_iis_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c2412-i2s.c_s3c2412_iis_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i64 }
%struct.s3c_audio_pdata = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"missing platform data\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@s3c2412_i2s = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@S3C2412_IISTXD = common dso_local global i64 0, align 8
@s3c2412_i2s_pcm_stereo_out = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S3C2412_IISRXD = common dso_local global i64 0, align 8
@s3c2412_i2s_pcm_stereo_in = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to register the DMA: %d\0A\00", align 1
@s3c2412_i2s_component = common dso_local global i32 0, align 4
@s3c2412_i2s_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to register the dai\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c2412_iis_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_iis_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.s3c_audio_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.s3c_audio_pdata* @dev_get_platdata(i32* %8)
  store %struct.s3c_audio_pdata* %9, %struct.s3c_audio_pdata** %6, align 8
  %10 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %11 = icmp ne %struct.s3c_audio_pdata* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i32 @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c2412_i2s, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c2412_i2s, i32 0, i32 0), align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c2412_i2s, i32 0, i32 0), align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %18
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S3C2412_IISTXD, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2412_i2s_pcm_stereo_out, i32 0, i32 1), align 8
  %38 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %39 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2412_i2s_pcm_stereo_out, i32 0, i32 0), align 8
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @S3C2412_IISRXD, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3c2412_i2s_pcm_stereo_in, i32 0, i32 1), align 8
  %46 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %47 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3c2412_i2s_pcm_stereo_in, i32 0, i32 0), align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %52 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @samsung_asoc_dma_platform_register(i32* %50, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %32
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %71

61:                                               ; preds = %32
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @s3c_i2sv2_register_component(i32* %63, i32 -1, i32* @s3c2412_i2s_component, i32* @s3c2412_i2s_dai)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %57, %29, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.s3c_audio_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @samsung_asoc_dma_platform_register(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @s3c_i2sv2_register_component(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
