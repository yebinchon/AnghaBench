; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_file.c_xfs_update_prealloc_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_file.c_xfs_update_prealloc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_PREALLOC_INVISIBLE = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_PREALLOC_SET = common dso_local global i32 0, align 4
@XFS_DIFLAG_PREALLOC = common dso_local global i32 0, align 4
@XFS_PREALLOC_CLEAR = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_PREALLOC_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_update_prealloc_flags(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_6__* @M_RES(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @xfs_trans_alloc(i32 %10, i32* %15, i32 0, i32 0, i32 0, %struct.xfs_trans** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %23 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %24 = call i32 @xfs_ilock(%struct.xfs_inode* %22, i32 %23)
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %27 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %28 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %25, %struct.xfs_inode* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @XFS_PREALLOC_INVISIBLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @S_ISUID, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %37 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %42 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @S_IXGRP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load i32, i32* @S_ISGID, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %52 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %33
  %57 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %59 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %60 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %57, %struct.xfs_inode* %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %21
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @XFS_PREALLOC_SET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @XFS_DIFLAG_PREALLOC, align 4
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @XFS_PREALLOC_CLEAR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* @XFS_DIFLAG_PREALLOC, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %84 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %90 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %91 = load i32, i32* @XFS_ILOG_CORE, align 4
  %92 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %89, %struct.xfs_inode* %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @XFS_PREALLOC_SYNC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %99 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %98)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %102 = call i32 @xfs_trans_commit(%struct.xfs_trans* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @xfs_trans_alloc(i32, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_6__* @M_RES(i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local %struct.TYPE_5__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_ichgtime(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
