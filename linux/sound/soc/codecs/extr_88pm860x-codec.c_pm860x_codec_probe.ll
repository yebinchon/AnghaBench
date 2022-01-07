; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pm860x_chip = type { i64, i64, i32, i32, i32, i32 }
%struct.pm860x_priv = type { i32*, i64*, i32, i32, %struct.pm860x_chip* }
%struct.resource = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get IRQ resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@soc_component_dev_pm860x = common dso_local global i32 0, align 4
@pm860x_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register component\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %12)
  store %struct.pm860x_chip* %13, %struct.pm860x_chip** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pm860x_priv* @devm_kzalloc(%struct.TYPE_4__* %15, i32 32, i32 %16)
  store %struct.pm860x_priv* %17, %struct.pm860x_priv** %5, align 8
  %18 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %19 = icmp eq %struct.pm860x_priv* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %126

23:                                               ; preds = %1
  %24 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %25 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %26 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %25, i32 0, i32 4
  store %struct.pm860x_chip* %24, %struct.pm860x_chip** %26, align 8
  %27 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %28 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_PM8607, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %34 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %38 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  %42 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %43 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %45 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHIP_PM8607, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %51 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  br label %57

53:                                               ; preds = %40
  %54 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %55 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %52, %49 ], [ %56, %53 ]
  %59 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %60 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.pm860x_priv* %62)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %106, %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_IRQ, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 %70)
  store %struct.resource* %71, %struct.resource** %6, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = icmp ne %struct.resource* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_4__* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %126

80:                                               ; preds = %67
  %81 = load %struct.resource*, %struct.resource** %6, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %85 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %89 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %95 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.resource*, %struct.resource** %6, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MAX_NAME_LEN, align 4
  %105 = call i32 @strncpy(i32 %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %80
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %64

109:                                              ; preds = %64
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* @pm860x_dai, align 4
  %113 = load i32, i32* @pm860x_dai, align 4
  %114 = call i32 @ARRAY_SIZE(i32 %113)
  %115 = call i32 @devm_snd_soc_register_component(%struct.TYPE_4__* %111, i32* @soc_component_dev_pm860x, i32 %112, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_err(%struct.TYPE_4__* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %126

124:                                              ; preds = %109
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %118, %74, %20
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm860x_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm860x_priv*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
