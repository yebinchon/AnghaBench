; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_fsync_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_fsync_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NFS: fsync file(%pD2) datasync %d\0A\00", align 1
@NFSIOS_VFSFSYNC = common dso_local global i32 0, align 4
@NFS_CONTEXT_RESEND_WRITES = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @nfs_file_fsync_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_file_fsync_commit(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %10)
  store %struct.nfs_open_context* %11, %struct.nfs_open_context** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.file* %14, i32 %15)
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i32, i32* @NFSIOS_VFSFSYNC, align 4
  %19 = call i32 @nfs_inc_stats(%struct.inode* %17, i32 %18)
  %20 = load i32, i32* @NFS_CONTEXT_RESEND_WRITES, align 4
  %21 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %21, i32 0, i32 0
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i32, i32* @FLUSH_SYNC, align 4
  %26 = call i32 @nfs_commit_inode(%struct.inode* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @file_check_and_advance_wb_err(%struct.file* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %9, align 4
  br label %50

37:                                               ; preds = %32
  %38 = load i32, i32* @NFS_CONTEXT_RESEND_WRITES, align 4
  %39 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %39, i32 0, i32 0
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, %struct.file*, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_commit_inode(%struct.inode*, i32) #1

declare dso_local i32 @file_check_and_advance_wb_err(%struct.file*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
