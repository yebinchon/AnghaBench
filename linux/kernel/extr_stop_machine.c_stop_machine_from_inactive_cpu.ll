; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_machine_from_inactive_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_machine_from_inactive_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.multi_stop_data = type { i8*, i64, %struct.cpumask*, i32 }
%struct.cpu_stop_done = type { i32, i32 }

@stop_cpus_mutex = common dso_local global i32 0, align 4
@MULTI_STOP_PREPARE = common dso_local global i32 0, align 4
@cpu_active_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_machine_from_inactive_cpu(i32 %0, i8* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca %struct.multi_stop_data, align 8
  %8 = alloca %struct.cpu_stop_done, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.cpumask* %2, %struct.cpumask** %6, align 8
  %10 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %7, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %7, i32 0, i32 2
  %14 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  store %struct.cpumask* %14, %struct.cpumask** %13, align 8
  %15 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %7, i32 0, i32 3
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %15, align 8
  %17 = call i32 (...) @raw_smp_processor_id()
  %18 = call i32 @cpu_active(i32 %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i64 (...) @num_active_cpus()
  %21 = add nsw i64 %20, 1
  %22 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %7, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %27, %3
  %24 = call i32 @mutex_trylock(i32* @stop_cpus_mutex)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @cpu_relax()
  br label %23

29:                                               ; preds = %23
  %30 = load i32, i32* @MULTI_STOP_PREPARE, align 4
  %31 = call i32 @set_state(%struct.multi_stop_data* %7, i32 %30)
  %32 = call i64 (...) @num_active_cpus()
  %33 = call i32 @cpu_stop_init_done(%struct.cpu_stop_done* %8, i64 %32)
  %34 = load i32, i32* @cpu_active_mask, align 4
  %35 = call i32 @queue_stop_cpus_work(i32 %34, i32 (%struct.multi_stop_data*)* @multi_cpu_stop, %struct.multi_stop_data* %7, %struct.cpu_stop_done* %8)
  %36 = call i32 @multi_cpu_stop(%struct.multi_stop_data* %7)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %42, %29
  %38 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %8, i32 0, i32 1
  %39 = call i32 @completion_done(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @cpu_relax()
  br label %37

44:                                               ; preds = %37
  %45 = call i32 @mutex_unlock(i32* @stop_cpus_mutex)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ %46, %48 ], [ %51, %49 ]
  ret i32 %53
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_active(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @num_active_cpus(...) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @set_state(%struct.multi_stop_data*, i32) #1

declare dso_local i32 @cpu_stop_init_done(%struct.cpu_stop_done*, i64) #1

declare dso_local i32 @queue_stop_cpus_work(i32, i32 (%struct.multi_stop_data*)*, %struct.multi_stop_data*, %struct.cpu_stop_done*) #1

declare dso_local i32 @multi_cpu_stop(%struct.multi_stop_data*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
