; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.thread_stack* }
%struct.thread_stack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_stack__free(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread_stack*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load %struct.thread_stack*, %struct.thread_stack** %6, align 8
  store %struct.thread_stack* %7, %struct.thread_stack** %3, align 8
  %8 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %9 = icmp ne %struct.thread_stack* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %14 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %19, i64 %21
  %23 = call i32 @__thread_stack__free(%struct.thread* %18, %struct.thread_stack* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = call i32 @zfree(%struct.thread_stack** %29)
  br label %31

31:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @__thread_stack__free(%struct.thread*, %struct.thread_stack*) #1

declare dso_local i32 @zfree(%struct.thread_stack**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
