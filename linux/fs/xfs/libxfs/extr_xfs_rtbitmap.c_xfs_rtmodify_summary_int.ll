; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtmodify_summary_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtmodify_summary_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtmodify_summary_int(%struct.TYPE_13__* %0, i32* %1, i32 %2, i64 %3, i32 %4, %struct.TYPE_14__** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_14__** %5, %struct.TYPE_14__*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @XFS_SUMOFFS(%struct.TYPE_13__* %24, i32 %25, i64 %26)
  store i32 %27, i32* %21, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = load i32, i32* %21, align 4
  %30 = call i64 @XFS_SUMOFFSTOBLOCK(%struct.TYPE_13__* %28, i32 %29)
  store i64 %30, i64* %20, align 8
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %8
  %35 = load i64*, i64** %16, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %20, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %18, align 8
  br label %65

42:                                               ; preds = %34, %8
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i32 @xfs_trans_brelse(i32* %47, %struct.TYPE_14__* %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i64, i64* %20, align 8
  %55 = call i32 @xfs_rtbuf_get(%struct.TYPE_13__* %52, i32* %53, i64 %54, i32 1, %struct.TYPE_14__** %18)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %9, align 4
  br label %148

60:                                               ; preds = %51
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %62, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64*, i64** %16, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %39
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i32* @XFS_SUMPTR(%struct.TYPE_13__* %66, %struct.TYPE_14__* %67, i32 %68)
  store i32* %69, i32** %22, align 8
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %140

72:                                               ; preds = %65
  %73 = load i32*, i32** %22, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %74 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  store i64 %81, i64* %23, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %22, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %132

90:                                               ; preds = %72
  %91 = load i32*, i32** %22, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %95, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %94, %90
  %112 = load i32*, i32** %22, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %116, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %115, %111
  br label %132

132:                                              ; preds = %131, %72
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %23, align 8
  %137 = add i64 %136, 4
  %138 = sub i64 %137, 1
  %139 = call i32 @xfs_trans_log_buf(i32* %133, %struct.TYPE_14__* %134, i64 %135, i64 %138)
  br label %140

140:                                              ; preds = %132, %65
  %141 = load i32*, i32** %17, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32*, i32** %22, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %17, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %140
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %147, %58
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i32 @XFS_SUMOFFS(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @XFS_SUMOFFSTOBLOCK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @xfs_rtbuf_get(%struct.TYPE_13__*, i32*, i64, i32, %struct.TYPE_14__**) #1

declare dso_local i32* @XFS_SUMPTR(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32*, %struct.TYPE_14__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
