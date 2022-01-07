; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__data_get_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__data_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.machine = type { i32 }

@DSO_DATA_STATUS_ERROR = common dso_local global i64 0, align 8
@dso__data_open_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__data_get_fd(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.machine*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.machine* %1, %struct.machine** %5, align 8
  %6 = load %struct.dso*, %struct.dso** %4, align 8
  %7 = getelementptr inbounds %struct.dso, %struct.dso* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DSO_DATA_STATUS_ERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = call i64 @pthread_mutex_lock(i32* @dso__data_open_lock)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %34

17:                                               ; preds = %13
  %18 = load %struct.dso*, %struct.dso** %4, align 8
  %19 = load %struct.machine*, %struct.machine** %5, align 8
  %20 = call i32 @try_to_open_dso(%struct.dso* %18, %struct.machine* %19)
  %21 = load %struct.dso*, %struct.dso** %4, align 8
  %22 = getelementptr inbounds %struct.dso, %struct.dso* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @pthread_mutex_unlock(i32* @dso__data_open_lock)
  br label %28

28:                                               ; preds = %26, %17
  %29 = load %struct.dso*, %struct.dso** %4, align 8
  %30 = getelementptr inbounds %struct.dso, %struct.dso* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %16, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @try_to_open_dso(%struct.dso*, %struct.machine*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
