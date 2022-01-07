; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_percpu-rwsem.c_percpu_down_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_percpu-rwsem.c_percpu_down_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_rw_semaphore = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @percpu_down_write(%struct.percpu_rw_semaphore* %0) #0 {
  %2 = alloca %struct.percpu_rw_semaphore*, align 8
  store %struct.percpu_rw_semaphore* %0, %struct.percpu_rw_semaphore** %2, align 8
  %3 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %2, align 8
  %4 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %3, i32 0, i32 3
  %5 = call i32 @rcu_sync_enter(i32* %4)
  %6 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %2, align 8
  %7 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %6, i32 0, i32 2
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %2, align 8
  %10 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WRITE_ONCE(i32 %11, i32 1)
  %13 = call i32 (...) @smp_mb()
  %14 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %2, align 8
  %15 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %14, i32 0, i32 0
  %16 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %2, align 8
  %17 = call i32 @readers_active_check(%struct.percpu_rw_semaphore* %16)
  %18 = call i32 @rcuwait_wait_event(i32* %15, i32 %17)
  ret void
}

declare dso_local i32 @rcu_sync_enter(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @rcuwait_wait_event(i32*, i32) #1

declare dso_local i32 @readers_active_check(%struct.percpu_rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
