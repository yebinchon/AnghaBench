; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread__cpu_stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread__cpu_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32, i32 }
%struct.thread = type { %struct.thread_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_stack* (%struct.thread*, i32)* @thread__cpu_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_stack* @thread__cpu_stack(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread_stack*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_stack*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  store %struct.thread_stack* %9, %struct.thread_stack** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  %15 = icmp ne %struct.thread_stack* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  %19 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %13
  store %struct.thread_stack* null, %struct.thread_stack** %3, align 8
  br label %35

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %25, i64 %26
  store %struct.thread_stack* %27, %struct.thread_stack** %6, align 8
  %28 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  %29 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store %struct.thread_stack* null, %struct.thread_stack** %3, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  store %struct.thread_stack* %34, %struct.thread_stack** %3, align 8
  br label %35

35:                                               ; preds = %33, %32, %22
  %36 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  ret %struct.thread_stack* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
