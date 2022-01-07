; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_free_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_free_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, i32, %struct.fsnotify_group* }
%struct.fsnotify_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)* }

@FSNOTIFY_MARK_FLAG_ALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_free_mark(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  %3 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %4 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %5 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %4, i32 0, i32 2
  %6 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  store %struct.fsnotify_group* %6, %struct.fsnotify_group** %3, align 8
  %7 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %8 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %11 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FSNOTIFY_MARK_FLAG_ALIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %18 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  br label %45

20:                                               ; preds = %1
  %21 = load i32, i32* @FSNOTIFY_MARK_FLAG_ALIVE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %24 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %28 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %31 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)*, i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)** %33, align 8
  %35 = icmp ne i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %38 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)*, i32 (%struct.fsnotify_mark*, %struct.fsnotify_group*)** %40, align 8
  %42 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %43 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %44 = call i32 %41(%struct.fsnotify_mark* %42, %struct.fsnotify_group* %43)
  br label %45

45:                                               ; preds = %16, %36, %20
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
