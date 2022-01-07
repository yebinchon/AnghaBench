; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i64, i32 }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@SCALING_MIN_FREQ = common dso_local global i32 0, align 4
@WRITE_SCALING_MAX_FREQ = common dso_local global i32 0, align 4
@WRITE_SCALING_MIN_FREQ = common dso_local global i32 0, align 4
@WRITE_SCALING_GOVERNOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_set_policy(i32 %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %5, align 8
  %14 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %25 = icmp ne %struct.cpufreq_policy* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

34:                                               ; preds = %26
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

45:                                               ; preds = %34
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @verify_gov(i8* %23, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

54:                                               ; preds = %45
  %55 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %56 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %57 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @snprintf(i8* %17, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %61 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %62 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @snprintf(i8* %20, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SCALING_MIN_FREQ, align 4
  %67 = call i64 @sysfs_cpufreq_get_one_value(i32 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %54
  %71 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %72 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %73, %74
  br label %76

76:                                               ; preds = %70, %54
  %77 = phi i1 [ false, %54 ], [ %75, %70 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @WRITE_SCALING_MAX_FREQ, align 4
  %85 = call i32 @strlen(i8* %20)
  %86 = call i32 @sysfs_cpufreq_write_one_value(i32 %83, i32 %84, i8* %20, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @WRITE_SCALING_MIN_FREQ, align 4
  %95 = call i32 @strlen(i8* %17)
  %96 = call i32 @sysfs_cpufreq_write_one_value(i32 %93, i32 %94, i8* %17, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @WRITE_SCALING_MAX_FREQ, align 4
  %107 = call i32 @strlen(i8* %20)
  %108 = call i32 @sysfs_cpufreq_write_one_value(i32 %105, i32 %106, i8* %20, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @WRITE_SCALING_GOVERNOR, align 4
  %117 = call i32 @strlen(i8* %23)
  %118 = call i32 @sysfs_cpufreq_write_one_value(i32 %115, i32 %116, i8* %23, i32 %117)
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %114, %111, %99, %89, %51, %42, %31
  %120 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @verify_gov(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i64 @sysfs_cpufreq_get_one_value(i32, i32) #2

declare dso_local i32 @sysfs_cpufreq_write_one_value(i32, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
