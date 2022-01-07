; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_initCStream.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_initCStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ZSTD_initCStream(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @ZSTD_initStack(i8* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32* @ZSTD_createCStream_advanced(i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @ZSTD_initCStream_advanced(i32* %21, i32* null, i32 0, i32 %22, i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @ZSTD_isError(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32* null, i32** %5, align 8
  br label %32

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32*, i32** %5, align 8
  ret i32* %33
}

declare dso_local i32 @ZSTD_initStack(i8*, i64) #1

declare dso_local i32* @ZSTD_createCStream_advanced(i32) #1

declare dso_local i64 @ZSTD_initCStream_advanced(i32*, i32*, i32, i32, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
