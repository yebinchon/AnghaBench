; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_initialize_perag_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_initialize_perag_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"AGF corruption. Please run xfs_repair.\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_SICK_FS_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_initialize_perag_data(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 1
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %69, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @xfs_alloc_pagf_init(%struct.xfs_mount* %23, i32* null, i64 %24, i32 0)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %3, align 4
  br label %115

30:                                               ; preds = %22
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @xfs_ialloc_pagi_init(%struct.xfs_mount* %31, i32* null, i64 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %3, align 4
  br label %115

38:                                               ; preds = %30
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call %struct.TYPE_6__* @xfs_perag_get(%struct.xfs_mount* %39, i64 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %13, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = call i32 @xfs_perag_put(%struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %38
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %18

72:                                               ; preds = %18
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %72
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %72
  %88 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %89 = call i32 @xfs_alert(%struct.xfs_mount* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EFSCORRUPTED, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %110

92:                                               ; preds = %83
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %106 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %109 = call i32 @xfs_reinit_percpu_counters(%struct.xfs_mount* %108)
  br label %110

110:                                              ; preds = %92, %87
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %112 = load i32, i32* @XFS_SICK_FS_COUNTERS, align 4
  %113 = call i32 @xfs_fs_mark_healthy(%struct.xfs_mount* %111, i32 %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %36, %28
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @xfs_alloc_pagf_init(%struct.xfs_mount*, i32*, i64, i32) #1

declare dso_local i32 @xfs_ialloc_pagi_init(%struct.xfs_mount*, i32*, i64) #1

declare dso_local %struct.TYPE_6__* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_perag_put(%struct.TYPE_6__*) #1

declare dso_local i32 @xfs_alert(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_reinit_percpu_counters(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_fs_mark_healthy(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
