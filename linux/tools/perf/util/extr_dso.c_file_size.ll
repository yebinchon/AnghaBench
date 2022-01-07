; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i8* }
%struct.machine = type { i32 }
%struct.stat = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@dso__data_open_lock = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"dso cache fstat failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*)* @file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_size(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @STRERR_BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = call i32 @pthread_mutex_lock(i32* @dso__data_open_lock)
  %14 = load %struct.dso*, %struct.dso** %3, align 8
  %15 = load %struct.machine*, %struct.machine** %4, align 8
  %16 = call i32 @try_to_open_dso(%struct.dso* %14, %struct.machine* %15)
  %17 = load %struct.dso*, %struct.dso** %3, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** @DSO_DATA_STATUS_ERROR, align 8
  %26 = load %struct.dso*, %struct.dso** %3, align 8
  %27 = getelementptr inbounds %struct.dso, %struct.dso* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.dso*, %struct.dso** %3, align 8
  %31 = getelementptr inbounds %struct.dso, %struct.dso* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @fstat(i64 %33, %struct.stat* %6)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i32, i32* @errno, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = trunc i64 %10 to i32
  %41 = call i32 @str_error_r(i32 %39, i8* %12, i32 %40)
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** @DSO_DATA_STATUS_ERROR, align 8
  %44 = load %struct.dso*, %struct.dso** %3, align 8
  %45 = getelementptr inbounds %struct.dso, %struct.dso* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  br label %53

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dso*, %struct.dso** %3, align 8
  %51 = getelementptr inbounds %struct.dso, %struct.dso* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %36, %22
  %54 = call i32 @pthread_mutex_unlock(i32* @dso__data_open_lock)
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @try_to_open_dso(%struct.dso*, %struct.machine*) #2

declare dso_local i64 @fstat(i64, %struct.stat*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
