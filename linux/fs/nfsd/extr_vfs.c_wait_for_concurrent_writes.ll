; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_wait_for_concurrent_writes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_wait_for_concurrent_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@wait_for_concurrent_writes.last_ino = internal global i64 0, align 8
@wait_for_concurrent_writes.last_dev = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nfsd: write defer %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nfsd: write resume %d\0A\00", align 1
@I_DIRTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"nfsd: write sync %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @wait_for_concurrent_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_concurrent_writes(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.inode* @file_inode(%struct.file* %5)
  store %struct.inode* %6, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 3
  %9 = call i32 @atomic_read(i32* %8)
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @wait_for_concurrent_writes.last_ino, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i64, i64* @wait_for_concurrent_writes.last_dev, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @current, align 4
  %27 = call i32 @task_pid_nr(i32 %26)
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @msleep(i32 10)
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @task_pid_nr(i32 %30)
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %17, %11
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I_DIRTY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @task_pid_nr(i32 %41)
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.file*, %struct.file** %2, align 8
  %45 = call i32 @vfs_fsync(%struct.file* %44, i32 0)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @wait_for_concurrent_writes.last_ino, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @wait_for_concurrent_writes.last_dev, align 8
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
