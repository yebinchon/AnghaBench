; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_fixed_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_fixed_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.genpool_data_fixed = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_pool_fixed_alloc(i64* %0, i64 %1, i64 %2, i32 %3, i8* %4, %struct.gen_pool* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gen_pool*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.genpool_data_fixed*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.gen_pool* %5, %struct.gen_pool** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = bitcast i8* %20 to %struct.genpool_data_fixed*
  store %struct.genpool_data_fixed* %21, %struct.genpool_data_fixed** %16, align 8
  %22 = load %struct.gen_pool*, %struct.gen_pool** %14, align 8
  %23 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load %struct.genpool_data_fixed*, %struct.genpool_data_fixed** %16, align 8
  %26 = getelementptr inbounds %struct.genpool_data_fixed, %struct.genpool_data_fixed* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %17, align 4
  %29 = ashr i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %18, align 8
  %31 = load %struct.genpool_data_fixed*, %struct.genpool_data_fixed** %16, align 8
  %32 = getelementptr inbounds %struct.genpool_data_fixed, %struct.genpool_data_fixed* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %17, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = sub i64 %37, 1
  %39 = and i64 %34, %38
  %40 = call i64 @WARN_ON(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %7
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %8, align 8
  br label %59

44:                                               ; preds = %7
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %18, align 8
  %49 = add i64 %47, %48
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @bitmap_find_next_zero_area(i64* %45, i64 %46, i64 %49, i32 %50, i32 0)
  store i64 %51, i64* %19, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %19, align 8
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i64, i64* %19, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %57, %42
  %60 = load i64, i64* %8, align 8
  ret i64 %60
}

declare dso_local i64 @WARN_ON(i64) #1

declare dso_local i64 @bitmap_find_next_zero_area(i64*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
