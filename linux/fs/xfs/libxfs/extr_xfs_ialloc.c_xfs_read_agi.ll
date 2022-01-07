; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_read_agi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_read_agi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@xfs_agi_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_AGI_BUF = common dso_local global i32 0, align 4
@XFS_AGI_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_read_agi(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i64 %2, %struct.xfs_buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_buf**, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %9, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @trace_xfs_read_agi(%struct.xfs_mount* %11, i64 %12)
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @NULLAGNUMBER, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %27 = call i32 @XFS_AGI_DADDR(%struct.xfs_mount* %26)
  %28 = call i32 @XFS_AG_DADDR(%struct.xfs_mount* %24, i64 %25, i32 %27)
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %30 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %29, i32 1)
  %31 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  %32 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %19, %struct.xfs_trans* %20, i32 %23, i32 %28, i32 %30, i32 0, %struct.xfs_buf** %31, i32* @xfs_agi_buf_ops)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %4
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %39 = icmp ne %struct.xfs_trans* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %42 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %42, align 8
  %44 = load i32, i32* @XFS_BLFT_AGI_BUF, align 4
  %45 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %41, %struct.xfs_buf* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %47, align 8
  %49 = load i32, i32* @XFS_AGI_REF, align 4
  %50 = call i32 @xfs_buf_set_ref(%struct.xfs_buf* %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @trace_xfs_read_agi(%struct.xfs_mount*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @XFS_AGI_DADDR(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_set_ref(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
