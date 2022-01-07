; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c___cpu_stop_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c___cpu_stop_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stopper = type { i32, i32 }
%struct.cpu_stop_work = type { i32 }
%struct.wake_q_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_stopper*, %struct.cpu_stop_work*, %struct.wake_q_head*)* @__cpu_stop_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cpu_stop_queue_work(%struct.cpu_stopper* %0, %struct.cpu_stop_work* %1, %struct.wake_q_head* %2) #0 {
  %4 = alloca %struct.cpu_stopper*, align 8
  %5 = alloca %struct.cpu_stop_work*, align 8
  %6 = alloca %struct.wake_q_head*, align 8
  store %struct.cpu_stopper* %0, %struct.cpu_stopper** %4, align 8
  store %struct.cpu_stop_work* %1, %struct.cpu_stop_work** %5, align 8
  store %struct.wake_q_head* %2, %struct.wake_q_head** %6, align 8
  %7 = load %struct.cpu_stop_work*, %struct.cpu_stop_work** %5, align 8
  %8 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %7, i32 0, i32 0
  %9 = load %struct.cpu_stopper*, %struct.cpu_stopper** %4, align 8
  %10 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %9, i32 0, i32 1
  %11 = call i32 @list_add_tail(i32* %8, i32* %10)
  %12 = load %struct.wake_q_head*, %struct.wake_q_head** %6, align 8
  %13 = load %struct.cpu_stopper*, %struct.cpu_stopper** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wake_q_add(%struct.wake_q_head* %12, i32 %15)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_q_add(%struct.wake_q_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
