; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_read_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_read_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@xfs_sb_buf_ops = common dso_local global i32 0, align 4
@XFS_SSB_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_sb_read_secondary(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i64 %2, %struct.xfs_buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_buf**, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @NULLAGNUMBER, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %30 = call i32 @XFS_SB_BLOCK(%struct.xfs_mount* %29)
  %31 = call i32 @XFS_AG_DADDR(%struct.xfs_mount* %27, i64 %28, i32 %30)
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %33 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %32, i32 1)
  %34 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %22, %struct.xfs_trans* %23, i32 %26, i32 %31, i32 %33, i32 0, %struct.xfs_buf** %10, i32* @xfs_sb_buf_ops)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %18
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %41 = load i32, i32* @XFS_SSB_REF, align 4
  %42 = call i32 @xfs_buf_set_ref(%struct.xfs_buf* %40, i32 %41)
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %44 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  store %struct.xfs_buf* %43, %struct.xfs_buf** %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @XFS_SB_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_buf_set_ref(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
