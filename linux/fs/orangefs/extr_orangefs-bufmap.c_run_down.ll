; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_run_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_run_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.slot_map = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@wait = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot_map*)* @run_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_down(%struct.slot_map* %0) #0 {
  %2 = alloca %struct.slot_map*, align 8
  store %struct.slot_map* %0, %struct.slot_map** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wait, i32 0, i32 0), align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  %5 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %6 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %10 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %30, %13
  %15 = call i32 @list_empty(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wait, i32 0, i32 0))
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %20 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %19, i32 0, i32 1
  %21 = call i32 @__add_wait_queue_entry_tail(%struct.TYPE_8__* %20, %struct.TYPE_7__* @wait)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  %25 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %26 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %32 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = call i32 (...) @schedule()
  %36 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %37 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  br label %14

40:                                               ; preds = %29
  %41 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %42 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %41, i32 0, i32 1
  %43 = call i32 @__remove_wait_queue(%struct.TYPE_8__* %42, %struct.TYPE_7__* @wait)
  %44 = load i32, i32* @TASK_RUNNING, align 4
  %45 = call i32 @__set_current_state(i32 %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %48 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.slot_map*, %struct.slot_map** %2, align 8
  %50 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_entry_tail(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__remove_wait_queue(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
