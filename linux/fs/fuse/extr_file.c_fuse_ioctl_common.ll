; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_ioctl_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_ioctl_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@EACCES = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuse_ioctl_common(%struct.file* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %11, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %17 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @EACCES, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i64 @is_bad_inode(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @EIO, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @fuse_do_ioctl(%struct.file* %30, i32 %31, i64 %32, i32 %33)
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %29, %26, %19
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @fuse_do_ioctl(%struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
