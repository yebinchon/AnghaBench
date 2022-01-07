; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_alloc_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_alloc_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_devres = type { i64, i64, i32, i8* }

@dmam_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dmam_alloc_attrs(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_devres*, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* @dmam_release, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.dma_devres* @devres_alloc(i32 %14, i32 32, i32 %15)
  store %struct.dma_devres* %16, %struct.dma_devres** %12, align 8
  %17 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %18 = icmp ne %struct.dma_devres* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %50

20:                                               ; preds = %5
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i8* @dma_alloc_attrs(%struct.device* %21, i64 %22, i32* %23, i32 %24, i64 %25)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %31 = call i32 @devres_free(%struct.dma_devres* %30)
  store i8* null, i8** %6, align 8
  br label %50

32:                                               ; preds = %20
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %35 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %39 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %42 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %45 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.dma_devres*, %struct.dma_devres** %12, align 8
  %48 = call i32 @devres_add(%struct.device* %46, %struct.dma_devres* %47)
  %49 = load i8*, i8** %13, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %32, %29, %19
  %51 = load i8*, i8** %6, align 8
  ret i8* %51
}

declare dso_local %struct.dma_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i32 @devres_free(%struct.dma_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.dma_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
