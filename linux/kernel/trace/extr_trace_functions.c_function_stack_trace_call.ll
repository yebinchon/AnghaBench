; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_function_stack_trace_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_function_stack_trace_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { %struct.trace_array* }
%struct.trace_array = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.trace_array_cpu = type { i32 }

@STACK_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)* @function_stack_trace_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @function_stack_trace_call(i64 %0, i64 %1, %struct.ftrace_ops* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftrace_ops*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.trace_array*, align 8
  %10 = alloca %struct.trace_array_cpu*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ftrace_ops* %2, %struct.ftrace_ops** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %15 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %16 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %15, i32 0, i32 0
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %9, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %19 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %64

27:                                               ; preds = %4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = call i32 (...) @raw_smp_processor_id()
  store i32 %30, i32* %13, align 4
  %31 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %32 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.trace_array_cpu* @per_cpu_ptr(i32 %34, i32 %35)
  store %struct.trace_array_cpu* %36, %struct.trace_array_cpu** %10, align 8
  %37 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %10, align 8
  %38 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %37, i32 0, i32 0
  %39 = call i64 @atomic_inc_return(i32* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %27
  %46 = call i32 (...) @preempt_count()
  store i32 %46, i32* %14, align 4
  %47 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @trace_function(%struct.trace_array* %47, i64 %48, i64 %49, i64 %50, i32 %51)
  %53 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* @STACK_SKIP, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @__trace_stack(%struct.trace_array* %53, i64 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %27
  %59 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %10, align 8
  %60 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %59, i32 0, i32 0
  %61 = call i32 @atomic_dec(i32* %60)
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  br label %64

64:                                               ; preds = %58, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.trace_array_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @trace_function(%struct.trace_array*, i64, i64, i64, i32) #1

declare dso_local i32 @__trace_stack(%struct.trace_array*, i64, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
