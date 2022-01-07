; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c___put_task_struct.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c___put_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__put_task_struct(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = call i32 @refcount_read(i32* %11)
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %16 = icmp eq %struct.task_struct* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = call i32 @cgroup_free(%struct.task_struct* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call i32 @task_numa_free(%struct.task_struct* %21, i32 1)
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = call i32 @security_task_free(%struct.task_struct* %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = call i32 @exit_creds(%struct.task_struct* %25)
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = call i32 @delayacct_tsk_free(%struct.task_struct* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @put_signal_struct(i32 %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %34 = call i32 @profile_handoff_task(%struct.task_struct* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %38 = call i32 @free_task(%struct.task_struct* %37)
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @cgroup_free(%struct.task_struct*) #1

declare dso_local i32 @task_numa_free(%struct.task_struct*, i32) #1

declare dso_local i32 @security_task_free(%struct.task_struct*) #1

declare dso_local i32 @exit_creds(%struct.task_struct*) #1

declare dso_local i32 @delayacct_tsk_free(%struct.task_struct*) #1

declare dso_local i32 @put_signal_struct(i32) #1

declare dso_local i32 @profile_handoff_task(%struct.task_struct*) #1

declare dso_local i32 @free_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
