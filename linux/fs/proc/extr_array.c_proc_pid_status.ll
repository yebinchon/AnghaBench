; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_pid_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_pid_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Name:\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pid_status(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %11 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %10)
  store %struct.mm_struct* %11, %struct.mm_struct** %9, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %16 = call i32 @proc_task_name(%struct.seq_file* %14, %struct.task_struct* %15, i32 1)
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = call i32 @seq_putc(%struct.seq_file* %17, i8 signext 10)
  %19 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %20 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %21 = load %struct.pid*, %struct.pid** %7, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call i32 @task_state(%struct.seq_file* %19, %struct.pid_namespace* %20, %struct.pid* %21, %struct.task_struct* %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %29 = call i32 @task_mem(%struct.seq_file* %27, %struct.mm_struct* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %32 = call i32 @task_core_dumping(%struct.seq_file* %30, %struct.mm_struct* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %35 = call i32 @task_thp_status(%struct.seq_file* %33, %struct.mm_struct* %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %37 = call i32 @mmput(%struct.mm_struct* %36)
  br label %38

38:                                               ; preds = %26, %4
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %41 = call i32 @task_sig(%struct.seq_file* %39, %struct.task_struct* %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %44 = call i32 @task_cap(%struct.seq_file* %42, %struct.task_struct* %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = call i32 @task_seccomp(%struct.seq_file* %45, %struct.task_struct* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %50 = call i32 @task_cpus_allowed(%struct.seq_file* %48, %struct.task_struct* %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %53 = call i32 @cpuset_task_status_allowed(%struct.seq_file* %51, %struct.task_struct* %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %56 = call i32 @task_context_switch_counts(%struct.seq_file* %54, %struct.task_struct* %55)
  ret i32 0
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @proc_task_name(%struct.seq_file*, %struct.task_struct*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @task_state(%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*) #1

declare dso_local i32 @task_mem(%struct.seq_file*, %struct.mm_struct*) #1

declare dso_local i32 @task_core_dumping(%struct.seq_file*, %struct.mm_struct*) #1

declare dso_local i32 @task_thp_status(%struct.seq_file*, %struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @task_sig(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_cap(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_seccomp(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_cpus_allowed(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @cpuset_task_status_allowed(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_context_switch_counts(%struct.seq_file*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
