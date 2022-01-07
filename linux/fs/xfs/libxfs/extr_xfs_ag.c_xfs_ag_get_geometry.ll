; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_get_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_get_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_ag_geometry = type { i32, i8*, i8*, i8*, i64 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agi = type { i32, i32 }
%struct.xfs_agf = type { i32 }
%struct.xfs_perag = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_AG_RESV_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ag_get_geometry(%struct.xfs_mount* %0, i64 %1, %struct.xfs_ag_geometry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_ag_geometry*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_agi*, align 8
  %11 = alloca %struct.xfs_agf*, align 8
  %12 = alloca %struct.xfs_perag*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_ag_geometry* %2, %struct.xfs_ag_geometry** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %99

24:                                               ; preds = %3
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @xfs_ialloc_read_agi(%struct.xfs_mount* %25, i32* null, i64 %26, %struct.xfs_buf** %8)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  br label %99

32:                                               ; preds = %24
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %33, i32* null, i64 %34, i32 0, %struct.xfs_buf** %9)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %95

39:                                               ; preds = %32
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %40, i64 %41)
  store %struct.xfs_perag* %42, %struct.xfs_perag** %12, align 8
  %43 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %44 = call i32 @memset(%struct.xfs_ag_geometry* %43, i32 0, i32 40)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_ag_geometry, %struct.xfs_ag_geometry* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %49 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf* %48)
  store %struct.xfs_agi* %49, %struct.xfs_agi** %10, align 8
  %50 = load %struct.xfs_agi*, %struct.xfs_agi** %10, align 8
  %51 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @be32_to_cpu(i32 %52)
  %54 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %55 = getelementptr inbounds %struct.xfs_ag_geometry, %struct.xfs_ag_geometry* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.xfs_agi*, %struct.xfs_agi** %10, align 8
  %57 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @be32_to_cpu(i32 %58)
  %60 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %61 = getelementptr inbounds %struct.xfs_ag_geometry, %struct.xfs_ag_geometry* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %63 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %62)
  store %struct.xfs_agf* %63, %struct.xfs_agf** %11, align 8
  %64 = load %struct.xfs_agf*, %struct.xfs_agf** %11, align 8
  %65 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_ag_geometry, %struct.xfs_ag_geometry* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %71 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %74 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %72, %75
  %77 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %78 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %76, %79
  %81 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %82 = load i32, i32* @XFS_AG_RESV_NONE, align 4
  %83 = call i32 @xfs_ag_resv_needed(%struct.xfs_perag* %81, i32 %82)
  %84 = sub i32 %80, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %87 = getelementptr inbounds %struct.xfs_ag_geometry, %struct.xfs_ag_geometry* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %89 = load %struct.xfs_ag_geometry*, %struct.xfs_ag_geometry** %7, align 8
  %90 = call i32 @xfs_ag_geom_health(%struct.xfs_perag* %88, %struct.xfs_ag_geometry* %89)
  %91 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %92 = call i32 @xfs_perag_put(%struct.xfs_perag* %91)
  %93 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %94 = call i32 @xfs_buf_relse(%struct.xfs_buf* %93)
  br label %95

95:                                               ; preds = %39, %38
  %96 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %97 = call i32 @xfs_buf_relse(%struct.xfs_buf* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %30, %21
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @xfs_ialloc_read_agi(%struct.xfs_mount*, i32*, i64, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, i32*, i64, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @memset(%struct.xfs_ag_geometry*, i32, i32) #1

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_ag_resv_needed(%struct.xfs_perag*, i32) #1

declare dso_local i32 @xfs_ag_geom_health(%struct.xfs_perag*, %struct.xfs_ag_geometry*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
