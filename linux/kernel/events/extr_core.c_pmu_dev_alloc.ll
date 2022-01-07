; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_pmu_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_pmu_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { %struct.TYPE_9__*, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pmu_bus = common dso_local global i32 0, align 4
@pmu_dev_release = common dso_local global i32 0, align 4
@dev_attr_nr_addr_filters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @pmu_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_dev_alloc(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_9__* @kzalloc(i32 4, i32 %6)
  %8 = load %struct.pmu*, %struct.pmu** %2, align 8
  %9 = getelementptr inbounds %struct.pmu, %struct.pmu* %8, i32 0, i32 0
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %9, align 8
  %10 = load %struct.pmu*, %struct.pmu** %2, align 8
  %11 = getelementptr inbounds %struct.pmu, %struct.pmu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.pmu*, %struct.pmu** %2, align 8
  %17 = getelementptr inbounds %struct.pmu, %struct.pmu* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pmu*, %struct.pmu** %2, align 8
  %20 = getelementptr inbounds %struct.pmu, %struct.pmu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i32 %18, i32* %22, align 8
  %23 = load %struct.pmu*, %struct.pmu** %2, align 8
  %24 = getelementptr inbounds %struct.pmu, %struct.pmu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @device_initialize(%struct.TYPE_9__* %25)
  %27 = load %struct.pmu*, %struct.pmu** %2, align 8
  %28 = getelementptr inbounds %struct.pmu, %struct.pmu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.pmu*, %struct.pmu** %2, align 8
  %31 = getelementptr inbounds %struct.pmu, %struct.pmu* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_set_name(%struct.TYPE_9__* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  br label %99

37:                                               ; preds = %15
  %38 = load %struct.pmu*, %struct.pmu** %2, align 8
  %39 = getelementptr inbounds %struct.pmu, %struct.pmu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load %struct.pmu*, %struct.pmu** %2, align 8
  %42 = call i32 @dev_set_drvdata(%struct.TYPE_9__* %40, %struct.pmu* %41)
  %43 = load %struct.pmu*, %struct.pmu** %2, align 8
  %44 = getelementptr inbounds %struct.pmu, %struct.pmu* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32* @pmu_bus, i32** %46, align 8
  %47 = load i32, i32* @pmu_dev_release, align 4
  %48 = load %struct.pmu*, %struct.pmu** %2, align 8
  %49 = getelementptr inbounds %struct.pmu, %struct.pmu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.pmu*, %struct.pmu** %2, align 8
  %53 = getelementptr inbounds %struct.pmu, %struct.pmu* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i32 @device_add(%struct.TYPE_9__* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %99

59:                                               ; preds = %37
  %60 = load %struct.pmu*, %struct.pmu** %2, align 8
  %61 = getelementptr inbounds %struct.pmu, %struct.pmu* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.pmu*, %struct.pmu** %2, align 8
  %66 = getelementptr inbounds %struct.pmu, %struct.pmu* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @device_create_file(%struct.TYPE_9__* %67, i32* @dev_attr_nr_addr_filters)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %94

73:                                               ; preds = %69
  %74 = load %struct.pmu*, %struct.pmu** %2, align 8
  %75 = getelementptr inbounds %struct.pmu, %struct.pmu* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.pmu*, %struct.pmu** %2, align 8
  %80 = getelementptr inbounds %struct.pmu, %struct.pmu* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.pmu*, %struct.pmu** %2, align 8
  %84 = getelementptr inbounds %struct.pmu, %struct.pmu* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @sysfs_update_groups(i32* %82, i64 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %73
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %94

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %99, %91, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93

94:                                               ; preds = %90, %72
  %95 = load %struct.pmu*, %struct.pmu** %2, align 8
  %96 = getelementptr inbounds %struct.pmu, %struct.pmu* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i32 @device_del(%struct.TYPE_9__* %97)
  br label %99

99:                                               ; preds = %94, %58, %36
  %100 = load %struct.pmu*, %struct.pmu** %2, align 8
  %101 = getelementptr inbounds %struct.pmu, %struct.pmu* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call i32 @put_device(%struct.TYPE_9__* %102)
  br label %92
}

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_9__*, %struct.pmu*) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sysfs_update_groups(i32*, i64) #1

declare dso_local i32 @device_del(%struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
