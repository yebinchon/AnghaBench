; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9759.c_max9759_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9759.c_max9759_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.max9759 = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get 'shutdown' gpio: %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get 'mute' gpio: %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get 'gain' gpios: %d\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid 'gain' gpios count: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max9759_component_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max9759_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9759_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max9759*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.max9759* @devm_kzalloc(%struct.device* %9, i32 40, i32 %10)
  store %struct.max9759* %11, %struct.max9759** %5, align 8
  %12 = load %struct.max9759*, %struct.max9759** %5, align 8
  %13 = icmp ne %struct.max9759* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.max9759*, %struct.max9759** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.max9759* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %23 = call i8* @devm_gpiod_get(%struct.device* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  %25 = load %struct.max9759*, %struct.max9759** %5, align 8
  %26 = getelementptr inbounds %struct.max9759, %struct.max9759* %25, i32 0, i32 4
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.max9759*, %struct.max9759** %5, align 8
  %28 = getelementptr inbounds %struct.max9759, %struct.max9759* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %17
  %33 = load %struct.max9759*, %struct.max9759** %5, align 8
  %34 = getelementptr inbounds %struct.max9759, %struct.max9759* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_4__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %124

47:                                               ; preds = %17
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %50 = call i8* @devm_gpiod_get(%struct.device* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = bitcast i8* %50 to %struct.TYPE_4__*
  %52 = load %struct.max9759*, %struct.max9759** %5, align 8
  %53 = getelementptr inbounds %struct.max9759, %struct.max9759* %52, i32 0, i32 3
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.max9759*, %struct.max9759** %5, align 8
  %55 = getelementptr inbounds %struct.max9759, %struct.max9759* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i64 @IS_ERR(%struct.TYPE_4__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %47
  %60 = load %struct.max9759*, %struct.max9759** %5, align 8
  %61 = getelementptr inbounds %struct.max9759, %struct.max9759* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.TYPE_4__* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EPROBE_DEFER, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %124

74:                                               ; preds = %47
  %75 = load %struct.max9759*, %struct.max9759** %5, align 8
  %76 = getelementptr inbounds %struct.max9759, %struct.max9759* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %79 = call %struct.TYPE_4__* @devm_gpiod_get_array(%struct.device* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load %struct.max9759*, %struct.max9759** %5, align 8
  %81 = getelementptr inbounds %struct.max9759, %struct.max9759* %80, i32 0, i32 1
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.max9759*, %struct.max9759** %5, align 8
  %83 = getelementptr inbounds %struct.max9759, %struct.max9759* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i64 @IS_ERR(%struct.TYPE_4__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %74
  %88 = load %struct.max9759*, %struct.max9759** %5, align 8
  %89 = getelementptr inbounds %struct.max9759, %struct.max9759* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.TYPE_4__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @EPROBE_DEFER, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %87
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %124

102:                                              ; preds = %74
  %103 = load %struct.max9759*, %struct.max9759** %5, align 8
  %104 = getelementptr inbounds %struct.max9759, %struct.max9759* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.max9759*, %struct.max9759** %5, align 8
  %106 = getelementptr inbounds %struct.max9759, %struct.max9759* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 2
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.max9759*, %struct.max9759** %5, align 8
  %114 = getelementptr inbounds %struct.max9759, %struct.max9759* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %102
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @devm_snd_soc_register_component(%struct.device* %122, i32* @max9759_component_driver, i32* null, i32 0)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %111, %100, %72, %45, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.max9759* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max9759*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @devm_gpiod_get_array(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
