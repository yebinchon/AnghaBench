; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_shortform_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_shortform_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_ifork = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_SYMLINK_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_symlink_shortform_verify(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xfs_ifork*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %17 = load i32, i32* @XFS_DATA_FORK, align 4
  %18 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %16, i32 %17)
  store %struct.xfs_ifork* %18, %struct.xfs_ifork** %6, align 8
  %19 = load %struct.xfs_ifork*, %struct.xfs_ifork** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  %24 = load %struct.xfs_ifork*, %struct.xfs_ifork** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = load i32*, i32** @__this_address, align 8
  store i32* %34, i32** %2, align 8
  br label %60

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @XFS_SYMLINK_MAXLEN, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %35
  %43 = load i32*, i32** @__this_address, align 8
  store i32* %43, i32** %2, align 8
  br label %60

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i64 @memchr(i8* %45, i32 0, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32*, i32** @__this_address, align 8
  store i32* %51, i32** %2, align 8
  br label %60

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** @__this_address, align 8
  store i32* %58, i32** %2, align 8
  br label %60

59:                                               ; preds = %52
  store i32* null, i32** %2, align 8
  br label %60

60:                                               ; preds = %59, %57, %50, %42, %33
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i64 @memchr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
