; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_update_dest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_update_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_3__, %struct.xfs_mount* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_4__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DIFLAG2_COWEXTSIZE = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_update_dest(%struct.xfs_inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %18 = call i32 @VFS_I(%struct.xfs_inode* %17)
  %19 = call i64 @i_size_read(i32 %18)
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %91

25:                                               ; preds = %21, %4
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %28 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %26, i32* %29, i32 0, i32 0, i32 0, %struct.xfs_trans** %11)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %85

34:                                               ; preds = %25
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %36 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %37 = call i32 @xfs_ilock(%struct.xfs_inode* %35, i32 %36)
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %40 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %41 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %38, %struct.xfs_inode* %39, i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %44 = call i32 @VFS_I(%struct.xfs_inode* %43)
  %45 = call i64 @i_size_read(i32 %44)
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @trace_xfs_reflink_update_inode_size(%struct.xfs_inode* %48, i64 %49)
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %52 = call i32 @VFS_I(%struct.xfs_inode* %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @i_size_write(i32 %52, i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %34
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %65 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* @XFS_DIFLAG2_COWEXTSIZE, align 4
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %69 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %62, %59
  %74 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %76 = load i32, i32* @XFS_ILOG_CORE, align 4
  %77 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %74, %struct.xfs_inode* %75, i32 %76)
  %78 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %79 = call i32 @xfs_trans_commit(%struct.xfs_trans* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %91

85:                                               ; preds = %82, %33
  %86 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @_RET_IP_, align 4
  %89 = call i32 @trace_xfs_reflink_update_inode_size_error(%struct.xfs_inode* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %83, %24
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @trace_xfs_reflink_update_inode_size(%struct.xfs_inode*, i64) #1

declare dso_local i32 @i_size_write(i32, i64) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @trace_xfs_reflink_update_inode_size_error(%struct.xfs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
