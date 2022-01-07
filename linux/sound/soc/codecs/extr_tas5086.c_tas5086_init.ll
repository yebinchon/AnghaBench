; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tas5086_private = type { i32, i64, i32 }

@TAS5086_PWM_START = common dso_local global i32 0, align 4
@TAS5086_PWM_START_MIDZ_FOR_START_1 = common dso_local global i32 0, align 4
@TAS5086_SPLIT_CAP_CHARGE = common dso_local global i32 0, align 4
@tas5086_charge_period = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid split-cap charge period of %d ns.\0A\00", align 1
@TAS5086_OSC_TRIM = common dso_local global i32 0, align 4
@TAS5086_SYS_CONTROL_2 = common dso_local global i32 0, align 4
@TAS5086_SOFT_MUTE = common dso_local global i32 0, align 4
@TAS5086_SOFT_MUTE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tas5086_private*)* @tas5086_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5086_init(%struct.device* %0, %struct.tas5086_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tas5086_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tas5086_private* %1, %struct.tas5086_private** %5, align 8
  %8 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %9 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %14 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TAS5086_PWM_START, align 4
  %17 = load i32, i32* @TAS5086_PWM_START_MIDZ_FOR_START_1, align 4
  %18 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %19 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = call i32 @regmap_write(i32 %15, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %12, %2
  %24 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %25 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %30 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TAS5086_SPLIT_CAP_CHARGE, align 4
  %33 = call i32 @regmap_write(i32 %31, i32 %32, i32 0)
  br label %59

34:                                               ; preds = %23
  %35 = load i32, i32* @tas5086_charge_period, align 4
  %36 = load i32, i32* @tas5086_charge_period, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %39 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @index_in_array(i32 %35, i32 %37, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %46 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TAS5086_SPLIT_CAP_CHARGE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 8
  %51 = call i32 @regmap_write(i32 %47, i32 %48, i32 %50)
  br label %58

52:                                               ; preds = %34
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %55 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dev_warn(%struct.device* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %61 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TAS5086_OSC_TRIM, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %91

69:                                               ; preds = %59
  %70 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %71 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TAS5086_SYS_CONTROL_2, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 32)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %91

79:                                               ; preds = %69
  %80 = load %struct.tas5086_private*, %struct.tas5086_private** %5, align 8
  %81 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @TAS5086_SOFT_MUTE, align 4
  %84 = load i32, i32* @TAS5086_SOFT_MUTE_ALL, align 4
  %85 = call i32 @regmap_write(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %88, %77, %67
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @index_in_array(i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
