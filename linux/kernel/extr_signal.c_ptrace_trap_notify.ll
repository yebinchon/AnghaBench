; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_ptrace_trap_notify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_ptrace_trap_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PT_SEIZED = common dso_local global i32 0, align 4
@JOBCTL_TRAP_NOTIFY = common dso_local global i32 0, align 4
@JOBCTL_LISTENING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @ptrace_trap_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_trap_notify(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @PT_SEIZED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @assert_spin_locked(i32* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = load i32, i32* @JOBCTL_TRAP_NOTIFY, align 4
  %19 = call i32 @task_set_jobctl_pending(%struct.task_struct* %17, i32 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @JOBCTL_LISTENING, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @ptrace_signal_wake_up(%struct.task_struct* %20, i32 %25)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @task_set_jobctl_pending(%struct.task_struct*, i32) #1

declare dso_local i32 @ptrace_signal_wake_up(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
