; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_delete_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_delete_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@blocked_lock_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locks_delete_block(%struct.file_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  %5 = load i32, i32* @ENOENT, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %8 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %11, %1
  %19 = call i32 @spin_lock(i32* @blocked_lock_lock)
  %20 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %27 = call i32 @__locks_wake_up_blocks(%struct.file_lock* %26)
  %28 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %29 = call i32 @__locks_delete_block(%struct.file_lock* %28)
  %30 = call i32 @spin_unlock(i32* @blocked_lock_lock)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__locks_wake_up_blocks(%struct.file_lock*) #1

declare dso_local i32 @__locks_delete_block(%struct.file_lock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
