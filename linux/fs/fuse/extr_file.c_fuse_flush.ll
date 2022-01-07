; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.fuse_flush_in* }
%struct.fuse_flush_in = type { i32, i32 }
%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@FUSE_FLUSH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @fuse_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_file*, align 8
  %9 = alloca %struct.fuse_flush_in, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %7, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.fuse_file*, %struct.fuse_file** %16, align 8
  store %struct.fuse_file* %17, %struct.fuse_file** %8, align 8
  %18 = call i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 @args)
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @is_bad_inode(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %83

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @write_inode_now(%struct.inode* %32, i32 1)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @inode_lock(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @fuse_sync_writes(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i32 @inode_unlock(%struct.inode* %43)
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @filemap_check_errors(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %38
  %54 = call i32 @memset(%struct.fuse_flush_in* %9, i32 0, i32 8)
  %55 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %56 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %9, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %59, i32 %60)
  %62 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @FUSE_FLUSH, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 4), align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @get_node_id(%struct.inode* %64)
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 0), align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 8, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store %struct.fuse_flush_in* %9, %struct.fuse_flush_in** %71, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 4
  %72 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %73 = call i32 @fuse_simple_request(%struct.fuse_conn* %72, %struct.TYPE_6__* @args)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ENOSYS, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %80 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %53
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %51, %36, %30, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_sync_writes(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @filemap_check_errors(i32) #1

declare dso_local i32 @memset(%struct.fuse_flush_in*, i32, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
