; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_function_struct = type { i32, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i32)*, %struct.perf_event* }
%struct.perf_cpu_context = type { %struct.perf_event_context, %struct.perf_event_context* }
%struct.perf_event_context = type { i64, i32 }
%struct.perf_event = type { %struct.perf_event_context* }

@current = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @event_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event_function_struct*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.event_function_struct*
  store %struct.event_function_struct* %10, %struct.event_function_struct** %3, align 8
  %11 = load %struct.event_function_struct*, %struct.event_function_struct** %3, align 8
  %12 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %11, i32 0, i32 2
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %4, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %15, align 8
  store %struct.perf_event_context* %16, %struct.perf_event_context** %5, align 8
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %18 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %17)
  store %struct.perf_cpu_context* %18, %struct.perf_cpu_context** %6, align 8
  %19 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %20 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %19, i32 0, i32 1
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %20, align 8
  store %struct.perf_event_context* %21, %struct.perf_event_context** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = call i32 (...) @lockdep_assert_irqs_disabled()
  %23 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %24 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %25 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %23, %struct.perf_event_context* %24)
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %27 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %1
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @current, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ESRCH, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %70

39:                                               ; preds = %30
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %41 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %49 = icmp ne %struct.perf_event_context* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  br label %59

52:                                               ; preds = %1
  %53 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %54 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %53, i32 0, i32 0
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %56 = icmp ne %struct.perf_event_context* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON_ONCE(i32 %57)
  br label %59

59:                                               ; preds = %52, %39
  %60 = load %struct.event_function_struct*, %struct.event_function_struct** %3, align 8
  %61 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %60, i32 0, i32 1
  %62 = load i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i32)*, i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i32)** %61, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %64 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %65 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %66 = load %struct.event_function_struct*, %struct.event_function_struct** %3, align 8
  %67 = getelementptr inbounds %struct.event_function_struct, %struct.event_function_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %62(%struct.perf_event* %63, %struct.perf_cpu_context* %64, %struct.perf_event_context* %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %36
  %71 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %73 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %71, %struct.perf_event_context* %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
