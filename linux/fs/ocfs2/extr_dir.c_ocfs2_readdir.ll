; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @trace_ocfs2_readdir(i64 %13)
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ocfs2_inode_lock_atime(%struct.inode* %15, i32 %19, i32* %7, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @ocfs2_inode_unlock(%struct.inode* %27, i32 1)
  store i32 0, i32* %7, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @ocfs2_inode_lock(%struct.inode* %29, i32* null, i32 0)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %23, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %58

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %48 = call i32 @ocfs2_dir_foreach_blk(%struct.inode* %44, i32* %46, %struct.dir_context* %47, i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ocfs2_inode_unlock(%struct.inode* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %43
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @trace_ocfs2_readdir(i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_atime(%struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_dir_foreach_blk(%struct.inode*, i32*, %struct.dir_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
