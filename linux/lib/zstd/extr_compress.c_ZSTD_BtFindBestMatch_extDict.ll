; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_BtFindBestMatch_extDict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_BtFindBestMatch_extDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32*, i64*, i32, i32)* @ZSTD_BtFindBestMatch_extDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_BtFindBestMatch_extDict(%struct.TYPE_5__* %0, i32* %1, i32* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = icmp ult i32* %14, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %39

25:                                               ; preds = %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @ZSTD_updateTree_extDict(%struct.TYPE_5__* %26, i32* %27, i32* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @ZSTD_insertBtAndFindBestMatch(%struct.TYPE_5__* %32, i32* %33, i32* %34, i64* %35, i32 %36, i32 %37, i32 1)
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %25, %24
  %40 = load i64, i64* %7, align 8
  ret i64 %40
}

declare dso_local i32 @ZSTD_updateTree_extDict(%struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @ZSTD_insertBtAndFindBestMatch(%struct.TYPE_5__*, i32*, i32*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
