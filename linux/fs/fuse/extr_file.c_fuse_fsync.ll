; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FUSE_FSYNC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @fuse_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %18)
  store %struct.fuse_conn* %19, %struct.fuse_conn** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call i64 @is_bad_inode(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i32 @inode_lock(%struct.inode* %27)
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @file_write_and_wait_range(%struct.file* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %71

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = call i32 @fuse_sync_writes(%struct.inode* %37)
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = call i32 @file_check_and_advance_wb_err(%struct.file* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %71

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32 @sync_inode_metadata(%struct.inode* %45, i32 1)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %71

50:                                               ; preds = %44
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %71

56:                                               ; preds = %50
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @FUSE_FSYNC, align 4
  %62 = call i32 @fuse_fsync_common(%struct.file* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @ENOSYS, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %69 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %56
  br label %71

71:                                               ; preds = %70, %55, %49, %43, %35
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call i32 @inode_unlock(%struct.inode* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @fuse_sync_writes(%struct.inode*) #1

declare dso_local i32 @file_check_and_advance_wb_err(%struct.file*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @fuse_fsync_common(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
