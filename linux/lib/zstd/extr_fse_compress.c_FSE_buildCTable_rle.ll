; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_rle.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_buildCTable_rle(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i8*
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  %13 = getelementptr inbounds i64, i64* %12, i64 2
  store i64* %13, i64** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %8, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 -2
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 -1
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  ret i64 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
