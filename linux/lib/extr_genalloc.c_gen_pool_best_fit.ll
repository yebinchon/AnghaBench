; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_best_fit.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_best_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_pool_best_fit(i64* %0, i64 %1, i64 %2, i32 %3, i8* %4, %struct.gen_pool* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gen_pool*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.gen_pool* %5, %struct.gen_pool** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %17, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @bitmap_find_next_zero_area(i64* %23, i64 %24, i32 %26, i32 %27, i32 0)
  store i64 %28, i64* %18, align 8
  br label %29

29:                                               ; preds = %60, %7
  %30 = load i64, i64* %18, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %18, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = call i32 @find_next_bit(i64* %34, i64 %35, i64 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %18, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %17, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %18, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %18, align 8
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i64, i64* %16, align 8
  store i64 %58, i64* %8, align 8
  br label %69

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %19, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @bitmap_find_next_zero_area(i64* %61, i64 %62, i32 %64, i32 %65, i32 0)
  store i64 %66, i64* %18, align 8
  br label %29

67:                                               ; preds = %29
  %68 = load i64, i64* %16, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %67, %57
  %70 = load i64, i64* %8, align 8
  ret i64 %70
}

declare dso_local i64 @bitmap_find_next_zero_area(i64*, i64, i32, i32, i32) #1

declare dso_local i32 @find_next_bit(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
