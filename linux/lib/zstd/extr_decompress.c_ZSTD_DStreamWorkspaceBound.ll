; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_DStreamWorkspaceBound.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_DStreamWorkspaceBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_BLOCKSIZE_ABSOLUTEMAX = common dso_local global i32 0, align 4
@WILDCOPY_OVERLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_DStreamWorkspaceBound(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i32, i32* @ZSTD_BLOCKSIZE_ABSOLUTEMAX, align 4
  %8 = call i64 @MIN(i64 %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %10, %11
  %13 = load i32, i32* @WILDCOPY_OVERLENGTH, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = add i64 %12, %15
  store i64 %16, i64* %5, align 8
  %17 = call i64 (...) @ZSTD_DCtxWorkspaceBound()
  %18 = call i64 @ZSTD_ALIGN(i64 4)
  %19 = add i64 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ZSTD_ALIGN(i64 %20)
  %22 = add i64 %19, %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @ZSTD_ALIGN(i64 %23)
  %25 = add i64 %22, %24
  ret i64 %25
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @ZSTD_DCtxWorkspaceBound(...) #1

declare dso_local i64 @ZSTD_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
