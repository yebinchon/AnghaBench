; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_file_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.machine = type { i32 }

@dso__data_open_lock = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DSO__DATA_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*, i32, i8*)* @file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_read(%struct.dso* %0, %struct.machine* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.machine* %1, %struct.machine** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = call i32 @pthread_mutex_lock(i32* @dso__data_open_lock)
  %11 = load %struct.dso*, %struct.dso** %5, align 8
  %12 = load %struct.machine*, %struct.machine** %6, align 8
  %13 = call i32 @try_to_open_dso(%struct.dso* %11, %struct.machine* %12)
  %14 = load %struct.dso*, %struct.dso** %5, align 8
  %15 = getelementptr inbounds %struct.dso, %struct.dso* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @DSO_DATA_STATUS_ERROR, align 4
  %21 = load %struct.dso*, %struct.dso** %5, align 8
  %22 = getelementptr inbounds %struct.dso, %struct.dso* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %35

26:                                               ; preds = %4
  %27 = load %struct.dso*, %struct.dso** %5, align 8
  %28 = getelementptr inbounds %struct.dso, %struct.dso* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @DSO__DATA_CACHE_SIZE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pread(i64 %30, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %26, %19
  %36 = call i32 @pthread_mutex_unlock(i32* @dso__data_open_lock)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @try_to_open_dso(%struct.dso*, %struct.machine*) #1

declare dso_local i32 @pread(i64, i8*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
