; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__pop_ks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__pop_ks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i32 }
%struct.perf_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread_stack*, %struct.perf_sample*, i32)* @thread_stack__pop_ks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__pop_ks(%struct.thread* %0, %struct.thread_stack* %1, %struct.perf_sample* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.thread_stack*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %33, %4
  %16 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %17 = call i64 @thread_stack__in_kernel(%struct.thread_stack* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %22 = load %struct.thread_stack*, %struct.thread_stack** %7, align 8
  %23 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @thread_stack__call_return(%struct.thread* %20, %struct.thread_stack* %21, i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %19
  br label %15

34:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @thread_stack__in_kernel(%struct.thread_stack*) #1

declare dso_local i32 @thread_stack__call_return(%struct.thread*, %struct.thread_stack*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
