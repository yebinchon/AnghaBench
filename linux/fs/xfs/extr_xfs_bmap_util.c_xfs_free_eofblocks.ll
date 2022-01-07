; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_free_eofblocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_free_eofblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i64, %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_bmbt_irec = type { i64 }
%struct.TYPE_4__ = type { i32 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_BMAPI_NODISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_free_eofblocks(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_bmbt_irec, align 8
  %11 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %12, i32 0, i32 1
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  store %struct.xfs_mount* %14, %struct.xfs_mount** %11, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %17 = call i64 @XFS_ISIZE(%struct.xfs_inode* %16)
  %18 = trunc i64 %17 to i32
  %19 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %15, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %20, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

31:                                               ; preds = %1
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %36 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %37 = call i32 @xfs_ilock(%struct.xfs_inode* %35, i32 %36)
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @xfs_bmapi_read(%struct.xfs_inode* %38, i64 %39, i64 %40, %struct.xfs_bmbt_irec* %10, i32* %9, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %43 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %44 = call i32 @xfs_iunlock(%struct.xfs_inode* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %114, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %114

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HOLESTARTBLOCK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %55, %50
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %62 = call i32 @xfs_qm_dqattach(%struct.xfs_inode* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %116

67:                                               ; preds = %60
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %69 = call i32 @VFS_I(%struct.xfs_inode* %68)
  %70 = call i32 @inode_dio_wait(i32 %69)
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %73 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %71, i32* %74, i32 0, i32 0, i32 0, %struct.xfs_trans** %4)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %80 = call i32 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %79)
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %116

83:                                               ; preds = %67
  %84 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %85 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %86 = call i32 @xfs_ilock(%struct.xfs_inode* %84, i32 %85)
  %87 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %89 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %87, %struct.xfs_inode* %88, i32 0)
  %90 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %91 = load i32, i32* @XFS_DATA_FORK, align 4
  %92 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %93 = call i64 @XFS_ISIZE(%struct.xfs_inode* %92)
  %94 = load i32, i32* @XFS_BMAPI_NODISCARD, align 4
  %95 = call i32 @xfs_itruncate_extents_flags(%struct.xfs_trans** %4, %struct.xfs_inode* %90, i32 %91, i64 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %100 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %99)
  br label %110

101:                                              ; preds = %83
  %102 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %103 = call i32 @xfs_trans_commit(%struct.xfs_trans* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %108 = call i32 @xfs_inode_clear_eofblocks_tag(%struct.xfs_inode* %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %98
  %111 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %112 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %113 = call i32 @xfs_iunlock(%struct.xfs_inode* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %55, %47, %31
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %78, %65, %30
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmapi_read(%struct.xfs_inode*, i64, i64, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.xfs_inode*) #1

declare dso_local i32 @inode_dio_wait(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_itruncate_extents_flags(%struct.xfs_trans**, %struct.xfs_inode*, i32, i64, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_inode_clear_eofblocks_tag(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
