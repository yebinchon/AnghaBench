; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@LLONG_MAX = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_fsync(%struct.file* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %10, align 8
  %14 = call i32 @trace_nfs_fsync_enter(%struct.inode* %13)
  br label %15

15:                                               ; preds = %39, %4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @file_write_and_wait_range(%struct.file* %16, i64 %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nfs_file_fsync_commit(%struct.file* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @pnfs_sync_inode(%struct.inode* %30, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %29, %23
  store i64 0, i64* %6, align 8
  %38 = load i64, i64* @LLONG_MAX, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %15, label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @trace_nfs_fsync_exit(%struct.inode* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @trace_nfs_fsync_enter(%struct.inode*) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i64, i64) #1

declare dso_local i32 @nfs_file_fsync_commit(%struct.file*, i32) #1

declare dso_local i32 @pnfs_sync_inode(%struct.inode*, i32) #1

declare dso_local i32 @trace_nfs_fsync_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
