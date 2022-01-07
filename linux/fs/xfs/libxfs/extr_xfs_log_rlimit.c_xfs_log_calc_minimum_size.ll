; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_rlimit.c_xfs_log_calc_minimum_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_rlimit.c_xfs_log_calc_minimum_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_trans_res = type { i32, i32, i32 }

@BBSIZE = common dso_local global i32 0, align 4
@XFS_MIN_LOG_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_log_calc_minimum_size(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.xfs_trans_res, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %7 = bitcast %struct.xfs_trans_res* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %9 = call i32 @xfs_log_get_max_trans_res(%struct.xfs_mount* %8, %struct.xfs_trans_res* %3)
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xfs_log_calc_unit_res(%struct.xfs_mount* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = call i64 @xfs_sb_version_haslogv2(%struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %29 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BTOBB(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %27, %22
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @BTOBB(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @roundup_64(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @BTOBB(i32 %51)
  %53 = load i32, i32* @BBSIZE, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %42
  %57 = load i32, i32* @XFS_MIN_LOG_FACTOR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @XFS_BB_TO_FSB(%struct.xfs_mount* %60, i32 %61)
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xfs_log_get_max_trans_res(%struct.xfs_mount*, %struct.xfs_trans_res*) #2

declare dso_local i32 @xfs_log_calc_unit_res(%struct.xfs_mount*, i32) #2

declare dso_local i64 @xfs_sb_version_haslogv2(%struct.TYPE_2__*) #2

declare dso_local i32 @BTOBB(i32) #2

declare dso_local i32 @roundup_64(i32, i32) #2

declare dso_local i32 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
