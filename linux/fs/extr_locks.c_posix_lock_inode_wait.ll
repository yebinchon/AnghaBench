; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_lock_inode_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_lock_inode_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_lock = type { i32, i32 }

@FILE_LOCK_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_lock*)* @posix_lock_inode_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_lock_inode_wait(%struct.inode* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %6 = call i32 (...) @might_sleep()
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %10 = call i32 @posix_lock_inode(%struct.inode* %8, %struct.file_lock* %9, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FILE_LOCK_DEFERRED, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %30

15:                                               ; preds = %7
  %16 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event_interruptible(i32 %18, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %30

29:                                               ; preds = %15
  br label %7

30:                                               ; preds = %28, %14
  %31 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %32 = call i32 @locks_delete_block(%struct.file_lock* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @posix_lock_inode(%struct.inode*, %struct.file_lock*, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @locks_delete_block(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
