; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_machine_cpuslocked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_machine_cpuslocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.multi_stop_data = type { i32 (i8*)*, i8*, i32, %struct.cpumask* }

@stop_machine_initialized = common dso_local global i32 0, align 4
@MULTI_STOP_PREPARE = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@multi_cpu_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_machine_cpuslocked(i32 (i8*)* %0, i8* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.multi_stop_data, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 (i8*)* %0, i32 (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cpumask* %2, %struct.cpumask** %7, align 8
  %11 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %8, i32 0, i32 0
  %12 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  store i32 (i8*)* %12, i32 (i8*)** %11, align 8
  %13 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %8, i32 0, i32 1
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %8, i32 0, i32 2
  %16 = call i32 (...) @num_online_cpus()
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %8, i32 0, i32 3
  %18 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  store %struct.cpumask* %18, %struct.cpumask** %17, align 8
  %19 = call i32 (...) @lockdep_assert_cpus_held()
  %20 = load i32, i32* @stop_machine_initialized, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = call i32 (...) @hard_irq_disable()
  %31 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 %31(i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load i32, i32* @MULTI_STOP_PREPARE, align 4
  %39 = call i32 @set_state(%struct.multi_stop_data* %8, i32 %38)
  %40 = load i32, i32* @cpu_online_mask, align 4
  %41 = load i32, i32* @multi_cpu_stop, align 4
  %42 = call i32 @stop_cpus(i32 %40, i32 %41, %struct.multi_stop_data* %8)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @lockdep_assert_cpus_held(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @set_state(%struct.multi_stop_data*, i32) #1

declare dso_local i32 @stop_cpus(i32, i32, %struct.multi_stop_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
