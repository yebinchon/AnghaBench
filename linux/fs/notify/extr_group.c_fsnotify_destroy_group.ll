; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_group.c_fsnotify_destroy_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_group.c_fsnotify_destroy_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i64)* }

@FSNOTIFY_OBJ_ALL_TYPES_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_destroy_group(%struct.fsnotify_group* %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %2, align 8
  %3 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %4 = call i32 @fsnotify_group_stop_queueing(%struct.fsnotify_group* %3)
  %5 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %6 = load i32, i32* @FSNOTIFY_OBJ_ALL_TYPES_MASK, align 4
  %7 = call i32 @fsnotify_clear_marks_by_group(%struct.fsnotify_group* %5, i32 %6)
  %8 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %9 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %12 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event(i32 %10, i32 %16)
  %18 = call i32 (...) @fsnotify_wait_marks_destroyed()
  %19 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %20 = call i32 @fsnotify_flush_notify(%struct.fsnotify_group* %19)
  %21 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %22 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %27 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i64)*, i32 (i64)** %29, align 8
  %31 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %32 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 %30(i64 %33)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %37 = call i32 @fsnotify_put_group(%struct.fsnotify_group* %36)
  ret void
}

declare dso_local i32 @fsnotify_group_stop_queueing(%struct.fsnotify_group*) #1

declare dso_local i32 @fsnotify_clear_marks_by_group(%struct.fsnotify_group*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fsnotify_wait_marks_destroyed(...) #1

declare dso_local i32 @fsnotify_flush_notify(%struct.fsnotify_group*) #1

declare dso_local i32 @fsnotify_put_group(%struct.fsnotify_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
