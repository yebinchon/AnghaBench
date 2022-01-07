; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfree_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtfree_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtfree_range(%struct.TYPE_10__* %0, i32* %1, i64 %2, i64 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = add nsw i64 %18, %19
  %21 = sub nsw i64 %20, 1
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @xfs_rtmodify_range(%struct.TYPE_10__* %22, i32* %23, i64 %24, i64 %25, i32 1)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %7, align 4
  br label %114

31:                                               ; preds = %6
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @xfs_rtfind_back(%struct.TYPE_10__* %32, i32* %33, i64 %34, i32 0, i64* %17)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %7, align 4
  br label %114

40:                                               ; preds = %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @xfs_rtfind_forw(%struct.TYPE_10__* %41, i32* %42, i64 %43, i64 %48, i64* %16)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %114

54:                                               ; preds = %40
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %17, align 8
  %63 = sub nsw i64 %61, %62
  %64 = call i32 @XFS_RTBLOCKLOG(i64 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @XFS_BITTOBLOCK(%struct.TYPE_10__* %65, i64 %66)
  %68 = load i32**, i32*** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @xfs_rtmodify_summary(%struct.TYPE_10__* %59, i32* %60, i32 %64, i32 %67, i32 -1, i32** %68, i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %7, align 4
  br label %114

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %14, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @XFS_RTBLOCKLOG(i64 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @XFS_BITTOBLOCK(%struct.TYPE_10__* %87, i64 %89)
  %91 = load i32**, i32*** %12, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @xfs_rtmodify_summary(%struct.TYPE_10__* %81, i32* %82, i32 %86, i32 %90, i32 -1, i32** %91, i32* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %7, align 4
  br label %114

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %102, 1
  %104 = load i64, i64* %17, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i32 @XFS_RTBLOCKLOG(i64 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @XFS_BITTOBLOCK(%struct.TYPE_10__* %107, i64 %108)
  %110 = load i32**, i32*** %12, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @xfs_rtmodify_summary(%struct.TYPE_10__* %100, i32* %101, i32 %106, i32 %109, i32 1, i32** %110, i32* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %99, %96, %73, %52, %38, %29
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @xfs_rtmodify_range(%struct.TYPE_10__*, i32*, i64, i64, i32) #1

declare dso_local i32 @xfs_rtfind_back(%struct.TYPE_10__*, i32*, i64, i32, i64*) #1

declare dso_local i32 @xfs_rtfind_forw(%struct.TYPE_10__*, i32*, i64, i64, i64*) #1

declare dso_local i32 @xfs_rtmodify_summary(%struct.TYPE_10__*, i32*, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @XFS_RTBLOCKLOG(i64) #1

declare dso_local i32 @XFS_BITTOBLOCK(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
