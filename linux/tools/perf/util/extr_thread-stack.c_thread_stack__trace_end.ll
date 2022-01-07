; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__trace_end.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__trace_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.call_path_root* }
%struct.call_path_root = type { i32 }
%struct.perf_sample = type { i32, i64, i64 }
%struct.call_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_stack*, %struct.perf_sample*, i64)* @thread_stack__trace_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__trace_end(%struct.thread_stack* %0, %struct.perf_sample* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_stack*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.call_path_root*, align 8
  %9 = alloca %struct.call_path*, align 8
  %10 = alloca i64, align 8
  store %struct.thread_stack* %0, %struct.thread_stack** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %12 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  store %struct.call_path_root* %15, %struct.call_path_root** %8, align 8
  %16 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %17 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %22 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %27 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %67

35:                                               ; preds = %25, %20
  %36 = load %struct.call_path_root*, %struct.call_path_root** %8, align 8
  %37 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %38 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %41 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %49 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %36, i32 %47, i32* null, i32 0, i32 %50)
  store %struct.call_path* %51, %struct.call_path** %9, align 8
  %52 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %53 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %56 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  store i64 %58, i64* %10, align 8
  %59 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %62 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.call_path*, %struct.call_path** %9, align 8
  %66 = call i32 @thread_stack__push_cp(%struct.thread_stack* %59, i64 %60, i32 %63, i64 %64, %struct.call_path* %65, i32 0, i32 1)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %35, %34
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.call_path* @call_path__findnew(%struct.call_path_root*, i32, i32*, i32, i32) #1

declare dso_local i32 @thread_stack__push_cp(%struct.thread_stack*, i64, i32, i64, %struct.call_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
