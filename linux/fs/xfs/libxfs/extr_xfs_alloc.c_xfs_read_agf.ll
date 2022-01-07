; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_read_agf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_read_agf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@xfs_agf_buf_ops = common dso_local global i32 0, align 4
@XFS_AGF_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_read_agf(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i64 %2, i32 %3, %struct.xfs_buf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf**, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %11, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @trace_xfs_read_agf(%struct.xfs_mount* %13, i64 %14)
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @NULLAGNUMBER, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %29 = call i32 @XFS_AGF_DADDR(%struct.xfs_mount* %28)
  %30 = call i32 @XFS_AG_DADDR(%struct.xfs_mount* %26, i64 %27, i32 %29)
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %32 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %31, i32 1)
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %35 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %21, %struct.xfs_trans* %22, i32 %25, i32 %30, i32 %32, i32 %33, %struct.xfs_buf** %34, i32* @xfs_agf_buf_ops)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %5
  %41 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %41, align 8
  %43 = icmp ne %struct.xfs_buf* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %58

45:                                               ; preds = %40
  %46 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %46, align 8
  %48 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %54, align 8
  %56 = load i32, i32* @XFS_AGF_REF, align 4
  %57 = call i32 @xfs_buf_set_ref(%struct.xfs_buf* %55, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %45, %44, %38
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @trace_xfs_read_agf(%struct.xfs_mount*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @XFS_AGF_DADDR(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_buf_set_ref(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
