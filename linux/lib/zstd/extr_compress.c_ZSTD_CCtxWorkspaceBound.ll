; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_CCtxWorkspaceBound.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_CCtxWorkspaceBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i64 }

@ZSTD_BLOCKSIZE_ABSOLUTEMAX = common dso_local global i32 0, align 4
@ZSTD_fast = common dso_local global i64 0, align 8
@ZSTD_HASHLOG3_MAX = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@Litbits = common dso_local global i32 0, align 4
@ZSTD_OPT_NUM = common dso_local global i32 0, align 4
@ZSTD_btopt = common dso_local global i64 0, align 8
@ZSTD_btopt2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtxWorkspaceBound(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = load i32, i32* @ZSTD_BLOCKSIZE_ABSOLUTEMAX, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 1, %15
  %17 = call i64 @MIN(i32 %13, i64 %16)
  store i64 %17, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %4, align 8
  %29 = mul i64 11, %28
  %30 = add i64 %27, %29
  store i64 %30, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZSTD_fast, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %40

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i32 [ 0, %35 ], [ %39, %36 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 1, %44
  store i64 %45, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %55

50:                                               ; preds = %40
  %51 = load i32, i32* @ZSTD_HASHLOG3_MAX, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @MIN(i32 %51, i64 %53)
  br label %55

55:                                               ; preds = %50, %49
  %56 = phi i64 [ 0, %49 ], [ %54, %50 ]
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = shl i64 1, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %61, %62
  %64 = mul i64 %63, 8
  store i64 %64, i64* %10, align 8
  %65 = load i32, i32* @MaxML, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* @MaxLL, align 4
  %68 = add nsw i32 %67, 1
  %69 = add nsw i32 %66, %68
  %70 = load i32, i32* @MaxOff, align 4
  %71 = add nsw i32 %70, 1
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* @Litbits, align 4
  %74 = shl i32 1, %73
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = add i64 %77, %81
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 2048
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ZSTD_btopt, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %55
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZSTD_btopt2, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %55
  %97 = load i64, i64* %11, align 8
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i64 [ %97, %96 ], [ 0, %98 ]
  %101 = add i64 %86, %100
  store i64 %101, i64* %12, align 8
  %102 = call i64 @ZSTD_ALIGN(i64 4)
  %103 = call i64 @ZSTD_ALIGN(i64 4)
  %104 = add i64 %102, %103
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @ZSTD_ALIGN(i64 %105)
  %107 = add i64 %104, %106
  ret i64 %107
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @ZSTD_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
