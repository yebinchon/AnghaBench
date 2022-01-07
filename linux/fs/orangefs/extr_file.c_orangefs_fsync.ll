; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.orangefs_inode_s = type { i32 }
%struct.orangefs_kernel_op_s = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ORANGEFS_VFS_OP_FSYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"orangefs_fsync\00", align 1
@GOSSIP_FILE_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"orangefs_fsync got return value of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @orangefs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.orangefs_inode_s*, align 8
  %12 = alloca %struct.orangefs_kernel_op_s*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.TYPE_10__* @file_inode(%struct.file* %13)
  %15 = call %struct.orangefs_inode_s* @ORANGEFS_I(%struct.TYPE_10__* %14)
  store %struct.orangefs_inode_s* %15, %struct.orangefs_inode_s** %11, align 8
  store %struct.orangefs_kernel_op_s* null, %struct.orangefs_kernel_op_s** %12, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.TYPE_10__* @file_inode(%struct.file* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @filemap_write_and_wait_range(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %4
  %28 = load i32, i32* @ORANGEFS_VFS_OP_FSYNC, align 4
  %29 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %28)
  store %struct.orangefs_kernel_op_s* %29, %struct.orangefs_kernel_op_s** %12, align 8
  %30 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %31 = icmp ne %struct.orangefs_kernel_op_s* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %11, align 8
  %37 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %40 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 4
  %44 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %45 = load %struct.file*, %struct.file** %6, align 8
  %46 = call %struct.TYPE_10__* @file_inode(%struct.file* %45)
  %47 = call i32 @get_interruptible_flag(%struct.TYPE_10__* %46)
  %48 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @GOSSIP_FILE_DEBUG, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @gossip_debug(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %53 = call i32 @op_release(%struct.orangefs_kernel_op_s* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %35, %32, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @file_inode(%struct.file*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local %struct.orangefs_kernel_op_s* @op_alloc(i32) #1

declare dso_local i32 @service_operation(%struct.orangefs_kernel_op_s*, i8*, i32) #1

declare dso_local i32 @get_interruptible_flag(%struct.TYPE_10__*) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @op_release(%struct.orangefs_kernel_op_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
