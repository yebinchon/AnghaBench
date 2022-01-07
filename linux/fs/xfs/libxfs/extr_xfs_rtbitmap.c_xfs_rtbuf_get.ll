; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtbuf_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtbuf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i64 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i64 0, align 8
@xfs_rtbuf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_RTSUMMARY_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_RTBITMAP_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtbuf_get(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32 1, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  br label %27

23:                                               ; preds = %5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32* [ %22, %19 ], [ %26, %23 ]
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @XFS_DATA_FORK, align 4
  %32 = call i32 @xfs_bmapi_read(i32* %29, i32 %30, i32 1, %struct.TYPE_9__* %14, i32* %15, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %84

37:                                               ; preds = %27
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i32 @xfs_bmap_is_real_extent(%struct.TYPE_9__* %14)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EFSCORRUPTED, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %84

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NULLFSBLOCK, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @XFS_FSB_TO_DADDR(%struct.TYPE_8__* %58, i64 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @xfs_trans_read_buf(%struct.TYPE_8__* %53, i32* %54, i32 %57, i32 %61, i32 %64, i32 0, i32** %12, i32* @xfs_rtbuf_ops)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %46
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %6, align 4
  br label %84

70:                                               ; preds = %46
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @XFS_BLFT_RTSUMMARY_BUF, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @XFS_BLFT_RTBITMAP_BUF, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i32 @xfs_trans_buf_set_type(i32* %71, i32* %72, i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32**, i32*** %11, align 8
  store i32* %82, i32** %83, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %68, %43, %35
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @xfs_bmapi_read(i32*, i32, i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @xfs_bmap_is_real_extent(%struct.TYPE_9__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
