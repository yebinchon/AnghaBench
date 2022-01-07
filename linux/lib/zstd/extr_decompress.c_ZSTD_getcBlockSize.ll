; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_getcBlockSize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_getcBlockSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@bt_rle = common dso_local global i64 0, align 8
@bt_reserved = common dso_local global i64 0, align 8
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_getcBlockSize(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @srcSize_wrong, align 4
  %15 = call i64 @ERROR(i32 %14)
  store i64 %15, i64* %4, align 8
  br label %52

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ZSTD_readLE24(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 3
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @bt_rle, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i64 1, i64* %4, align 8
  br label %52

40:                                               ; preds = %16
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @bt_reserved, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @corruption_detected, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %4, align 8
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %49, %46, %39, %13
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_readLE24(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
