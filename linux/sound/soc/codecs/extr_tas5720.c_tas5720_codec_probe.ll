; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tas5720_data = type { i32, i32, i32, i32, %struct.snd_soc_component* }

@.str = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@TAS5720_DEVICE_ID_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to read device ID register: %d\0A\00", align 1
@TAS5720_DEVICE_ID = common dso_local global i32 0, align 4
@TAS5722_DEVICE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unexpected private driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"wrong device ID. expected: %u read: %u\0A\00", align 1
@TAS5720_DIGITAL_CTRL2_REG = common dso_local global i32 0, align 4
@TAS5720_MUTE = common dso_local global i32 0, align 4
@TAS5720_POWER_CTRL_REG = common dso_local global i32 0, align 4
@TAS5720_SDZ = common dso_local global i32 0, align 4
@tas5720_fault_check_work = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"error configuring device registers: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @tas5720_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5720_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tas5720_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.tas5720_data* %9, %struct.tas5720_data** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %12 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %11, i32 0, i32 4
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %12, align 8
  %13 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %14 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %18 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_bulk_enable(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %1
  %31 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %32 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TAS5720_DEVICE_ID_REG, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %98

44:                                               ; preds = %30
  %45 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %46 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %52 [
    i32 129, label %48
    i32 128, label %50
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @TAS5720_DEVICE_ID, align 4
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @TAS5722_DEVICE_ID, align 4
  store i32 %51, i32* %6, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %108

59:                                               ; preds = %50, %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @TAS5720_DIGITAL_CTRL2_REG, align 4
  %73 = load i32, i32* @TAS5720_MUTE, align 4
  %74 = load i32, i32* @TAS5720_MUTE, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %92

79:                                               ; preds = %70
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @TAS5720_POWER_CTRL_REG, align 4
  %82 = load i32, i32* @TAS5720_SDZ, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 0)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %92

87:                                               ; preds = %79
  %88 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %89 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %88, i32 0, i32 2
  %90 = load i32, i32* @tas5720_fault_check_work, align 4
  %91 = call i32 @INIT_DELAYED_WORK(i32* %89, i32 %90)
  store i32 0, i32* %2, align 4
  br label %108

92:                                               ; preds = %86, %78
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %38
  %99 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %100 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.tas5720_data*, %struct.tas5720_data** %4, align 8
  %104 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @regulator_bulk_disable(i32 %102, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %98, %87, %52, %23
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
