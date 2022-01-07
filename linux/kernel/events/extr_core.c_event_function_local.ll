; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function_local.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i64, %struct.task_struct* }
%struct.perf_cpu_context = type { %struct.perf_event_context, %struct.perf_event_context* }

@TASK_TOMBSTONE = common dso_local global %struct.task_struct* null, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)*, i8*)* @event_function_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_function_local(%struct.perf_event* %0, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca %struct.perf_cpu_context*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* %1, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  store %struct.perf_event_context* %13, %struct.perf_event_context** %7, align 8
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %15 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %14)
  store %struct.perf_cpu_context* %15, %struct.perf_cpu_context** %8, align 8
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %17 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %16, i32 0, i32 1
  %18 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %19 = call %struct.task_struct* @READ_ONCE(%struct.task_struct* %18)
  store %struct.task_struct* %19, %struct.task_struct** %9, align 8
  store %struct.perf_event_context* null, %struct.perf_event_context** %10, align 8
  %20 = call i32 (...) @lockdep_assert_irqs_disabled()
  %21 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %26 = icmp eq %struct.task_struct* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %87

28:                                               ; preds = %23
  %29 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  store %struct.perf_event_context* %29, %struct.perf_event_context** %10, align 8
  br label %30

30:                                               ; preds = %28, %3
  %31 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %8, align 8
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %33 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %31, %struct.perf_event_context* %32)
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %35 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %34, i32 0, i32 1
  %36 = load %struct.task_struct*, %struct.task_struct** %35, align 8
  store %struct.task_struct* %36, %struct.task_struct** %9, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %39 = icmp eq %struct.task_struct* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %83

41:                                               ; preds = %30
  %42 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %43 = icmp ne %struct.task_struct* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %46 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %52 = icmp ne %struct.task_struct* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %83

57:                                               ; preds = %49
  %58 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %8, align 8
  %59 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %58, i32 0, i32 1
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %59, align 8
  %61 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %62 = icmp ne %struct.perf_event_context* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON_ONCE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %83

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %44
  br label %76

69:                                               ; preds = %41
  %70 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %8, align 8
  %71 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %70, i32 0, i32 0
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %73 = icmp ne %struct.perf_event_context* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON_ONCE(i32 %74)
  br label %76

76:                                               ; preds = %69, %68
  %77 = load i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)*, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)** %5, align 8
  %78 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %79 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %8, align 8
  %80 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 %77(%struct.perf_event* %78, %struct.perf_cpu_context* %79, %struct.perf_event_context* %80, i8* %81)
  br label %83

83:                                               ; preds = %76, %66, %56, %40
  %84 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %8, align 8
  %85 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %86 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %84, %struct.perf_event_context* %85)
  br label %87

87:                                               ; preds = %83, %27
  ret void
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local %struct.task_struct* @READ_ONCE(%struct.task_struct*) #1

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
