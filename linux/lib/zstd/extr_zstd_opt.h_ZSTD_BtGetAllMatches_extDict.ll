; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_zstd_opt.h_ZSTD_BtGetAllMatches_extDict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_zstd_opt.h_ZSTD_BtGetAllMatches_extDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32, i32*, i32)* @ZSTD_BtGetAllMatches_extDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTD_BtGetAllMatches_extDict(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = icmp ult i32* %16, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %42

27:                                               ; preds = %7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @ZSTD_updateTree_extDict(%struct.TYPE_5__* %28, i32* %29, i32* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @ZSTD_insertBtAndGetAllMatches(%struct.TYPE_5__* %34, i32* %35, i32* %36, i32 %37, i32 %38, i32 1, i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %27, %26
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @ZSTD_updateTree_extDict(%struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ZSTD_insertBtAndGetAllMatches(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
