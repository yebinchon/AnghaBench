; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_putPositionOnHash.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_putPositionOnHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i32, i32*)* @LZ4_putPositionOnHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4_putPositionOnHash(i32* %0, i64 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %47 [
    i32 130, label %15
    i32 128, label %22
    i32 129, label %34
  ]

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32**
  store i32** %17, i32*** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32**, i32*** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* %18, i32** %21, align 8
  br label %47

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %12, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %47

34:                                               ; preds = %5
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %15, %22, %34, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
