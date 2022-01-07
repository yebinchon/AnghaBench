; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_rcuwait_wake_up.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_rcuwait_wake_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcuwait = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcuwait_wake_up(%struct.rcuwait* %0) #0 {
  %2 = alloca %struct.rcuwait*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.rcuwait* %0, %struct.rcuwait** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = call i32 (...) @smp_mb()
  %6 = load %struct.rcuwait*, %struct.rcuwait** %2, align 8
  %7 = getelementptr inbounds %struct.rcuwait, %struct.rcuwait* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.task_struct* @rcu_dereference(i32 %8)
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call i32 @wake_up_process(%struct.task_struct* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.task_struct* @rcu_dereference(i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
