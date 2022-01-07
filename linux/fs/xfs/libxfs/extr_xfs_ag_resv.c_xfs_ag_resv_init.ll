; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c_xfs_ag_resv_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c_xfs_ag_resv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i64, i64, i32, %struct.xfs_mount*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.xfs_mount = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_trans = type { i32 }

@XFS_AG_RESV_METADATA = common dso_local global i32 0, align 4
@XFS_AG_RESV_RMAPBT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ag_resv_init(%struct.xfs_perag* %0, %struct.xfs_trans* %1) #0 {
  %3 = alloca %struct.xfs_perag*, align 8
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_perag* %0, %struct.xfs_perag** %3, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %4, align 8
  %10 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %10, i32 0, i32 3
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %5, align 8
  %13 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @xfs_refcountbt_calc_reserves(%struct.xfs_mount* %22, %struct.xfs_trans* %23, i32 %24, i64* %7, i64* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %91

29:                                               ; preds = %21
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %31 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @xfs_finobt_calc_reserves(%struct.xfs_mount* %30, %struct.xfs_trans* %31, i32 %32, i64* %7, i64* %8)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %91

37:                                               ; preds = %29
  %38 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %39 = load i32, i32* @XFS_AG_RESV_METADATA, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @__xfs_ag_resv_init(%struct.xfs_perag* %38, i32 %39, i64 %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %49 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @xfs_refcountbt_calc_reserves(%struct.xfs_mount* %48, %struct.xfs_trans* %49, i32 %50, i64* %7, i64* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %91

55:                                               ; preds = %45
  %56 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %57 = load i32, i32* @XFS_AG_RESV_METADATA, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @__xfs_ag_resv_init(%struct.xfs_perag* %56, i32 %57, i64 %58, i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %91

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %74 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @xfs_rmapbt_calc_reserves(%struct.xfs_mount* %73, %struct.xfs_trans* %74, i32 %75, i64* %7, i64* %8)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %91

80:                                               ; preds = %72
  %81 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %82 = load i32, i32* @XFS_AG_RESV_RMAPBT, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @__xfs_ag_resv_init(%struct.xfs_perag* %81, i32 %82, i64 %83, i64 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %66
  br label %91

91:                                               ; preds = %90, %88, %79, %63, %54, %36, %28
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @xfs_refcountbt_calc_reserves(%struct.xfs_mount*, %struct.xfs_trans*, i32, i64*, i64*) #1

declare dso_local i32 @xfs_finobt_calc_reserves(%struct.xfs_mount*, %struct.xfs_trans*, i32, i64*, i64*) #1

declare dso_local i32 @__xfs_ag_resv_init(%struct.xfs_perag*, i32, i64, i64) #1

declare dso_local i32 @xfs_rmapbt_calc_reserves(%struct.xfs_mount*, %struct.xfs_trans*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
