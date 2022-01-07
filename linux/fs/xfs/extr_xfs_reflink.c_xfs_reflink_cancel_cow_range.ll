; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_cancel_cow_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_cancel_cow_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NULLFILEOFF = common dso_local global i64 0, align 8
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_cancel_cow_range(%struct.xfs_inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_trans*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @trace_xfs_reflink_cancel_cow_range(%struct.xfs_inode* %14, i64 %15, i64 %16)
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @XFS_B_TO_FSBT(i32 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NULLFILEOFF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @NULLFILEOFF, align 8
  store i64 %31, i64* %12, align 8
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @XFS_B_TO_FSB(i32 %35, i64 %38)
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %32, %30
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %42 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_2__* @M_RES(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @xfs_trans_alloc(i32 %43, i32* %48, i32 0, i32 0, i32 0, %struct.xfs_trans** %10)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %81

53:                                               ; preds = %40
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %55 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %56 = call i32 @xfs_ilock(%struct.xfs_inode* %54, i32 %55)
  %57 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %59 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %57, %struct.xfs_inode* %58, i32 0)
  %60 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @xfs_reflink_cancel_cow_blocks(%struct.xfs_inode* %60, %struct.xfs_trans** %10, i64 %61, i64 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %75

68:                                               ; preds = %53
  %69 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %70 = call i32 @xfs_trans_commit(%struct.xfs_trans* %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %72 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %73 = call i32 @xfs_iunlock(%struct.xfs_inode* %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %87

75:                                               ; preds = %67
  %76 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %77 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %76)
  %78 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %79 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %80 = call i32 @xfs_iunlock(%struct.xfs_inode* %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %52
  %82 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @_RET_IP_, align 4
  %85 = call i32 @trace_xfs_reflink_cancel_cow_range_error(%struct.xfs_inode* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %68
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @trace_xfs_reflink_cancel_cow_range(%struct.xfs_inode*, i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_B_TO_FSBT(i32, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(i32, i64) #1

declare dso_local i32 @xfs_trans_alloc(i32, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_reflink_cancel_cow_blocks(%struct.xfs_inode*, %struct.xfs_trans**, i64, i64, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

declare dso_local i32 @trace_xfs_reflink_cancel_cow_range_error(%struct.xfs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
