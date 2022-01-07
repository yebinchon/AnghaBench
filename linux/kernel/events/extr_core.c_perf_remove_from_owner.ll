; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_remove_from_owner.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_remove_from_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32 }
%struct.task_struct = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_remove_from_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_remove_from_owner(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.task_struct* @READ_ONCE(i32 %7)
  store %struct.task_struct* %8, %struct.task_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = call i32 @get_task_struct(%struct.task_struct* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %22 = call i32 @mutex_lock_nested(i32* %20, i32 %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = call i32 @smp_store_release(i32* %32, i32* null)
  br label %34

34:                                               ; preds = %27, %18
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = call i32 @put_task_struct(%struct.task_struct* %38)
  br label %40

40:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @READ_ONCE(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @smp_store_release(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
