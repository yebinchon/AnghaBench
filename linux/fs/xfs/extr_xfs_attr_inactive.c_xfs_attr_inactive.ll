; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_inactive.c_xfs_attr_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_inactive.c_xfs_attr_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i64, %struct.TYPE_3__, %struct.xfs_mount* }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_4__ = type { i32 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_inactive(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %8 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 2
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %5, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %14 = call i32 @XFS_NOT_DQATTACHED(%struct.xfs_mount* %12, %struct.xfs_inode* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @xfs_ilock(%struct.xfs_inode* %19, i32 %20)
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %23 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @xfs_iunlock(%struct.xfs_inode* %27, i32 %28)
  store i32 0, i32* %6, align 4
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %32 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %30, i32* %33, i32 0, i32 0, i32 0, %struct.xfs_trans** %4)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %88

38:                                               ; preds = %26
  %39 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @xfs_ilock(%struct.xfs_inode* %40, i32 %41)
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %44 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %85

47:                                               ; preds = %38
  %48 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %50 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %48, %struct.xfs_inode* %49, i32 0)
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %52 = call i64 @xfs_inode_hasattr(%struct.xfs_inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %56 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %63 = call i32 @xfs_attr3_root_inactive(%struct.xfs_trans** %4, %struct.xfs_inode* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %85

67:                                               ; preds = %61
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %69 = load i32, i32* @XFS_ATTR_FORK, align 4
  %70 = call i32 @xfs_itruncate_extents(%struct.xfs_trans** %4, %struct.xfs_inode* %68, i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %85

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %54, %47
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %77 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %78 = call i32 @xfs_attr_fork_remove(%struct.xfs_inode* %76, %struct.xfs_trans* %77)
  %79 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %80 = call i32 @xfs_trans_commit(%struct.xfs_trans* %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @xfs_iunlock(%struct.xfs_inode* %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %106

85:                                               ; preds = %73, %66, %46
  %86 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %87 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %86)
  br label %88

88:                                               ; preds = %85, %37, %25
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %90 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %95 = load i32, i32* @XFS_ATTR_FORK, align 4
  %96 = call i32 @xfs_idestroy_fork(%struct.xfs_inode* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @xfs_iunlock(%struct.xfs_inode* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %75
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_NOT_DQATTACHED(%struct.xfs_mount*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i64 @xfs_inode_hasattr(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_attr3_root_inactive(%struct.xfs_trans**, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_itruncate_extents(%struct.xfs_trans**, %struct.xfs_inode*, i32, i32) #1

declare dso_local i32 @xfs_attr_fork_remove(%struct.xfs_inode*, %struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_idestroy_fork(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
