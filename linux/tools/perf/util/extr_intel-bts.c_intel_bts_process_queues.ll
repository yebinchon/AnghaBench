; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.intel_bts_queue* }
%struct.intel_bts_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts*, i64)* @intel_bts_process_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_process_queues(%struct.intel_bts* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_queue*, align 8
  %8 = alloca %struct.intel_bts_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.intel_bts* %0, %struct.intel_bts** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %11

11:                                               ; preds = %2, %78
  store i64 0, i64* %9, align 8
  %12 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %13 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %11
  %19 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %20 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %79

29:                                               ; preds = %18
  %30 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %31 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %38 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %40, i64 %42
  store %struct.auxtrace_queue* %43, %struct.auxtrace_queue** %7, align 8
  %44 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %45 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %44, i32 0, i32 0
  %46 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %45, align 8
  store %struct.intel_bts_queue* %46, %struct.intel_bts_queue** %8, align 8
  %47 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %48 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %47, i32 0, i32 0
  %49 = call i32 @auxtrace_heap__pop(%struct.TYPE_7__* %48)
  %50 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %51 = call i32 @intel_bts_process_queue(%struct.intel_bts_queue* %50, i64* %9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %29
  %55 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %56 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @auxtrace_heap__add(%struct.TYPE_7__* %56, i32 %57, i64 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %29
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %66 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @auxtrace_heap__add(%struct.TYPE_7__* %66, i32 %67, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %64
  br label %78

75:                                               ; preds = %61
  %76 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %77 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %11

79:                                               ; preds = %72, %54, %28, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @auxtrace_heap__pop(%struct.TYPE_7__*) #1

declare dso_local i32 @intel_bts_process_queue(%struct.intel_bts_queue*, i64*) #1

declare dso_local i32 @auxtrace_heap__add(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
