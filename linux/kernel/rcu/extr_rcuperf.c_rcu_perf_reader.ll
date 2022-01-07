; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32)* }

@.str = private unnamed_addr constant [29 x i8] c"rcu_perf_reader task started\00", align 1
@current = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8
@MAX_NICE = common dso_local global i32 0, align 4
@n_rcu_perf_reader_started = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"rcu_perf_reader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_perf_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_perf_reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = call i32 @VERBOSE_PERFOUT_STRING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @current, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @nr_cpu_ids, align 8
  %12 = srem i64 %10, %11
  %13 = call i32 @cpumask_of(i64 %12)
  %14 = call i32 @set_cpus_allowed_ptr(i32 %9, i32 %13)
  %15 = load i32, i32* @current, align 4
  %16 = load i32, i32* @MAX_NICE, align 4
  %17 = call i32 @set_user_nice(i32 %15, i32 %16)
  %18 = call i32 @atomic_inc(i32* @n_rcu_perf_reader_started)
  br label %19

19:                                               ; preds = %34, %1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %28(i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = call i32 (...) @rcu_perf_wait_shutdown()
  br label %34

34:                                               ; preds = %19
  %35 = call i32 (...) @torture_must_stop()
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %19, label %38

38:                                               ; preds = %34
  %39 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @VERBOSE_PERFOUT_STRING(i8*) #1

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i64) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @rcu_perf_wait_shutdown(...) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
