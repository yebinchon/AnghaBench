; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decompressMultiFrame.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decompressMultiFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC = common dso_local global i32 0, align 4
@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@ZSTD_MAGICNUMBER = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@prefix_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i64, i8*, i64, i32*)* @ZSTD_decompressMultiFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressMultiFrame(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %18, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %8
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @GENERIC, align 4
  %30 = call i64 @ERROR(i32 %29)
  store i64 %30, i64* %9, align 8
  br label %127

31:                                               ; preds = %25
  %32 = load i32*, i32** %17, align 8
  %33 = call i8* @ZSTD_DDictDictContent(i32* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = call i64 @ZSTD_DDictDictSize(i32* %34)
  store i64 %35, i64* %16, align 8
  br label %36

36:                                               ; preds = %31, %8
  br label %37

37:                                               ; preds = %108, %72, %36
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %115

41:                                               ; preds = %37
  %42 = load i8*, i8** %13, align 8
  %43 = call i64 @ZSTD_readLE32(i8* %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* @ZSTD_MAGICNUMBER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %41
  %49 = load i32, i32* %19, align 4
  %50 = and i32 %49, -16
  %51 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @srcSize_wrong, align 4
  %59 = call i64 @ERROR(i32 %58)
  store i64 %59, i64* %9, align 8
  br label %127

60:                                               ; preds = %53
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr i8, i8* %61, i64 4
  %63 = call i64 @ZSTD_readLE32(i8* %62)
  %64 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %20, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %20, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @srcSize_wrong, align 4
  %71 = call i64 @ERROR(i32 %70)
  store i64 %71, i64* %9, align 8
  br label %127

72:                                               ; preds = %60
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %20, align 8
  %75 = getelementptr i8, i8* %73, i64 %74
  store i8* %75, i8** %13, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %14, align 8
  br label %37

79:                                               ; preds = %48
  %80 = load i32, i32* @prefix_unknown, align 4
  %81 = call i64 @ERROR(i32 %80)
  store i64 %81, i64* %9, align 8
  br label %127

82:                                               ; preds = %41
  %83 = load i32*, i32** %17, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @ZSTD_refDDict(i32* %86, i32* %87)
  br label %95

89:                                               ; preds = %82
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @ZSTD_decompressBegin_usingDict(i32* %90, i8* %91, i64 %92)
  %94 = call i32 @CHECK_F(i32 %93)
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32*, i32** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @ZSTD_checkContinuity(i32* %96, i8* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @ZSTD_decompressFrame(i32* %99, i8* %100, i64 %101, i8** %13, i64* %14)
  store i64 %102, i64* %21, align 8
  %103 = load i64, i64* %21, align 8
  %104 = call i64 @ZSTD_isError(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i64, i64* %21, align 8
  store i64 %107, i64* %9, align 8
  br label %127

108:                                              ; preds = %95
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %21, align 8
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %11, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %12, align 8
  br label %37

115:                                              ; preds = %37
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @srcSize_wrong, align 4
  %120 = call i64 @ERROR(i32 %119)
  store i64 %120, i64* %9, align 8
  br label %127

121:                                              ; preds = %115
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %121, %118, %106, %79, %69, %57, %28
  %128 = load i64, i64* %9, align 8
  ret i64 %128
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i8* @ZSTD_DDictDictContent(i32*) #1

declare dso_local i64 @ZSTD_DDictDictSize(i32*) #1

declare dso_local i64 @ZSTD_readLE32(i8*) #1

declare dso_local i32 @ZSTD_refDDict(i32*, i32*) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_decompressBegin_usingDict(i32*, i8*, i64) #1

declare dso_local i32 @ZSTD_checkContinuity(i32*, i8*) #1

declare dso_local i64 @ZSTD_decompressFrame(i32*, i8*, i64, i8**, i64*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
