; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__flush.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.thread_stack* }
%struct.thread_stack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_stack__flush(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread_stack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.thread_stack*, %struct.thread_stack** %8, align 8
  store %struct.thread_stack* %9, %struct.thread_stack** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %11 = icmp ne %struct.thread_stack* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %16 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %21, i64 %23
  %25 = call i32 @__thread_stack__flush(%struct.thread* %20, %struct.thread_stack* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @__thread_stack__flush(%struct.thread*, %struct.thread_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
