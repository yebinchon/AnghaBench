; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_rlimit.c_xfs_log_get_max_trans_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_rlimit.c_xfs_log_get_max_trans_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans_res = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.xfs_trans_res }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_log_get_max_trans_res(%struct.xfs_mount* %0, %struct.xfs_trans_res* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_trans_res*, align 8
  %5 = alloca %struct.xfs_trans_res*, align 8
  %6 = alloca %struct.xfs_trans_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_trans_res* %1, %struct.xfs_trans_res** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = call i32 @xfs_log_calc_max_attrsetm_res(%struct.xfs_mount* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %13 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %12)
  %14 = bitcast %struct.TYPE_2__* %13 to %struct.xfs_trans_res*
  store %struct.xfs_trans_res* %14, %struct.xfs_trans_res** %5, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %16 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 1
  %18 = bitcast %struct.TYPE_2__* %17 to %struct.xfs_trans_res*
  store %struct.xfs_trans_res* %18, %struct.xfs_trans_res** %6, align 8
  br label %19

19:                                               ; preds = %52, %2
  %20 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %21 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %6, align 8
  %22 = icmp ult %struct.xfs_trans_res* %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %35, %28 ], [ %39, %36 ]
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %4, align 8
  %48 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %49 = bitcast %struct.xfs_trans_res* %47 to i8*
  %50 = bitcast %struct.xfs_trans_res* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %53, i32 1
  store %struct.xfs_trans_res* %54, %struct.xfs_trans_res** %5, align 8
  br label %19

55:                                               ; preds = %19
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %4, align 8
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %62 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = bitcast %struct.xfs_trans_res* %60 to i8*
  %65 = bitcast %struct.xfs_trans_res* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 8, i1 false)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %4, align 8
  %68 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @xfs_log_calc_max_attrsetm_res(%struct.xfs_mount*) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
