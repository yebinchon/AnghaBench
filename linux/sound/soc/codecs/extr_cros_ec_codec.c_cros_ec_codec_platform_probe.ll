; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_codec_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_codec_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_codec_data = type { %struct.cros_ec_device*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_component_driver = common dso_local global i32 0, align 4
@cros_ec_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_codec_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_codec_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.cros_ec_codec_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %12)
  store %struct.cros_ec_device* %13, %struct.cros_ec_device** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cros_ec_codec_data* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.cros_ec_codec_data* %16, %struct.cros_ec_codec_data** %6, align 8
  %17 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %6, align 8
  %18 = icmp ne %struct.cros_ec_codec_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %6, align 8
  %25 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %24, i32 0, i32 1
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %27 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %6, align 8
  %28 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %27, i32 0, i32 0
  store %struct.cros_ec_device* %26, %struct.cros_ec_device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %6, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.cros_ec_codec_data* %30)
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @cros_ec_dai, align 4
  %34 = load i32, i32* @cros_ec_dai, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @devm_snd_soc_register_component(%struct.device* %32, i32* @cros_ec_component_driver, i32 %33, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_codec_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_codec_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
