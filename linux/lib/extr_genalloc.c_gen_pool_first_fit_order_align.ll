; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_first_fit_order_align.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_first_fit_order_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_pool_first_fit_order_align(i64* %0, i64 %1, i64 %2, i32 %3, i8* %4, %struct.gen_pool* %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.gen_pool*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.gen_pool* %5, %struct.gen_pool** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @roundup_pow_of_two(i32 %16)
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %15, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @bitmap_find_next_zero_area(i64* %20, i64 %21, i64 %22, i32 %23, i64 %24)
  ret i64 %25
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @bitmap_find_next_zero_area(i64*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
