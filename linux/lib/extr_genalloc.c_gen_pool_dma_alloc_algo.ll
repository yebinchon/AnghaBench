; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_dma_alloc_algo.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_dma_alloc_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gen_pool_dma_alloc_algo(%struct.gen_pool* %0, i64 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %14 = icmp ne %struct.gen_pool* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %36

16:                                               ; preds = %5
  %17 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @gen_pool_alloc_algo(%struct.gen_pool* %17, i64 %18, i32 %19, i8* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i8* null, i8** %6, align 8
  br label %36

25:                                               ; preds = %16
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @gen_pool_virt_to_phys(%struct.gen_pool* %29, i64 %30)
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i64, i64* %12, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %33, %24, %15
  %37 = load i8*, i8** %6, align 8
  ret i8* %37
}

declare dso_local i64 @gen_pool_alloc_algo(%struct.gen_pool*, i64, i32, i8*) #1

declare dso_local i32 @gen_pool_virt_to_phys(%struct.gen_pool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
