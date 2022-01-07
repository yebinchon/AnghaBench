; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.addr_location = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i32)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread__memcpy(%struct.thread* %0, %struct.machine* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.addr_location, align 8
  %16 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.machine* %1, %struct.machine** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.machine*, %struct.machine** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @machine__kernel_ip(%struct.machine* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load %struct.thread*, %struct.thread** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @thread__find_map(%struct.thread* %25, i32 %26, i32 %27, %struct.addr_location* %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DSO_DATA_STATUS_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i64 @map__load(%struct.TYPE_6__* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36, %30, %24
  store i32 -1, i32* %7, align 4
  br label %81

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64 (%struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_6__*, i32)** %55, align 8
  %57 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i64 %56(%struct.TYPE_6__* %58, i32 %59)
  store i64 %60, i64* %16, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %52
  %72 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.machine*, %struct.machine** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @dso__data_read_offset(%struct.TYPE_7__* %75, %struct.machine* %76, i64 %77, i8* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %71, %51
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i64 @machine__kernel_ip(%struct.machine*, i32) #1

declare dso_local i32 @thread__find_map(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local i64 @map__load(%struct.TYPE_6__*) #1

declare dso_local i32 @dso__data_read_offset(%struct.TYPE_7__*, %struct.machine*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
