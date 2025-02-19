; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_disable_pid_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_disable_pid_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32 }

@pidmap_lock = common dso_local global i32 0, align 4
@PIDNS_ADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_pid_allocation(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  %3 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  %4 = load i32, i32* @PIDNS_ADDING, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %7 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
