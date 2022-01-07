; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_free_all_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_free_all_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@cpu_present_set = common dso_local global i32* null, align 8
@cpu_present_setsize = common dso_local global i64 0, align 8
@cpu_affinity_set = common dso_local global i32* null, align 8
@cpu_affinity_setsize = common dso_local global i64 0, align 8
@thread_even = common dso_local global %struct.TYPE_14__* null, align 8
@core_even = common dso_local global %struct.TYPE_14__* null, align 8
@package_even = common dso_local global %struct.TYPE_14__* null, align 8
@thread_odd = common dso_local global %struct.TYPE_14__* null, align 8
@core_odd = common dso_local global %struct.TYPE_14__* null, align 8
@package_odd = common dso_local global %struct.TYPE_14__* null, align 8
@output_buffer = common dso_local global %struct.TYPE_14__* null, align 8
@outp = common dso_local global i32* null, align 8
@irq_column_2_cpu = common dso_local global %struct.TYPE_14__* null, align 8
@irqs_per_cpu = common dso_local global %struct.TYPE_14__* null, align 8
@topo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@cpus = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @cpu_present_set, align 8
  %3 = call i32 @CPU_FREE(i32* %2)
  store i32* null, i32** @cpu_present_set, align 8
  store i64 0, i64* @cpu_present_setsize, align 8
  %4 = load i32*, i32** @cpu_affinity_set, align 8
  %5 = call i32 @CPU_FREE(i32* %4)
  store i32* null, i32** @cpu_affinity_set, align 8
  store i64 0, i64* @cpu_affinity_setsize, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** @thread_even, align 8
  %7 = call i32 @free(%struct.TYPE_14__* %6)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** @core_even, align 8
  %9 = call i32 @free(%struct.TYPE_14__* %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @package_even, align 8
  %11 = call i32 @free(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @thread_even, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @core_even, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @package_even, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @thread_odd, align 8
  %13 = call i32 @free(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @core_odd, align 8
  %15 = call i32 @free(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @package_odd, align 8
  %17 = call i32 @free(%struct.TYPE_14__* %16)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @thread_odd, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @core_odd, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @package_odd, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @output_buffer, align 8
  %19 = call i32 @free(%struct.TYPE_14__* %18)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @output_buffer, align 8
  store i32* null, i32** @outp, align 8
  %20 = call i32 (...) @free_fd_percpu()
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @irq_column_2_cpu, align 8
  %22 = call i32 @free(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @irqs_per_cpu, align 8
  %24 = call i32 @free(%struct.TYPE_14__* %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %46, %0
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @topo, i32 0, i32 0), align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cpus, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cpus, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @CPU_FREE(i32* %43)
  br label %45

45:                                               ; preds = %37, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cpus, align 8
  %51 = call i32 @free(%struct.TYPE_14__* %50)
  ret void
}

declare dso_local i32 @CPU_FREE(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @free_fd_percpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
