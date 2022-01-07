; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___remove_instance.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___remove_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, %struct.trace_array*, i32, %struct.trace_array*, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@TRACE_FLAGS_MAX_SIZE = common dso_local global i32 0, align 4
@ZEROED_TRACE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*)* @__remove_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove_instance(%struct.trace_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %6 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %11 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %16 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %98

24:                                               ; preds = %14, %9
  %25 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %26 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %25, i32 0, i32 5
  %27 = call i32 @list_del(i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %44, %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TRACE_FLAGS_MAX_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @ZEROED_TRACE_FLAGS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @set_tracer_flag(%struct.trace_array* %39, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %49 = call i32 @tracing_set_nop(%struct.trace_array* %48)
  %50 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %51 = call i32 @clear_ftrace_function_probes(%struct.trace_array* %50)
  %52 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %53 = call i32 @event_trace_del_tracer(%struct.trace_array* %52)
  %54 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %55 = call i32 @ftrace_clear_pids(%struct.trace_array* %54)
  %56 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %57 = call i32 @ftrace_destroy_function_files(%struct.trace_array* %56)
  %58 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %59 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @tracefs_remove_recursive(i32 %60)
  %62 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %63 = call i32 @free_trace_buffers(%struct.trace_array* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %80, %47
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %67 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %72 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %71, i32 0, i32 3
  %73 = load %struct.trace_array*, %struct.trace_array** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %73, i64 %75
  %77 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %76, i32 0, i32 3
  %78 = load %struct.trace_array*, %struct.trace_array** %77, align 8
  %79 = call i32 @kfree(%struct.trace_array* %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %85 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %84, i32 0, i32 3
  %86 = load %struct.trace_array*, %struct.trace_array** %85, align 8
  %87 = call i32 @kfree(%struct.trace_array* %86)
  %88 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %89 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @free_cpumask_var(i32 %90)
  %92 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %93 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %92, i32 0, i32 1
  %94 = load %struct.trace_array*, %struct.trace_array** %93, align 8
  %95 = call i32 @kfree(%struct.trace_array* %94)
  %96 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %97 = call i32 @kfree(%struct.trace_array* %96)
  store %struct.trace_array* null, %struct.trace_array** %3, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %83, %21
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @set_tracer_flag(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @tracing_set_nop(%struct.trace_array*) #1

declare dso_local i32 @clear_ftrace_function_probes(%struct.trace_array*) #1

declare dso_local i32 @event_trace_del_tracer(%struct.trace_array*) #1

declare dso_local i32 @ftrace_clear_pids(%struct.trace_array*) #1

declare dso_local i32 @ftrace_destroy_function_files(%struct.trace_array*) #1

declare dso_local i32 @tracefs_remove_recursive(i32) #1

declare dso_local i32 @free_trace_buffers(%struct.trace_array*) #1

declare dso_local i32 @kfree(%struct.trace_array*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
