; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3008.c_pcm3008_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3008.c_pcm3008_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pcm3008_setup_data* }
%struct.pcm3008_setup_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"codec_dem0\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"codec_dem1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"codec_pdad\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"codec_pdda\00", align 1
@soc_component_dev_pcm3008 = common dso_local global i32 0, align 4
@pcm3008_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcm3008_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3008_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pcm3008_setup_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %8, align 8
  store %struct.pcm3008_setup_data* %9, %struct.pcm3008_setup_data** %4, align 8
  %10 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %4, align 8
  %11 = icmp ne %struct.pcm3008_setup_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %4, align 8
  %19 = getelementptr inbounds %struct.pcm3008_setup_data, %struct.pcm3008_setup_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %22 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %17, i32 %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %15
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %4, align 8
  %31 = getelementptr inbounds %struct.pcm3008_setup_data, %struct.pcm3008_setup_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %34 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %29, i32 %32, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %4, align 8
  %43 = getelementptr inbounds %struct.pcm3008_setup_data, %struct.pcm3008_setup_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %46 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %41, i32 %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.pcm3008_setup_data*, %struct.pcm3008_setup_data** %4, align 8
  %55 = getelementptr inbounds %struct.pcm3008_setup_data, %struct.pcm3008_setup_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %58 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %53, i32 %56, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @devm_snd_soc_register_component(%struct.TYPE_3__* %65, i32* @soc_component_dev_pcm3008, i32* @pcm3008_dai, i32 1)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %61, %49, %37, %25, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_3__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
