; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_hashPtr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_hashPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32)* @ZSTD_hashPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_hashPtr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 4, label %10
    i32 5, label %14
    i32 6, label %18
    i32 7, label %22
    i32 8, label %26
  ]

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ZSTD_hash4Ptr(i8* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  br label %30

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @ZSTD_hash5Ptr(i8* %15, i32 %16)
  store i64 %17, i64* %4, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ZSTD_hash6Ptr(i8* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  br label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ZSTD_hash7Ptr(i8* %23, i32 %24)
  store i64 %25, i64* %4, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ZSTD_hash8Ptr(i8* %27, i32 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26, %22, %18, %14, %10
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i64 @ZSTD_hash4Ptr(i8*, i32) #1

declare dso_local i64 @ZSTD_hash5Ptr(i8*, i32) #1

declare dso_local i64 @ZSTD_hash6Ptr(i8*, i32) #1

declare dso_local i64 @ZSTD_hash7Ptr(i8*, i32) #1

declare dso_local i64 @ZSTD_hash8Ptr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
