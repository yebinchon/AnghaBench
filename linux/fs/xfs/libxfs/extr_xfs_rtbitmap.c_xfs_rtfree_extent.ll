; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfree_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfree_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_TRANS_SB_FREXTENTS = common dso_local global i32 0, align 4
@XFS_DIFLAG_NEWRTBM = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtfree_extent(%struct.TYPE_19__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %27 = call i32 @xfs_isilocked(%struct.TYPE_21__* %25, i32 %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @xfs_rtcheck_alloc_range(%struct.TYPE_20__* %29, %struct.TYPE_19__* %30, i32 %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %99

38:                                               ; preds = %3
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @xfs_rtfree_range(%struct.TYPE_20__* %39, %struct.TYPE_19__* %40, i32 %41, i64 %42, i32** %11, i32* %10)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %99

48:                                               ; preds = %38
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = load i32, i32* @XFS_TRANS_SB_FREXTENTS, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @xfs_trans_mod_sb(%struct.TYPE_19__* %49, i32 %50, i64 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %55, %59
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %48
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XFS_DIFLAG_NEWRTBM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @XFS_DIFLAG_NEWRTBM, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %77
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %76, %66
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = call %struct.TYPE_16__* @VFS_I(%struct.TYPE_21__* %88)
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = bitcast i32* %90 to i64*
  store i64 0, i64* %91, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = load i32, i32* @XFS_ILOG_CORE, align 4
  %97 = call i32 @xfs_trans_log_inode(%struct.TYPE_19__* %92, %struct.TYPE_21__* %95, i32 %96)
  br label %98

98:                                               ; preds = %85, %48
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %46, %36
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @xfs_rtcheck_alloc_range(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @xfs_rtfree_range(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i64, i32**, i32*) #1

declare dso_local i32 @xfs_trans_mod_sb(%struct.TYPE_19__*, i32, i64) #1

declare dso_local %struct.TYPE_16__* @VFS_I(%struct.TYPE_21__*) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.TYPE_19__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
