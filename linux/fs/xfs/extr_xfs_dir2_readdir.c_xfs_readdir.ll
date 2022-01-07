; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dir2_readdir.c_xfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dir2_readdir.c_xfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.xfs_da_args = type { %struct.xfs_trans*, i32, %struct.xfs_inode*, i32* }
%struct.TYPE_7__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@xs_dir_getdents = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_readdir(%struct.xfs_trans* %0, %struct.xfs_inode* %1, %struct.dir_context* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.dir_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xfs_da_args, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %7, align 8
  store %struct.dir_context* %2, %struct.dir_context** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = bitcast %struct.xfs_da_args* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %15 = call i32 @trace_xfs_readdir(%struct.xfs_inode* %14)
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_6__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %26 = call %struct.TYPE_7__* @VFS_I(%struct.xfs_inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISDIR(i32 %28)
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* @xs_dir_getdents, align 4
  %35 = call i32 @XFS_STATS_INC(%struct.TYPE_6__* %33, i32 %34)
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %10, i32 0, i32 2
  store %struct.xfs_inode* %36, %struct.xfs_inode** %37, align 8
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %10, i32 0, i32 0
  store %struct.xfs_trans* %44, %struct.xfs_trans** %45, align 8
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %24
  %53 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %54 = call i32 @xfs_dir2_sf_getdents(%struct.xfs_da_args* %10, %struct.dir_context* %53)
  store i32 %54, i32* %11, align 4
  br label %71

55:                                               ; preds = %24
  %56 = call i32 @xfs_dir2_isblock(%struct.xfs_da_args* %10, i32* %12)
  store i32 %56, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %64 = call i32 @xfs_dir2_block_getdents(%struct.xfs_da_args* %10, %struct.dir_context* %63)
  store i32 %64, i32* %11, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @xfs_dir2_leaf_getdents(%struct.xfs_da_args* %10, %struct.dir_context* %66, i64 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trace_xfs_readdir(%struct.xfs_inode*) #2

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_6__*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.xfs_inode*) #2

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @xfs_dir2_sf_getdents(%struct.xfs_da_args*, %struct.dir_context*) #2

declare dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args*, i32*) #2

declare dso_local i32 @xfs_dir2_block_getdents(%struct.xfs_da_args*, %struct.dir_context*) #2

declare dso_local i32 @xfs_dir2_leaf_getdents(%struct.xfs_da_args*, %struct.dir_context*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
