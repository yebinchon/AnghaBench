; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.fuse_statfs_out* }
%struct.fuse_statfs_out = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FUSE_SUPER_MAGIC = common dso_local global i32 0, align 4
@FUSE_STATFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @fuse_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_statfs_out, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %7, align 8
  %15 = call i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 @args)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %17 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @FUSE_SUPER_MAGIC, align 4
  %21 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %22 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.fuse_statfs_out* %8, i32 0, i32 4)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 4), align 8
  %25 = load i32, i32* @FUSE_STATFS, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 3), align 4
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @d_inode(%struct.dentry* %26)
  %28 = call i32 @get_node_id(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 0), align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store %struct.fuse_statfs_out* %8, %struct.fuse_statfs_out** %34, align 8
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %36 = call i32 @fuse_simple_request(%struct.fuse_conn* %35, %struct.TYPE_6__* @args)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %23
  %40 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %8, i32 0, i32 0
  %42 = call i32 @convert_fuse_statfs(%struct.kstatfs* %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %23
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local i32 @memset(%struct.fuse_statfs_out*, i32, i32) #1

declare dso_local i32 @get_node_id(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_6__*) #1

declare dso_local i32 @convert_fuse_statfs(%struct.kstatfs*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
