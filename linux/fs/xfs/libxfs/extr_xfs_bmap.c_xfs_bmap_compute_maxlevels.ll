; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap.c_xfs_bmap_compute_maxlevels.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap.c_xfs_bmap_compute_maxlevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@MAXEXTNUM = common dso_local global i32 0, align 4
@MINDBTPTRS = common dso_local global i32 0, align 4
@MAXAEXTNUM = common dso_local global i32 0, align 4
@MINABTPTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bmap_compute_maxlevels(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @XFS_DATA_FORK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @MAXEXTNUM, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @MINDBTPTRS, align 4
  %18 = call i32 @XFS_BMDR_SPACE_CALC(i32 %17)
  store i32 %18, i32* %11, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @MAXAEXTNUM, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @MINABTPTRS, align 4
  %22 = call i32 @XFS_BMDR_SPACE_CALC(i32 %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @xfs_bmdr_maxrecs(i32 %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %58, %23
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %10, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  ret void
}

declare dso_local i32 @XFS_BMDR_SPACE_CALC(i32) #1

declare dso_local i32 @xfs_bmdr_maxrecs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
