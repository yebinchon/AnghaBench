; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_alloc_ag_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_alloc_ag_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_owner_info = type { i32 }
%struct.xfs_alloc_arg = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.xfs_owner_info, i32, i32 }

@NULLAGBLOCK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ALLOCTYPE_THIS_AG = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_alloc_ag_block(%struct.xfs_scrub* %0, %struct.xfs_owner_info* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_scrub*, align 8
  %7 = alloca %struct.xfs_owner_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_alloc_arg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %6, align 8
  store %struct.xfs_owner_info* %1, %struct.xfs_owner_info** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.xfs_alloc_arg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %68 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %4, %4
  %16 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %17 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xfs_alloc_get_freelist(i32 %18, i32 %22, i32* %11, i32 1)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %120

28:                                               ; preds = %15
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @NULLAGBLOCK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %120

35:                                               ; preds = %28
  %36 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %37 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @xfs_extent_busy_reuse(i32 %38, i32 %42, i32 %43, i32 1, i32 0)
  %45 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %49 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @XFS_AGB_TO_FSB(i32 %47, i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %67

58:                                               ; preds = %35
  %59 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %60 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %63 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xfs_ag_resv_rmapbt_alloc(i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %58, %35
  store i32 0, i32* %5, align 4
  br label %120

68:                                               ; preds = %4
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %71 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 9
  store i32 %72, i32* %73, align 8
  %74 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %75 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 7
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 8
  %79 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %7, align 8
  %80 = bitcast %struct.xfs_owner_info* %78 to i8*
  %81 = bitcast %struct.xfs_owner_info* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %85 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @XFS_AGB_TO_FSB(i32 %83, i32 %87, i32 0)
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 2
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 3
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* @XFS_ALLOCTYPE_THIS_AG, align 4
  %95 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 6
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  %98 = call i32 @xfs_alloc_vextent(%struct.xfs_alloc_arg* %10)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %69
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %120

103:                                              ; preds = %69
  %104 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NULLFSBLOCK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOSPC, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %120

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %10, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %8, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %111, %108, %101, %67, %32, %26
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xfs_alloc_get_freelist(i32, i32, i32*, i32) #2

declare dso_local i32 @xfs_extent_busy_reuse(i32, i32, i32, i32, i32) #2

declare dso_local i8* @XFS_AGB_TO_FSB(i32, i32, i32) #2

declare dso_local i32 @xfs_ag_resv_rmapbt_alloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xfs_alloc_vextent(%struct.xfs_alloc_arg*) #2

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
