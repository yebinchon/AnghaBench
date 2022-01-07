; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_freeze_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_freeze_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@JOBCTL_TRAP_FREEZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @cgroup_freeze_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_freeze_task(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i32 @lock_task_sighand(%struct.task_struct* %6, i64* %5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @JOBCTL_TRAP_FREEZE, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i32 @signal_wake_up(%struct.task_struct* %19, i32 0)
  br label %30

21:                                               ; preds = %10
  %22 = load i32, i32* @JOBCTL_TRAP_FREEZE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i32 @wake_up_process(%struct.task_struct* %28)
  br label %30

30:                                               ; preds = %21, %13
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = call i32 @unlock_task_sighand(%struct.task_struct* %31, i64* %5)
  br label %33

33:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @signal_wake_up(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
