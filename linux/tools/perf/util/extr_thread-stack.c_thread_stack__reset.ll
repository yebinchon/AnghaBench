; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.thread_stack*)* @thread_stack__reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_stack__reset(%struct.thread* %0, %struct.thread_stack* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread_stack*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %4, align 8
  %6 = load %struct.thread_stack*, %struct.thread_stack** %4, align 8
  %7 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load %struct.thread_stack*, %struct.thread_stack** %4, align 8
  %11 = call i32 @__thread_stack__free(%struct.thread* %9, %struct.thread_stack* %10)
  %12 = load %struct.thread_stack*, %struct.thread_stack** %4, align 8
  %13 = call i32 @memset(%struct.thread_stack* %12, i32 0, i32 4)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.thread_stack*, %struct.thread_stack** %4, align 8
  %16 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @__thread_stack__free(%struct.thread*, %struct.thread_stack*) #1

declare dso_local i32 @memset(%struct.thread_stack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
