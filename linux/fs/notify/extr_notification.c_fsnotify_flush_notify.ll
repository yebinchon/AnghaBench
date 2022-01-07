; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_notification.c_fsnotify_flush_notify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_notification.c_fsnotify_flush_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.fsnotify_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_flush_notify(%struct.fsnotify_group* %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  %3 = alloca %struct.fsnotify_event*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %2, align 8
  %4 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %5 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %9 = call i32 @fsnotify_notify_queue_is_empty(%struct.fsnotify_group* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %14 = call %struct.fsnotify_event* @fsnotify_remove_first_event(%struct.fsnotify_group* %13)
  store %struct.fsnotify_event* %14, %struct.fsnotify_event** %3, align 8
  %15 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %16 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %19 = load %struct.fsnotify_event*, %struct.fsnotify_event** %3, align 8
  %20 = call i32 @fsnotify_destroy_event(%struct.fsnotify_group* %18, %struct.fsnotify_event* %19)
  %21 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %22 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %26 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fsnotify_notify_queue_is_empty(%struct.fsnotify_group*) #1

declare dso_local %struct.fsnotify_event* @fsnotify_remove_first_event(%struct.fsnotify_group*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_destroy_event(%struct.fsnotify_group*, %struct.fsnotify_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
