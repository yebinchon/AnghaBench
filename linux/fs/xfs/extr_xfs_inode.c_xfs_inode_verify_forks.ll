; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_inode_verify_forks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_inode_verify_forks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@xfs_default_ifork_ops = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"data fork\00", align 1
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"attr fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inode_verify_forks(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_ifork*, align 8
  %5 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %7 = call i64 @xfs_ifork_verify_data(%struct.xfs_inode* %6, i32* @xfs_default_ifork_ops)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %12 = load i32, i32* @XFS_DATA_FORK, align 4
  %13 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %11, i32 %12)
  store %struct.xfs_ifork* %13, %struct.xfs_ifork** %4, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %15 = load i32, i32* @EFSCORRUPTED, align 4
  %16 = sub nsw i32 0, %15
  %17 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @xfs_inode_verifier_error(%struct.xfs_inode* %14, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %20, i32 %23, i64 %24)
  store i32 0, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %28 = call i64 @xfs_ifork_verify_attr(%struct.xfs_inode* %27, i32* @xfs_default_ifork_ops)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %33 = load i32, i32* @XFS_ATTR_FORK, align 4
  %34 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %32, i32 %33)
  store %struct.xfs_ifork* %34, %struct.xfs_ifork** %4, align 8
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %36 = load i32, i32* @EFSCORRUPTED, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %39 = icmp ne %struct.xfs_ifork* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32* [ %44, %40 ], [ null, %45 ]
  %48 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %49 = icmp ne %struct.xfs_ifork* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @xfs_inode_verifier_error(%struct.xfs_inode* %35, i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %47, i32 %56, i64 %57)
  store i32 0, i32* %2, align 4
  br label %60

59:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %55, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @xfs_ifork_verify_data(%struct.xfs_inode*, i32*) #1

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_inode_verifier_error(%struct.xfs_inode*, i32, i8*, i32*, i32, i64) #1

declare dso_local i64 @xfs_ifork_verify_attr(%struct.xfs_inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
