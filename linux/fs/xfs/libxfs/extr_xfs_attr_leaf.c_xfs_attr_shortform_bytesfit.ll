; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_bytesfit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_bytesfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@XFS_DINODE_FMT_DEV = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@MINDBTPTRS = common dso_local global i32 0, align 4
@MINABTPTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_bytesfit(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @XFS_LITINO(%struct.TYPE_12__* %14, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XFS_DINODE_FMT_DEV, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = call i32 @roundup(i32 4, i32 8)
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %3, align 4
  br label %142

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i32 @XFS_IFORK_ASIZE(%struct.TYPE_13__* %42)
  %44 = icmp sle i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %142

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %142

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %111 [
    i32 128, label %67
    i32 129, label %85
  ]

67:                                               ; preds = %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = call i32 @xfs_default_attroffset(%struct.TYPE_13__* %78)
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @MINDBTPTRS, align 4
  %83 = call i32 @XFS_BMDR_SPACE_CALC(i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %73, %67
  br label %111

85:                                               ; preds = %58
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %142

99:                                               ; preds = %91
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %3, align 4
  br label %142

104:                                              ; preds = %85
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @XFS_BMAP_BROOT_SPACE(%struct.TYPE_12__* %105, i32 %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %58, %104, %84
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MINDBTPTRS, align 4
  %114 = call i32 @XFS_BMDR_SPACE_CALC(i32 %113)
  %115 = call i32 @max(i32 %112, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @roundup(i32 %116, i32 8)
  %118 = ashr i32 %117, 3
  store i32 %118, i32* %7, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @XFS_LITINO(%struct.TYPE_12__* %119, i32 %123)
  %125 = load i32, i32* @MINABTPTRS, align 4
  %126 = call i32 @XFS_BMDR_SPACE_CALC(i32 %125)
  %127 = sub nsw i32 %124, %126
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 3
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %111
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %142

135:                                              ; preds = %111
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %139, %133, %99, %98, %57, %45, %38
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @XFS_LITINO(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @XFS_IFORK_ASIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_default_attroffset(%struct.TYPE_13__*) #1

declare dso_local i32 @XFS_BMDR_SPACE_CALC(i32) #1

declare dso_local i32 @XFS_BMAP_BROOT_SPACE(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
