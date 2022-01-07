; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.es7241_data = type { i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get 'reset' gpio: %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"m0\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to get 'm0' gpio: %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to get 'm1' gpio: %d\00", align 1
@es7241_component_driver = common dso_local global i32 0, align 4
@es7241_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @es7241_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7241_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.es7241_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.es7241_data* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.es7241_data* %11, %struct.es7241_data** %5, align 8
  %12 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %13 = icmp ne %struct.es7241_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.es7241_data* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @of_device_get_match_data(%struct.device* %21)
  %23 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %24 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %26 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %17
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %37 = call i32 @es7241_parse_fmt(%struct.device* %35, %struct.es7241_data* %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %40 = call i8* @devm_gpiod_get_optional(%struct.device* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %42 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %44 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %34
  %49 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %50 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EPROBE_DEFER, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %119

63:                                               ; preds = %34
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %66 = call i8* @devm_gpiod_get_optional(%struct.device* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %68 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %70 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %76 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %119

89:                                               ; preds = %63
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %92 = call i8* @devm_gpiod_get_optional(%struct.device* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %94 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %96 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %102 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @EPROBE_DEFER, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %100
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %119

115:                                              ; preds = %89
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @devm_snd_soc_register_component(%struct.device* %117, i32* @es7241_component_driver, i32* @es7241_dai, i32 1)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %113, %87, %61, %29, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.es7241_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.es7241_data*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @es7241_parse_fmt(%struct.device*, %struct.es7241_data*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
