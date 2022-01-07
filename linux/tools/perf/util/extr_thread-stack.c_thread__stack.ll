; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread__stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread__stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32 }
%struct.thread = type { %struct.thread_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_stack* (%struct.thread*, i32)* @thread__stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_stack* @thread__stack(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread_stack*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = icmp ne %struct.thread* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.thread_stack* null, %struct.thread_stack** %3, align 8
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = call i64 @thread_stack__per_cpu(%struct.thread* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.thread_stack* @thread__cpu_stack(%struct.thread* %14, i32 %15)
  store %struct.thread_stack* %16, %struct.thread_stack** %3, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.thread_stack*, %struct.thread_stack** %19, align 8
  store %struct.thread_stack* %20, %struct.thread_stack** %3, align 8
  br label %21

21:                                               ; preds = %17, %13, %8
  %22 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  ret %struct.thread_stack* %22
}

declare dso_local i64 @thread_stack__per_cpu(%struct.thread*) #1

declare dso_local %struct.thread_stack* @thread__cpu_stack(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
