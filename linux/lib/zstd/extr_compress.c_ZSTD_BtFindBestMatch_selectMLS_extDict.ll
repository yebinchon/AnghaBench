; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_BtFindBestMatch_selectMLS_extDict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_BtFindBestMatch_selectMLS_extDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i64*, i32, i32)* @ZSTD_BtFindBestMatch_selectMLS_extDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_BtFindBestMatch_selectMLS_extDict(i32* %0, i32* %1, i32* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
    i32 4, label %16
    i32 5, label %23
    i32 7, label %30
    i32 6, label %30
  ]

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %6, %15
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @ZSTD_BtFindBestMatch_extDict(i32* %17, i32* %18, i32* %19, i64* %20, i32 %21, i32 4)
  store i64 %22, i64* %7, align 8
  br label %37

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @ZSTD_BtFindBestMatch_extDict(i32* %24, i32* %25, i32* %26, i64* %27, i32 %28, i32 5)
  store i64 %29, i64* %7, align 8
  br label %37

30:                                               ; preds = %6, %6
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @ZSTD_BtFindBestMatch_extDict(i32* %31, i32* %32, i32* %33, i64* %34, i32 %35, i32 6)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %30, %23, %16
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare dso_local i64 @ZSTD_BtFindBestMatch_extDict(i32*, i32*, i32*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
