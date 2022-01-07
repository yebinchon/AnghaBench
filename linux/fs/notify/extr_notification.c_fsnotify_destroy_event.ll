; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_notification.c_fsnotify_destroy_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_notification.c_fsnotify_destroy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { %struct.TYPE_2__*, i32, %struct.fsnotify_event* }
%struct.TYPE_2__ = type { i32 (%struct.fsnotify_event*)* }
%struct.fsnotify_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_destroy_event(%struct.fsnotify_group* %0, %struct.fsnotify_event* %1) #0 {
  %3 = alloca %struct.fsnotify_group*, align 8
  %4 = alloca %struct.fsnotify_event*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %3, align 8
  store %struct.fsnotify_event* %1, %struct.fsnotify_event** %4, align 8
  %5 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %6 = icmp ne %struct.fsnotify_event* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %9 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %10 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %9, i32 0, i32 2
  %11 = load %struct.fsnotify_event*, %struct.fsnotify_event** %10, align 8
  %12 = icmp eq %struct.fsnotify_event* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %2
  br label %41

14:                                               ; preds = %7
  %15 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %16 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %21 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %24 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %23, i32 0, i32 0
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %31 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  br label %33

33:                                               ; preds = %19, %14
  %34 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %35 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.fsnotify_event*)*, i32 (%struct.fsnotify_event*)** %37, align 8
  %39 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %40 = call i32 %38(%struct.fsnotify_event* %39)
  br label %41

41:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
