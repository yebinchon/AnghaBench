; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_fsync_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_fsync_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.fuse_fsync_in* }
%struct.fuse_fsync_in = type { i32, i32 }
%struct.file = type { %struct.fuse_file*, %struct.TYPE_6__* }
%struct.fuse_file = type { i32 }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FUSE_FSYNC_FDATASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_fsync_common(%struct.file* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  %13 = alloca %struct.fuse_file*, align 8
  %14 = alloca %struct.fuse_fsync_in, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %20)
  store %struct.fuse_conn* %21, %struct.fuse_conn** %12, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.fuse_file*, %struct.fuse_file** %23, align 8
  store %struct.fuse_file* %24, %struct.fuse_file** %13, align 8
  %25 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %26 = call i32 @memset(%struct.fuse_fsync_in* %14, i32 0, i32 8)
  %27 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.fuse_fsync_in, %struct.fuse_fsync_in* %14, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @FUSE_FSYNC_FDATASYNC, align 4
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = getelementptr inbounds %struct.fuse_fsync_in, %struct.fuse_fsync_in* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @get_node_id(%struct.inode* %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 8, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store %struct.fuse_fsync_in* %14, %struct.fuse_fsync_in** %47, align 8
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %49 = call i32 @fuse_simple_request(%struct.fuse_conn* %48, %struct.TYPE_8__* @args)
  ret i32 %49
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @memset(%struct.fuse_fsync_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
