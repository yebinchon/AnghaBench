; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_change_task_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_change_task_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32*)* @cpuset_change_task_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_change_task_nodemask(%struct.task_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call i32 @task_lock(%struct.task_struct* %5)
  %7 = call i32 (...) @local_irq_disable()
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = call i32 @write_seqcount_begin(i32* %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nodes_or(i32 %13, i32 %16, i32 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mpol_rebind_task(%struct.task_struct* %20, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = call i32 @write_seqcount_end(i32* %28)
  %30 = call i32 (...) @local_irq_enable()
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = call i32 @task_unlock(%struct.task_struct* %31)
  ret void
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @nodes_or(i32, i32, i32) #1

declare dso_local i32 @mpol_rebind_task(%struct.task_struct*, i32*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
