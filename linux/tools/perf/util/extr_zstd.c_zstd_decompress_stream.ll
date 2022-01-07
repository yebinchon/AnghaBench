; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_zstd.c_zstd_decompress_stream.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_zstd.c_zstd_decompress_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zstd_data = type { i32 }
%struct.TYPE_6__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i8*, i64, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"failed to decompress (B): %ld -> %ld, dst_size %ld : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zstd_decompress_stream(%struct.zstd_data* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.zstd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  store %struct.zstd_data* %0, %struct.zstd_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %51, %5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.zstd_data*, %struct.zstd_data** %6, align 8
  %37 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ZSTD_decompressStream(i32 %38, %struct.TYPE_5__* %13, %struct.TYPE_6__* %12)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @ZSTD_isError(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @ZSTD_getErrorName(i64 %48)
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %46, i64 %47, i32 %49)
  br label %65

51:                                               ; preds = %35
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  br label %29

65:                                               ; preds = %43, %29
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  ret i64 %68
}

declare dso_local i64 @ZSTD_decompressStream(i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
