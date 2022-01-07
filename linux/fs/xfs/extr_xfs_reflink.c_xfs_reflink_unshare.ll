; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_unshare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.TYPE_4__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_unshare(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %8, align 8
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %17 = call i32 @xfs_is_reflink_inode(%struct.xfs_inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @trace_xfs_reflink_unshare(%struct.xfs_inode* %21, i64 %22, i64 %23)
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %26 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %25)
  %27 = call i32 @inode_dio_wait(%struct.TYPE_4__* %26)
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %29 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %30 = call i32 @xfs_ilock(%struct.xfs_inode* %28, i32 %29)
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @XFS_B_TO_FSBT(%struct.xfs_mount* %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %34)
  %36 = call i64 @i_size_read(%struct.TYPE_4__* %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @XFS_B_TO_FSB(%struct.xfs_mount* %37, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @xfs_reflink_dirty_extents(%struct.xfs_inode* %42, i32 %43, i32 %44, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %20
  br label %69

50:                                               ; preds = %20
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %52 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %53 = call i32 @xfs_iunlock(%struct.xfs_inode* %51, i32 %52)
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %55 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @filemap_write_and_wait(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %64 = call i32 @xfs_reflink_try_clear_inode_flag(%struct.xfs_inode* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %79

69:                                               ; preds = %49
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %71 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %72 = call i32 @xfs_iunlock(%struct.xfs_inode* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %67, %61
  %74 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @_RET_IP_, align 4
  %77 = call i32 @trace_xfs_reflink_unshare_error(%struct.xfs_inode* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %68, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32 @trace_xfs_reflink_unshare(%struct.xfs_inode*, i64, i64) #1

declare dso_local i32 @inode_dio_wait(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_B_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i64 @i_size_read(%struct.TYPE_4__*) #1

declare dso_local i32 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_reflink_dirty_extents(%struct.xfs_inode*, i32, i32, i64) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @xfs_reflink_try_clear_inode_flag(%struct.xfs_inode*) #1

declare dso_local i32 @trace_xfs_reflink_unshare_error(%struct.xfs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
