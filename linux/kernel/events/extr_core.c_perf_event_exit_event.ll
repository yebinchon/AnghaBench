; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_exit_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_exit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.TYPE_2__*, %struct.perf_event* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_context = type { i32, i32 }
%struct.task_struct = type { i32 }

@PERF_EVENT_STATE_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*, %struct.task_struct*)* @perf_event_exit_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_exit_event(%struct.perf_event* %0, %struct.perf_event_context* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 3
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  store %struct.perf_event* %10, %struct.perf_event** %7, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 0
  %13 = call i32 @raw_spin_lock_irq(i32* %12)
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %19 = icmp ne %struct.perf_event* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = call i32 @perf_group_detach(%struct.perf_event* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %25 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %26 = call i32 @list_del_event(%struct.perf_event* %24, %struct.perf_event_context* %25)
  %27 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %28 = load i32, i32* @PERF_EVENT_STATE_EXIT, align 4
  %29 = call i32 @perf_event_set_state(%struct.perf_event* %27, i32 %28)
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_unlock_irq(i32* %31)
  %33 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %34 = icmp ne %struct.perf_event* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = call i32 @perf_event_wakeup(%struct.perf_event* %36)
  br label %63

38:                                               ; preds = %23
  %39 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %41 = call i32 @sync_child_event(%struct.perf_event* %39, %struct.task_struct* %40)
  %42 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 1
  %53 = call i32 @list_del_init(i32* %52)
  %54 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %58 = call i32 @perf_event_wakeup(%struct.perf_event* %57)
  %59 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %60 = call i32 @free_event(%struct.perf_event* %59)
  %61 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %62 = call i32 @put_event(%struct.perf_event* %61)
  br label %63

63:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_group_detach(%struct.perf_event*) #1

declare dso_local i32 @list_del_event(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @perf_event_wakeup(%struct.perf_event*) #1

declare dso_local i32 @sync_child_event(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_event(%struct.perf_event*) #1

declare dso_local i32 @put_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
