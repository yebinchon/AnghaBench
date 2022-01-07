; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_fast_extState.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_fast_extState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@byPtr = common dso_local global i32 0, align 4
@LZ4_ACCELERATION_DEFAULT = common dso_local global i32 0, align 4
@LZ4_64Klimit = common dso_local global i32 0, align 4
@noLimit = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32)* @LZ4_compress_fast_extState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_compress_fast_extState(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* @byPtr, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_3__*
  %22 = call i32 @LZ4_resetStream(%struct.TYPE_3__* %21)
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @LZ4_ACCELERATION_DEFAULT, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %25, %6
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @LZ4_COMPRESSBOUND(i32 %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @LZ4_64Klimit, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32*, i32** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @noLimit, align 4
  %42 = load i32, i32* @byU16, align 4
  %43 = load i32, i32* @noDict, align 4
  %44 = load i32, i32* @noDictIssue, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @LZ4_compress_generic(i32* %37, i8* %38, i8* %39, i32 %40, i32 0, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %86

47:                                               ; preds = %32
  %48 = load i32*, i32** %14, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @noLimit, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @noDict, align 4
  %55 = load i32, i32* @noDictIssue, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @LZ4_compress_generic(i32* %48, i8* %49, i8* %50, i32 %51, i32 0, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %86

58:                                               ; preds = %27
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @LZ4_64Klimit, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32*, i32** %14, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @limitedOutput, align 4
  %69 = load i32, i32* @byU16, align 4
  %70 = load i32, i32* @noDict, align 4
  %71 = load i32, i32* @noDictIssue, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @LZ4_compress_generic(i32* %63, i8* %64, i8* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %86

74:                                               ; preds = %58
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @limitedOutput, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @noDict, align 4
  %83 = load i32, i32* @noDictIssue, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @LZ4_compress_generic(i32* %75, i8* %76, i8* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %74, %62, %47, %36
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @LZ4_resetStream(%struct.TYPE_3__*) #1

declare dso_local i32 @LZ4_COMPRESSBOUND(i32) #1

declare dso_local i32 @LZ4_compress_generic(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
