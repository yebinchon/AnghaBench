; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_prepare_to_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_prepare_to_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_queue_head = type { i32 }
%struct.wait_queue_entry = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@WQ_FLAG_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* %0, %struct.wait_queue_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.wait_queue_head*, align 8
  %5 = alloca %struct.wait_queue_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wait_queue_head* %0, %struct.wait_queue_head** %4, align 8
  store %struct.wait_queue_entry* %1, %struct.wait_queue_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %10 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i64 @signal_pending_state(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %5, align 8
  %19 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %18, i32 0, i32 1
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load i64, i64* @ERESTARTSYS, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %8, align 8
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %5, align 8
  %25 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %24, i32 0, i32 1
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %5, align 8
  %30 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WQ_FLAG_EXCLUSIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %37 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %5, align 8
  %38 = call i32 @__add_wait_queue_entry_tail(%struct.wait_queue_head* %36, %struct.wait_queue_entry* %37)
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %41 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %5, align 8
  %42 = call i32 @__add_wait_queue(%struct.wait_queue_head* %40, %struct.wait_queue_entry* %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @set_current_state(i32 %45)
  br label %47

47:                                               ; preds = %44, %17
  %48 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %49 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_entry_tail(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

declare dso_local i32 @__add_wait_queue(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
