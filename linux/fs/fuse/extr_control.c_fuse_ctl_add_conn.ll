; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_add_conn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.fuse_conn = type { i32 }

@fuse_control_sb = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@fuse_ctl_waiting_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@fuse_ctl_abort_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"max_background\00", align 1
@fuse_conn_max_background_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"congestion_threshold\00", align 1
@fuse_conn_congestion_threshold_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_ctl_add_conn(%struct.fuse_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fuse_control_sb, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fuse_control_sb, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call i32 @d_inode(%struct.dentry* %13)
  %15 = call i32 @inc_nlink(i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = or i32 %24, 320
  %26 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %21, %struct.fuse_conn* %22, i8* %23, i32 %25, i32 2, i32* @simple_dir_inode_operations, i32* @simple_dir_operations)
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  br label %60

30:                                               ; preds = %9
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = or i32 %33, 256
  %35 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %31, %struct.fuse_conn* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 1, i32* null, i32* @fuse_ctl_waiting_ops)
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %40 = load i32, i32* @S_IFREG, align 4
  %41 = or i32 %40, 128
  %42 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %38, %struct.fuse_conn* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 1, i32* null, i32* @fuse_ctl_abort_ops)
  %43 = icmp ne %struct.dentry* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %47 = load i32, i32* @S_IFREG, align 4
  %48 = or i32 %47, 384
  %49 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %45, %struct.fuse_conn* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 1, i32* null, i32* @fuse_conn_max_background_ops)
  %50 = icmp ne %struct.dentry* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %54 = load i32, i32* @S_IFREG, align 4
  %55 = or i32 %54, 384
  %56 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %52, %struct.fuse_conn* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 1, i32* null, i32* @fuse_conn_congestion_threshold_ops)
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51, %44, %37, %30
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %65

60:                                               ; preds = %58, %29
  %61 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %62 = call i32 @fuse_ctl_remove_conn(%struct.fuse_conn* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %59, %8
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @inc_nlink(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry*, %struct.fuse_conn*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @fuse_ctl_remove_conn(%struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
