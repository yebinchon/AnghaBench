; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_da_args = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@xs_attr_remove = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ATTR_ROOT = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@ATTR_KERNOTIME = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_remove(%struct.xfs_inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.xfs_da_args, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 0
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %8, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %15 = load i32, i32* @xs_attr_remove, align 4
  %16 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %14, i32 %15)
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 0
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  %20 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %125

25:                                               ; preds = %3
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @xfs_attr_args_init(%struct.xfs_da_args* %9, %struct.xfs_inode* %26, i8* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %125

34:                                               ; preds = %25
  %35 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %36 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %38 = call i32 @xfs_qm_dqattach(%struct.xfs_inode* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %125

43:                                               ; preds = %34
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %46 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %49 = call i32 @XFS_ATTRRM_SPACE_RES(%struct.xfs_mount* %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ATTR_ROOT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %60 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %44, i32* %47, i32 %49, i32 0, i32 %58, i64* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %125

65:                                               ; preds = %57
  %66 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %67 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %68 = call i32 @xfs_ilock(%struct.xfs_inode* %66, i32 %67)
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %72 = call i32 @xfs_trans_ijoin(i64 %70, %struct.xfs_inode* %71, i32 0)
  %73 = call i32 @xfs_attr_remove_args(%struct.xfs_da_args* %9)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %112

77:                                               ; preds = %65
  %78 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %79 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @xfs_trans_set_sync(i64 %86)
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ATTR_KERNOTIME, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %97 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %98 = call i32 @xfs_trans_ichgtime(i64 %95, %struct.xfs_inode* %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %103 = load i32, i32* @XFS_ILOG_CORE, align 4
  %104 = call i32 @xfs_trans_log_inode(i64 %101, %struct.xfs_inode* %102, i32 %103)
  %105 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @xfs_trans_commit(i64 %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %109 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %110 = call i32 @xfs_iunlock(%struct.xfs_inode* %108, i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %125

112:                                              ; preds = %76
  %113 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @xfs_trans_cancel(i64 %118)
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %122 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %123 = call i32 @xfs_iunlock(%struct.xfs_inode* %121, i32 %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %99, %63, %41, %32, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_attr_args_init(%struct.xfs_da_args*, %struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_ATTRRM_SPACE_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_remove_args(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_trans_set_sync(i64) #1

declare dso_local i32 @xfs_trans_ichgtime(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_commit(i64) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
