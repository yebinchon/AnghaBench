; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_count_2segments.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_count_2segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32*)* @ZSTD_count_2segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_count_2segments(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @MIN(i32* %21, i32* %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i64 @ZSTD_count(i32* %24, i32* %25, i32* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %6, align 8
  br label %44

35:                                               ; preds = %5
  %36 = load i64, i64* %13, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @ZSTD_count(i32* %39, i32* %40, i32* %41)
  %43 = add i64 %36, %42
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i32* @MIN(i32*, i32*) #1

declare dso_local i64 @ZSTD_count(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
