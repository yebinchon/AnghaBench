; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.file_lock*)* }
%struct.file_lock_context = type { i32 }
%struct.inode = type { i32 }

@LOCK_UN = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, %struct.file_lock_context*)* @locks_remove_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locks_remove_flock(%struct.file* %0, %struct.file_lock_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock_context*, align 8
  %5 = alloca %struct.file_lock, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file_lock_context* %1, %struct.file_lock_context** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.inode* @locks_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.file_lock_context*, %struct.file_lock_context** %4, align 8
  %10 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %9, i32 0, i32 0
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load i32, i32* @LOCK_UN, align 4
  %17 = call i32 @flock_make_lock(%struct.file* %15, i32 %16, %struct.file_lock* %5)
  %18 = load i32, i32* @FL_CLOSE, align 4
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 8
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %25, align 8
  %27 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %32, align 8
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = load i32, i32* @F_SETLKW, align 4
  %36 = call i32 %33(%struct.file* %34, i32 %35, %struct.file_lock* %5)
  br label %40

37:                                               ; preds = %14
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @flock_lock_inode(%struct.inode* %38, %struct.file_lock* %5)
  br label %40

40:                                               ; preds = %37, %28
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %47, align 8
  %49 = icmp ne i32 (%struct.file_lock*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %53, align 8
  %55 = call i32 %54(%struct.file_lock* %5)
  br label %56

56:                                               ; preds = %13, %50, %44, %40
  ret void
}

declare dso_local %struct.inode* @locks_inode(%struct.file*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @flock_make_lock(%struct.file*, i32, %struct.file_lock*) #1

declare dso_local i32 @flock_lock_inode(%struct.inode*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
