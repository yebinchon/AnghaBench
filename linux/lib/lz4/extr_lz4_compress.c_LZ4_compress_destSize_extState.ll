; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_destSize_extState.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_destSize_extState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@byPtr = common dso_local global i32 0, align 4
@LZ4_64Klimit = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*, i32*, i32)* @LZ4_compress_destSize_extState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_compress_destSize_extState(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @byPtr, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = call i32 @LZ4_resetStream(%struct.TYPE_5__* %14)
  %16 = load i32, i32* %11, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LZ4_COMPRESSBOUND(i32 %18)
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @LZ4_compress_fast_extState(%struct.TYPE_5__* %22, i8* %23, i8* %24, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %5
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LZ4_64Klimit, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @byU16, align 4
  %42 = call i32 @LZ4_compress_destSize_generic(i32* %36, i8* %37, i8* %38, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @LZ4_compress_destSize_generic(i32* %45, i8* %46, i8* %47, i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %34, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @LZ4_resetStream(%struct.TYPE_5__*) #1

declare dso_local i32 @LZ4_COMPRESSBOUND(i32) #1

declare dso_local i32 @LZ4_compress_fast_extState(%struct.TYPE_5__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LZ4_compress_destSize_generic(i32*, i8*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
