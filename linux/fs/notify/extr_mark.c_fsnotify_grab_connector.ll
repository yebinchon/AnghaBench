; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_grab_connector.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_grab_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_connector = type { i64, i32 }

@fsnotify_mark_srcu = common dso_local global i32 0, align 4
@FSNOTIFY_OBJ_TYPE_DETACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsnotify_mark_connector* (i32*)* @fsnotify_grab_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsnotify_mark_connector* @fsnotify_grab_connector(i32* %0) #0 {
  %2 = alloca %struct.fsnotify_mark_connector*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fsnotify_mark_connector*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i32 @srcu_read_lock(i32* @fsnotify_mark_srcu)
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.fsnotify_mark_connector* @srcu_dereference(i32 %8, i32* @fsnotify_mark_srcu)
  store %struct.fsnotify_mark_connector* %9, %struct.fsnotify_mark_connector** %4, align 8
  %10 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  %11 = icmp ne %struct.fsnotify_mark_connector* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  %15 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  %18 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FSNOTIFY_OBJ_TYPE_DETACHED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  %24 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @srcu_read_unlock(i32* @fsnotify_mark_srcu, i32 %26)
  store %struct.fsnotify_mark_connector* null, %struct.fsnotify_mark_connector** %2, align 8
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @srcu_read_unlock(i32* @fsnotify_mark_srcu, i32 %30)
  %32 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  store %struct.fsnotify_mark_connector* %32, %struct.fsnotify_mark_connector** %2, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %2, align 8
  ret %struct.fsnotify_mark_connector* %34
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.fsnotify_mark_connector* @srcu_dereference(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
