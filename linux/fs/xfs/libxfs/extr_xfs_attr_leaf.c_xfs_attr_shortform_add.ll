; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.xfs_ifork*, %struct.TYPE_14__, i32* }
%struct.xfs_ifork = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32*, i32 }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ILOG_ADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr_shortform_add(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.xfs_ifork*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = call i32 @trace_xfs_attr_sf_add(%struct.TYPE_18__* %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.xfs_ifork*, %struct.xfs_ifork** %26, align 8
  store %struct.xfs_ifork* %27, %struct.xfs_ifork** %12, align 8
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %29 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XFS_IFINLINE, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %35 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %5, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 0
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %51, %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = call %struct.TYPE_20__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_20__* %52)
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %43

56:                                               ; preds = %43
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = bitcast %struct.TYPE_20__* %57 to i8*
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = bitcast %struct.TYPE_19__* %59 to i8*
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @XFS_ATTR_SF_ENTSIZE_BYNAME(i64 %67, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @XFS_ATTR_FORK, align 4
  %75 = call i32 @xfs_idata_realloc(%struct.TYPE_17__* %72, i32 %73, i32 %74)
  %76 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %77 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %5, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = bitcast %struct.TYPE_19__* %81 to i8*
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = bitcast i8* %85 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %6, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @XFS_ATTR_NSP_ARGS_TO_ONDISK(i32 %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @memcpy(i32* %105, i32 %108, i64 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i32* %119, i32 %122, i64 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @be16_add_cpu(i32* %134, i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %141 = load i32, i32* @XFS_ILOG_CORE, align 4
  %142 = load i32, i32* @XFS_ILOG_ADATA, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @xfs_trans_log_inode(i32 %139, %struct.TYPE_17__* %140, i32 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @xfs_sbversion_add_attr2(i32* %145, i32 %148)
  ret void
}

declare dso_local i32 @trace_xfs_attr_sf_add(%struct.TYPE_18__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_20__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_20__*) #1

declare dso_local i32 @XFS_ATTR_SF_ENTSIZE_BYNAME(i64, i64) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @XFS_ATTR_NSP_ARGS_TO_ONDISK(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_sbversion_add_attr2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
