; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_sysfs_cpufreq_get_one_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_sysfs_cpufreq_get_one_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LINE_LEN = common dso_local global i32 0, align 4
@MAX_CPUFREQ_VALUE_READ_FILES = common dso_local global i32 0, align 4
@cpufreq_value_files = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @sysfs_cpufreq_get_one_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sysfs_cpufreq_get_one_value(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MAX_LINE_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_CPUFREQ_VALUE_READ_FILES, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @cpufreq_value_files, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = trunc i64 %13 to i32
  %28 = call i32 @sysfs_cpufreq_read_file(i32 %21, i32 %26, i8* %15, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %43

32:                                               ; preds = %20
  %33 = call i64 @strtoul(i8* %15, i8** %10, i32 0)
  store i64 %33, i64* %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, %15
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ERANGE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %40, %31, %19
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysfs_cpufreq_read_file(i32, i32, i8*, i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
