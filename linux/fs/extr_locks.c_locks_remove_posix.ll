; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_posix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.file_lock = type { i32, %struct.TYPE_3__*, i32*, %struct.file*, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.file_lock*)* }
%struct.file_lock_context = type { i32 }

@F_UNLCK = common dso_local global i32 0, align 4
@FL_POSIX = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@F_SETLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_remove_posix(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file_lock, align 8
  %8 = alloca %struct.file_lock_context*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.inode* @locks_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call %struct.file_lock_context* @smp_load_acquire(i32* %12)
  store %struct.file_lock_context* %13, %struct.file_lock_context** %8, align 8
  %14 = load %struct.file_lock_context*, %struct.file_lock_context** %8, align 8
  %15 = icmp ne %struct.file_lock_context* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.file_lock_context*, %struct.file_lock_context** %8, align 8
  %18 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %65

22:                                               ; preds = %16
  %23 = call i32 @locks_init_lock(%struct.file_lock* %7)
  %24 = load i32, i32* @F_UNLCK, align 4
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 8
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @FL_POSIX, align 4
  %27 = load i32, i32* @FL_CLOSE, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @OFFSET_MAX, align 4
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 3
  store %struct.file* %39, %struct.file** %40, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %41, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.file*, %struct.file** %3, align 8
  %44 = load i32, i32* @F_SETLK, align 4
  %45 = call i32 @vfs_lock_file(%struct.file* %43, i32 %44, %struct.file_lock* %7, i32* null)
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %52, align 8
  %54 = icmp ne i32 (%struct.file_lock*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %58, align 8
  %60 = call i32 %59(%struct.file_lock* %7)
  br label %61

61:                                               ; preds = %55, %49, %22
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @trace_locks_remove_posix(%struct.inode* %62, %struct.file_lock* %7, i32 %63)
  br label %65

65:                                               ; preds = %61, %21
  ret void
}

declare dso_local %struct.inode* @locks_inode(%struct.file*) #1

declare dso_local %struct.file_lock_context* @smp_load_acquire(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @vfs_lock_file(%struct.file*, i32, %struct.file_lock*, i32*) #1

declare dso_local i32 @trace_locks_remove_posix(%struct.inode*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
