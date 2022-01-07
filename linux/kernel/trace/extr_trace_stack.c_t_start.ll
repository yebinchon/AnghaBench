; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_t_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_t_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@disable_stack_tracer = common dso_local global i32 0, align 4
@stack_trace_max_lock = common dso_local global i32 0, align 4
@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @t_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @t_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = call i32 (...) @local_irq_disable()
  %7 = load i32, i32* @disable_stack_tracer, align 4
  %8 = call i32 @__this_cpu_inc(i32 %7)
  %9 = call i32 @arch_spin_lock(i32* @stack_trace_max_lock)
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @SEQ_START_TOKEN, align 8
  store i8* %14, i8** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = call i8* @__next(%struct.seq_file* %16, i64* %17)
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i8* @__next(%struct.seq_file*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
