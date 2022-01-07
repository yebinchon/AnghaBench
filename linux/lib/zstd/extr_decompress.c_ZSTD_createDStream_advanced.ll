; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_createDStream_advanced.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_createDStream_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@zdss_init = common dso_local global i32 0, align 4
@ZSTD_MAXWINDOWSIZE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i64)* @ZSTD_createDStream_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ZSTD_createDStream_advanced(i64 %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = bitcast %struct.TYPE_10__* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %48

14:                                               ; preds = %9
  %15 = bitcast %struct.TYPE_10__* %3 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i64 @ZSTD_malloc(i32 24, i64 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %48

22:                                               ; preds = %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call i32 @memset(%struct.TYPE_11__* %23, i32 0, i32 24)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = call i32 @memcpy(i32* %26, %struct.TYPE_10__* %3, i32 8)
  %28 = bitcast %struct.TYPE_10__* %3 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32* @ZSTD_createDCtx_advanced(i64 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = call i32 @ZSTD_freeDStream(%struct.TYPE_11__* %38)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %48

40:                                               ; preds = %22
  %41 = load i32, i32* @zdss_init, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ZSTD_MAXWINDOWSIZE_DEFAULT, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %2, align 8
  br label %48

48:                                               ; preds = %40, %37, %21, %13
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %49
}

declare dso_local i64 @ZSTD_malloc(i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @ZSTD_createDCtx_advanced(i64) #1

declare dso_local i32 @ZSTD_freeDStream(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
