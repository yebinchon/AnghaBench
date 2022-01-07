; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_initDStream.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_initDStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i8*, i64, i32, i64, i64, i32*, i32*, i64, i64, i64, i64, i32 }

@zdss_loadHeader = common dso_local global i32 0, align 4
@ZSTD_BLOCKSIZE_ABSOLUTEMAX = common dso_local global i32 0, align 4
@WILDCOPY_OVERLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ZSTD_initDStream(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @ZSTD_initStack(i8* %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_5__* @ZSTD_createDStream_advanced(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %100

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @zdss_loadHeader, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 10
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 12
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ZSTD_freeDDict(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 8
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 9
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ZSTD_BLOCKSIZE_ABSOLUTEMAX, align 4
  %54 = call i64 @MIN(i64 %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  %60 = load i32, i32* @WILDCOPY_OVERLENGTH, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = add i64 %59, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ZSTD_malloc(i64 %64, i32 %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ZSTD_malloc(i64 %75, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %20
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %20
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = call i32 @ZSTD_freeDStream(%struct.TYPE_5__* %96)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %100

98:                                               ; preds = %90
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %4, align 8
  br label %100

100:                                              ; preds = %98, %95, %19
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %101
}

declare dso_local i32 @ZSTD_initStack(i8*, i64) #1

declare dso_local %struct.TYPE_5__* @ZSTD_createDStream_advanced(i32) #1

declare dso_local i32 @ZSTD_freeDDict(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @ZSTD_malloc(i64, i32) #1

declare dso_local i32 @ZSTD_freeDStream(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
