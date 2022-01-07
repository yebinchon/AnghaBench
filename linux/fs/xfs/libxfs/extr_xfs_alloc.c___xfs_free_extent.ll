; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c___xfs_free_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c___xfs_free_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_owner_info = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.TYPE_4__ = type { i32 }

@XFS_AG_RESV_AGFL = common dso_local global i32 0, align 4
@XFS_ERRTAG_FREE_EXTENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@XFS_EXTENT_BUSY_SKIP_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfs_free_extent(%struct.xfs_trans* %0, i32 %1, i64 %2, %struct.xfs_owner_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_owner_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_mount*, align 8
  %15 = alloca %struct.xfs_buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.xfs_owner_info* %3, %struct.xfs_owner_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %21 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %20, i32 0, i32 0
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %21, align 8
  store %struct.xfs_mount* %22, %struct.xfs_mount** %14, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %26, i32 %27)
  store i64 %28, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @XFS_AG_RESV_AGFL, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %39 = load i32, i32* @XFS_ERRTAG_FREE_EXTENT, align 4
  %40 = call i64 @XFS_TEST_ERROR(i32 0, %struct.xfs_mount* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %107

45:                                               ; preds = %6
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @xfs_free_extent_fix_freelist(%struct.xfs_trans* %46, i32 %47, %struct.xfs_buf** %15)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %7, align 4
  br label %107

53:                                               ; preds = %45
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %57 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %55, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @err, align 4
  %63 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %54, i32 %61, i32 %62)
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %69 = call %struct.TYPE_4__* @XFS_BUF_TO_AGF(%struct.xfs_buf* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be32_to_cpu(i32 %71)
  %73 = icmp sle i64 %67, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @err, align 4
  %76 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %64, i32 %74, i32 %75)
  %77 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %78 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @xfs_free_ag_extent(%struct.xfs_trans* %77, %struct.xfs_buf* %78, i32 %79, i64 %80, i64 %81, %struct.xfs_owner_info* %82, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %53
  br label %102

88:                                               ; preds = %53
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @XFS_EXTENT_BUSY_SKIP_DISCARD, align 4
  %93 = load i32, i32* %19, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @xfs_extent_busy_insert(%struct.xfs_trans* %96, i32 %97, i64 %98, i64 %99, i32 %100)
  store i32 0, i32* %7, align 4
  br label %107

102:                                              ; preds = %87
  %103 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %104 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %105 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %103, %struct.xfs_buf* %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %102, %95, %51, %42
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_TEST_ERROR(i32, %struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_free_extent_fix_freelist(%struct.xfs_trans*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_free_ag_extent(%struct.xfs_trans*, %struct.xfs_buf*, i32, i64, i64, %struct.xfs_owner_info*, i32) #1

declare dso_local i32 @xfs_extent_busy_insert(%struct.xfs_trans*, i32, i64, i64, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
