; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress1X_usingCTable.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress1X_usingCTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_compress1X_usingCTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %13, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %120

30:                                               ; preds = %5
  %31 = load i32*, i32** %15, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @BIT_initCStream(i32* %17, i32* %31, i32 %38)
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = call i64 @HUF_isError(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %120

44:                                               ; preds = %30
  %45 = load i64, i64* %10, align 8
  %46 = and i64 %45, -4
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %10, align 8
  %48 = and i64 %47, 3
  switch i64 %48, label %77 [
    i64 3, label %49
    i64 2, label %58
    i64 1, label %67
    i64 0, label %76
  ]

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %16, align 8
  %52 = add i64 %51, 2
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @HUF_encodeSymbol(i32* %17, i32 %54, i32* %55)
  %57 = call i32 @HUF_FLUSHBITS_2(i32* %17)
  br label %58

58:                                               ; preds = %44, %49
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %16, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @HUF_encodeSymbol(i32* %17, i32 %63, i32* %64)
  %66 = call i32 @HUF_FLUSHBITS_1(i32* %17)
  br label %67

67:                                               ; preds = %44, %58
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %16, align 8
  %70 = add i64 %69, 0
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @HUF_encodeSymbol(i32* %17, i32 %72, i32* %73)
  %75 = call i32 @HUF_FLUSHBITS(i32* %17)
  br label %76

76:                                               ; preds = %44, %67
  br label %77

77:                                               ; preds = %44, %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i64, i64* %16, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %79
  %83 = load i32*, i32** %12, align 8
  %84 = load i64, i64* %16, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @HUF_encodeSymbol(i32* %17, i32 %87, i32* %88)
  %90 = call i32 @HUF_FLUSHBITS_1(i32* %17)
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* %16, align 8
  %93 = sub i64 %92, 2
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @HUF_encodeSymbol(i32* %17, i32 %95, i32* %96)
  %98 = call i32 @HUF_FLUSHBITS_2(i32* %17)
  %99 = load i32*, i32** %12, align 8
  %100 = load i64, i64* %16, align 8
  %101 = sub i64 %100, 3
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @HUF_encodeSymbol(i32* %17, i32 %103, i32* %104)
  %106 = call i32 @HUF_FLUSHBITS_1(i32* %17)
  %107 = load i32*, i32** %12, align 8
  %108 = load i64, i64* %16, align 8
  %109 = sub i64 %108, 4
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @HUF_encodeSymbol(i32* %17, i32 %111, i32* %112)
  %114 = call i32 @HUF_FLUSHBITS(i32* %17)
  br label %115

115:                                              ; preds = %82
  %116 = load i64, i64* %16, align 8
  %117 = sub i64 %116, 4
  store i64 %117, i64* %16, align 8
  br label %79

118:                                              ; preds = %79
  %119 = call i64 @BIT_closeCStream(i32* %17)
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %118, %43, %29
  %121 = load i64, i64* %6, align 8
  ret i64 %121
}

declare dso_local i64 @BIT_initCStream(i32*, i32*, i32) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i32 @HUF_encodeSymbol(i32*, i32, i32*) #1

declare dso_local i32 @HUF_FLUSHBITS_2(i32*) #1

declare dso_local i32 @HUF_FLUSHBITS_1(i32*) #1

declare dso_local i32 @HUF_FLUSHBITS(i32*) #1

declare dso_local i64 @BIT_closeCStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
