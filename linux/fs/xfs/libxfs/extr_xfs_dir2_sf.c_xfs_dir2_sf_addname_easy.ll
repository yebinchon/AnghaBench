; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_easy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_easy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, i64)*, i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32)* @xfs_dir2_sf_addname_easy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_sf_addname_easy(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %10, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %11, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %22 = bitcast %struct.TYPE_24__* %21 to i8*
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %24 = bitcast %struct.TYPE_23__* %23 to i8*
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %33, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %34(%struct.TYPE_23__* %35, i32 %38)
  %40 = load i32, i32* @XFS_DATA_FORK, align 4
  %41 = call i32 @xfs_idata_realloc(%struct.TYPE_22__* %29, i32 %39, i32 %40)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %11, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %49 = bitcast %struct.TYPE_23__* %48 to i8*
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = bitcast i8* %52 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %6, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @xfs_dir2_sf_put_offset(%struct.TYPE_24__* %59, i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, i64)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, i64)** %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 %76(%struct.TYPE_23__* %77, %struct.TYPE_24__* %78, i64 %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %86, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %87(%struct.TYPE_24__* %88, i32 %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XFS_DIR2_MAX_SHORT_INUM, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = call i32 @xfs_dir2_sf_check(%struct.TYPE_25__* %112)
  ret void
}

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_put_offset(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
