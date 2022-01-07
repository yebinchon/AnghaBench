; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.uda134x_platform_data* }
%struct.uda134x_platform_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.uda134x_priv = type { i32, %struct.uda134x_platform_data* }

@.str = private unnamed_addr constant [29 x i8] c"Missing L3 bitbang function\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uda134x_regmap_config = common dso_local global i32 0, align 4
@soc_component_dev_uda134x = common dso_local global i32 0, align 4
@uda134x_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uda134x_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda134x_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uda134x_platform_data*, align 8
  %5 = alloca %struct.uda134x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %9, align 8
  store %struct.uda134x_platform_data* %10, %struct.uda134x_platform_data** %4, align 8
  %11 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %4, align 8
  %12 = icmp ne %struct.uda134x_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.uda134x_priv* @devm_kzalloc(%struct.TYPE_7__* %21, i32 16, i32 %22)
  store %struct.uda134x_priv* %23, %struct.uda134x_priv** %5, align 8
  %24 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %25 = icmp ne %struct.uda134x_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %19
  %30 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %4, align 8
  %31 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %31, i32 0, i32 1
  store %struct.uda134x_platform_data* %30, %struct.uda134x_platform_data** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.uda134x_priv* %34)
  %36 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.uda134x_platform_data, %struct.uda134x_platform_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %45 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %44, i32 0, i32 1
  %46 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %45, align 8
  %47 = getelementptr inbounds %struct.uda134x_platform_data, %struct.uda134x_platform_data* %46, i32 0, i32 0
  %48 = call i32 @l3_set_gpio_ops(%struct.TYPE_7__* %43, %struct.TYPE_8__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %4, align 8
  %58 = call i32 @devm_regmap_init(%struct.TYPE_7__* %56, i32* null, %struct.uda134x_platform_data* %57, i32* @uda134x_regmap_config)
  %59 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %60 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %62 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.uda134x_priv*, %struct.uda134x_priv** %5, align 8
  %68 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @devm_snd_soc_register_component(%struct.TYPE_7__* %73, i32* @soc_component_dev_uda134x, i32* @uda134x_dai, i32 1)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %51, %26, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.uda134x_priv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uda134x_priv*) #1

declare dso_local i32 @l3_set_gpio_ops(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @devm_regmap_init(%struct.TYPE_7__*, i32*, %struct.uda134x_platform_data*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_7__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
