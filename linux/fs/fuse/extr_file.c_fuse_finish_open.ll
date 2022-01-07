; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_finish_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_finish_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.fuse_conn = type { i64, i32, i64 }
%struct.fuse_inode = type { i32, i32 }

@FOPEN_KEEP_CACHE = common dso_local global i32 0, align 4
@FOPEN_STREAM = common dso_local global i32 0, align 4
@FOPEN_NONSEEKABLE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_finish_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_file*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 2
  %10 = load %struct.fuse_file*, %struct.fuse_file** %9, align 8
  store %struct.fuse_file* %10, %struct.fuse_file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %6, align 8
  %13 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %14 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FOPEN_KEEP_CACHE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @invalidate_inode_pages2(i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %26 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FOPEN_STREAM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = call i32 @stream_open(%struct.inode* %32, %struct.file* %33)
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %37 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FOPEN_NONSEEKABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = call i32 @nonseekable_open(%struct.inode* %43, %struct.file* %44)
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @O_TRUNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %60)
  store %struct.fuse_inode* %61, %struct.fuse_inode** %7, align 8
  %62 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %63 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %66 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %65, i32 0, i32 1
  %67 = call i32 @atomic64_inc_return(i32* %66)
  %68 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %69 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call i32 @i_size_write(%struct.inode* %70, i32 0)
  %72 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %73 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i32 @fuse_invalidate_attr(%struct.inode* %75)
  %77 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %78 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %59
  %82 = load %struct.file*, %struct.file** %4, align 8
  %83 = call i32 @file_update_time(%struct.file* %82)
  br label %84

84:                                               ; preds = %81, %59
  br label %85

85:                                               ; preds = %84, %52, %47
  %86 = load %struct.file*, %struct.file** %4, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FMODE_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %94 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.file*, %struct.file** %4, align 8
  %99 = call i32 @fuse_link_write_file(%struct.file* %98)
  br label %100

100:                                              ; preds = %97, %92, %85
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @fuse_link_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
