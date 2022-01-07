; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_update_ftrace_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_update_ftrace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@ftrace_ops_list = common dso_local global %struct.TYPE_4__* null, align 8
@ftrace_lock = common dso_local global i32 0, align 4
@set_function_trace_op = common dso_local global i32* null, align 8
@ftrace_list_end = common dso_local global i32 0, align 4
@ftrace_stub = common dso_local global i64 0, align 8
@ftrace_ops_list_func = common dso_local global i64 0, align 8
@ftrace_trace_function = common dso_local global i64 0, align 8
@ftrace_sync = common dso_local global i32 0, align 4
@function_trace_op = common dso_local global i32* null, align 8
@ftrace_sync_ipi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_ftrace_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ftrace_function() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ftrace_ops_list, align 8
  %3 = call i32 @lockdep_is_held(i32* @ftrace_lock)
  %4 = call i32* @rcu_dereference_protected(%struct.TYPE_4__* %2, i32 %3)
  store i32* %4, i32** @set_function_trace_op, align 8
  %5 = load i32*, i32** @set_function_trace_op, align 8
  %6 = icmp eq i32* %5, @ftrace_list_end
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @ftrace_stub, align 8
  store i64 %8, i64* %1, align 8
  br label %22

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ftrace_ops_list, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @lockdep_is_held(i32* @ftrace_lock)
  %14 = call i32* @rcu_dereference_protected(%struct.TYPE_4__* %12, i32 %13)
  %15 = icmp eq i32* %14, @ftrace_list_end
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ftrace_ops_list, align 8
  %18 = call i64 @ftrace_ops_get_list_func(%struct.TYPE_4__* %17)
  store i64 %18, i64* %1, align 8
  br label %21

19:                                               ; preds = %9
  store i32* @ftrace_list_end, i32** @set_function_trace_op, align 8
  %20 = load i64, i64* @ftrace_ops_list_func, align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %7
  %23 = call i32 (...) @update_function_graph_func()
  %24 = load i64, i64* @ftrace_trace_function, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @ftrace_ops_list_func, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %1, align 8
  store i64 %33, i64* @ftrace_trace_function, align 8
  br label %43

34:                                               ; preds = %28
  %35 = load i64, i64* @ftrace_ops_list_func, align 8
  store i64 %35, i64* @ftrace_trace_function, align 8
  %36 = load i32, i32* @ftrace_sync, align 4
  %37 = call i32 @schedule_on_each_cpu(i32 %36)
  %38 = load i32*, i32** @set_function_trace_op, align 8
  store i32* %38, i32** @function_trace_op, align 8
  %39 = call i32 (...) @smp_wmb()
  %40 = load i32, i32* @ftrace_sync_ipi, align 4
  %41 = call i32 @smp_call_function(i32 %40, i32* null, i32 1)
  %42 = load i64, i64* %1, align 8
  store i64 %42, i64* @ftrace_trace_function, align 8
  br label %43

43:                                               ; preds = %34, %32, %27
  ret void
}

declare dso_local i32* @rcu_dereference_protected(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @ftrace_ops_get_list_func(%struct.TYPE_4__*) #1

declare dso_local i32 @update_function_graph_func(...) #1

declare dso_local i32 @schedule_on_each_cpu(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_call_function(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
