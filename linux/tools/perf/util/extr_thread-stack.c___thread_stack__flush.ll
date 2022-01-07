; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c___thread_stack__flush.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c___thread_stack__flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i64, i32, %struct.call_return_processor* }
%struct.call_return_processor = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error flushing thread stack!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread_stack*)* @__thread_stack__flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__thread_stack__flush(%struct.thread* %0, %struct.thread_stack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread_stack*, align 8
  %6 = alloca %struct.call_return_processor*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %5, align 8
  %8 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %9 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %8, i32 0, i32 2
  %10 = load %struct.call_return_processor*, %struct.call_return_processor** %9, align 8
  store %struct.call_return_processor* %10, %struct.call_return_processor** %6, align 8
  %11 = load %struct.call_return_processor*, %struct.call_return_processor** %6, align 8
  %12 = icmp ne %struct.call_return_processor* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %15 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %40, %16
  %18 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %19 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %25 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %26 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %30 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @thread_stack__call_return(%struct.thread* %23, %struct.thread_stack* %24, i64 %28, i32 %31, i32 0, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %38 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %22
  br label %17

41:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @thread_stack__call_return(%struct.thread*, %struct.thread_stack*, i64, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
