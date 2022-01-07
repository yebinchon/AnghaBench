; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { i32, i32, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i64, %struct.task_struct*, i32 }
%struct.event_function_struct = type { i8*, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)*, %struct.perf_event* }

@event_function = common dso_local global i32 0, align 4
@TASK_TOMBSTONE = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)*, i8*)* @event_function_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_function_call(%struct.perf_event* %0, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.event_function_struct, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)* %1, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 2
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %11, align 8
  store %struct.perf_event_context* %12, %struct.perf_event_context** %7, align 8
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 2
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %16 = call %struct.task_struct* @READ_ONCE(%struct.task_struct* %15)
  store %struct.task_struct* %16, %struct.task_struct** %8, align 8
  %17 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %9, i32 0, i32 0
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %9, i32 0, i32 1
  %20 = load i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)*, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)** %5, align 8
  store i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)* %20, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)** %19, align 8
  %21 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %9, i32 0, i32 2
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  store %struct.perf_event* %22, %struct.perf_event** %21, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %29 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %28, i32 0, i32 3
  %30 = call i32 @lockdep_assert_held(i32* %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %33 = icmp ne %struct.task_struct* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @event_function, align 4
  %39 = call i32 @cpu_function_call(i32 %37, i32 %38, %struct.event_function_struct* %9)
  br label %84

40:                                               ; preds = %31
  %41 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %43 = icmp eq %struct.task_struct* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %84

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %71, %45
  %47 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %48 = load i32, i32* @event_function, align 4
  %49 = call i32 @task_function_call(%struct.task_struct* %47, i32 %48, %struct.event_function_struct* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %84

52:                                               ; preds = %46
  %53 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %54 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %53, i32 0, i32 0
  %55 = call i32 @raw_spin_lock_irq(i32* %54)
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %57 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %56, i32 0, i32 2
  %58 = load %struct.task_struct*, %struct.task_struct** %57, align 8
  store %struct.task_struct* %58, %struct.task_struct** %8, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %61 = icmp eq %struct.task_struct* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %64 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %63, i32 0, i32 0
  %65 = call i32 @raw_spin_unlock_irq(i32* %64)
  br label %84

66:                                               ; preds = %52
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %68 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %73 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %72, i32 0, i32 0
  %74 = call i32 @raw_spin_unlock_irq(i32* %73)
  br label %46

75:                                               ; preds = %66
  %76 = load i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)*, i32 (%struct.perf_event*, i32*, %struct.perf_event_context*, i8*)** %5, align 8
  %77 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %78 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 %76(%struct.perf_event* %77, i32* null, %struct.perf_event_context* %78, i8* %79)
  %81 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %82 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %81, i32 0, i32 0
  %83 = call i32 @raw_spin_unlock_irq(i32* %82)
  br label %84

84:                                               ; preds = %75, %62, %51, %44, %34
  ret void
}

declare dso_local %struct.task_struct* @READ_ONCE(%struct.task_struct*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cpu_function_call(i32, i32, %struct.event_function_struct*) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.event_function_struct*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
