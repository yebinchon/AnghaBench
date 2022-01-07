; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_move_to_next_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_move_to_next_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.TYPE_2__ = type { i32 }

@save_cpumask = common dso_local global %struct.cpumask zeroinitializer, align 4
@disable_migrate = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@tracing_buffer_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @move_to_next_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_to_next_cpu() #0 {
  %1 = alloca %struct.cpumask*, align 8
  %2 = alloca i32, align 4
  store %struct.cpumask* @save_cpumask, %struct.cpumask** %1, align 8
  %3 = load i32, i32* @disable_migrate, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %44

6:                                                ; preds = %0
  %7 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpumask_equal(%struct.cpumask* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %43

14:                                               ; preds = %6
  %15 = call i32 (...) @get_online_cpus()
  %16 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %17 = load i32, i32* @cpu_online_mask, align 4
  %18 = load i32, i32* @tracing_buffer_mask, align 4
  %19 = call i32 @cpumask_and(%struct.cpumask* %16, i32 %17, i32 %18)
  %20 = call i32 (...) @smp_processor_id()
  %21 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %22 = call i32 @cpumask_next(i32 %20, %struct.cpumask* %21)
  store i32 %22, i32* %2, align 4
  %23 = call i32 (...) @put_online_cpus()
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %29 = call i32 @cpumask_first(%struct.cpumask* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @nr_cpu_ids, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %43

35:                                               ; preds = %30
  %36 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %37 = call i32 @cpumask_clear(%struct.cpumask* %36)
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %40 = call i32 @cpumask_set_cpu(i32 %38, %struct.cpumask* %39)
  %41 = load %struct.cpumask*, %struct.cpumask** %1, align 8
  %42 = call i32 @sched_setaffinity(i32 0, %struct.cpumask* %41)
  br label %44

43:                                               ; preds = %34, %13
  store i32 1, i32* @disable_migrate, align 4
  br label %44

44:                                               ; preds = %43, %35, %5
  ret void
}

declare dso_local i32 @cpumask_equal(%struct.cpumask*, i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32, i32) #1

declare dso_local i32 @cpumask_next(i32, %struct.cpumask*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @cpumask_clear(%struct.cpumask*) #1

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @sched_setaffinity(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
