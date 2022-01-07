; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@__const.cpufreq_set_frequency.userspace_gov = private unnamed_addr constant [10 x i8] c"userspace\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@WRITE_SCALING_SET_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_set_frequency(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.cpufreq_policy*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.cpufreq_policy* @cpufreq_get_policy(i32 %12)
  store %struct.cpufreq_policy* %13, %struct.cpufreq_policy** %6, align 8
  %14 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cpufreq_set_frequency.userspace_gov, i32 0, i32 0), i64 10, i1 false)
  %15 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %20 = icmp ne %struct.cpufreq_policy* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %29 = call i64 @strncmp(i32 %27, i8* %28, i32 9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %34 = call i32 @cpufreq_modify_policy_governor(i32 %32, i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %39 = call i32 @cpufreq_put_policy(%struct.cpufreq_policy* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %52

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %44 = call i32 @cpufreq_put_policy(%struct.cpufreq_policy* %43)
  %45 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @snprintf(i8* %18, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @WRITE_SCALING_SET_SPEED, align 4
  %50 = call i32 @strlen(i8* %18)
  %51 = call i32 @sysfs_cpufreq_write_one_value(i32 %48, i32 %49, i8* %18, i32 %50)
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %42, %37, %21
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.cpufreq_policy* @cpufreq_get_policy(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @cpufreq_modify_policy_governor(i32, i8*) #1

declare dso_local i32 @cpufreq_put_policy(%struct.cpufreq_policy*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @sysfs_cpufreq_write_one_value(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
