; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i64, %struct.call_return_processor*, i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.machine = type { i32 }
%struct.call_return_processor = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@X86_RETPOLINE_POSSIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_stack*, %struct.thread*, %struct.call_return_processor*)* @thread_stack__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__init(%struct.thread_stack* %0, %struct.thread* %1, %struct.call_return_processor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_stack*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.call_return_processor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i8*, align 8
  store %struct.thread_stack* %0, %struct.thread_stack** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.call_return_processor* %2, %struct.call_return_processor** %7, align 8
  %11 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %12 = call i32 @thread_stack__grow(%struct.thread_stack* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.machine*, %struct.machine** %26, align 8
  %28 = icmp ne %struct.machine* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.machine*, %struct.machine** %33, align 8
  store %struct.machine* %34, %struct.machine** %9, align 8
  %35 = load %struct.machine*, %struct.machine** %9, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @perf_env__arch(i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load %struct.machine*, %struct.machine** %9, align 8
  %40 = call i64 @machine__kernel_start(%struct.machine* %39)
  %41 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %42 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @X86_RETPOLINE_POSSIBLE, align 4
  %48 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %49 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  br label %54

51:                                               ; preds = %22, %17
  %52 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %53 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %52, i32 0, i32 0
  store i64 -9223372036854775808, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.call_return_processor*, %struct.call_return_processor** %7, align 8
  %56 = load %struct.thread_stack*, %struct.thread_stack** %5, align 8
  %57 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %56, i32 0, i32 1
  store %struct.call_return_processor* %55, %struct.call_return_processor** %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @thread_stack__grow(%struct.thread_stack*) #1

declare dso_local i8* @perf_env__arch(i32) #1

declare dso_local i64 @machine__kernel_start(%struct.machine*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
