; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.xfs_ifork* }
%struct.TYPE_10__ = type { i64 }
%struct.xfs_ifork = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64 }

@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_IFINLINE = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ILOG_ADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr_shortform_create(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.xfs_ifork*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = call i32 @trace_xfs_attr_sf_create(%struct.TYPE_13__* %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.xfs_ifork*, %struct.xfs_ifork** %16, align 8
  store %struct.xfs_ifork* %17, %struct.xfs_ifork** %5, align 8
  %18 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %19 = icmp ne %struct.xfs_ifork* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %1
  %35 = load i32, i32* @XFS_IFEXTENTS, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* @XFS_IFINLINE, align 4
  %46 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %57

50:                                               ; preds = %1
  %51 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @XFS_IFINLINE, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @ASSERT(i32 %55)
  br label %57

57:                                               ; preds = %50, %34
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = load i32, i32* @XFS_ATTR_FORK, align 4
  %60 = call i32 @xfs_idata_realloc(%struct.TYPE_12__* %58, i32 16, i32 %59)
  %61 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %3, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = call i32 @cpu_to_be16(i32 16)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = load i32, i32* @XFS_ILOG_CORE, align 4
  %76 = load i32, i32* @XFS_ILOG_ADATA, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @xfs_trans_log_inode(i32 %73, %struct.TYPE_12__* %74, i32 %77)
  ret void
}

declare dso_local i32 @trace_xfs_attr_sf_create(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
