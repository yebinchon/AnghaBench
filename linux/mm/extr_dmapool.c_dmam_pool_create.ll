; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_dmapool.c_dmam_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_dmapool.c_dmam_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32 }
%struct.device = type { i32 }

@dmam_pool_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_pool* @dmam_pool_create(i8* %0, %struct.device* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_pool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_pool**, align 8
  %13 = alloca %struct.dma_pool*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* @dmam_pool_release, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dma_pool** @devres_alloc(i32 %14, i32 8, i32 %15)
  store %struct.dma_pool** %16, %struct.dma_pool*** %12, align 8
  %17 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %18 = icmp ne %struct.dma_pool** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.dma_pool* null, %struct.dma_pool** %6, align 8
  br label %39

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.dma_pool* @dma_pool_create(i8* %21, %struct.device* %22, i64 %23, i64 %24, i64 %25)
  %27 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  store %struct.dma_pool* %26, %struct.dma_pool** %27, align 8
  store %struct.dma_pool* %26, %struct.dma_pool** %13, align 8
  %28 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  %29 = icmp ne %struct.dma_pool* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.dma_pool** %32)
  br label %37

34:                                               ; preds = %20
  %35 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %36 = call i32 @devres_free(%struct.dma_pool** %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.dma_pool*, %struct.dma_pool** %13, align 8
  store %struct.dma_pool* %38, %struct.dma_pool** %6, align 8
  br label %39

39:                                               ; preds = %37, %19
  %40 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  ret %struct.dma_pool* %40
}

declare dso_local %struct.dma_pool** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.dma_pool* @dma_pool_create(i8*, %struct.device*, i64, i64, i64) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.dma_pool**) #1

declare dso_local i32 @devres_free(%struct.dma_pool**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
