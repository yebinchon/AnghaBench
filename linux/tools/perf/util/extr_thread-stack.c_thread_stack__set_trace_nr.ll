; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__set_trace_nr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__set_trace_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_stack__set_trace_nr(%struct.thread* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_stack*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.thread_stack* @thread__stack(%struct.thread* %8, i32 %9)
  store %struct.thread_stack* %10, %struct.thread_stack** %7, align 8
  %11 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %12 = icmp ne %struct.thread_stack* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %33

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %17 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %22 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %28 = call i32 @__thread_stack__flush(%struct.thread* %26, %struct.thread_stack* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %32 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %13, %29, %14
  ret void
}

declare dso_local %struct.thread_stack* @thread__stack(%struct.thread*, i32) #1

declare dso_local i32 @__thread_stack__flush(%struct.thread*, %struct.thread_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
