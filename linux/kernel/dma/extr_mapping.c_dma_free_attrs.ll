; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_free_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_free_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i32 (%struct.device.0*, i64, i8*, i32, i64)* }
%struct.device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %12)
  store %struct.dma_map_ops* %13, %struct.dma_map_ops** %11, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @get_order(i64 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @dma_release_from_dev_coherent(%struct.device* %14, i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %60

21:                                               ; preds = %5
  %22 = call i32 (...) @irqs_disabled()
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %60

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @debug_dma_free_coherent(%struct.device* %28, i64 %29, i8* %30, i32 %31)
  %33 = load %struct.dma_map_ops*, %struct.dma_map_ops** %11, align 8
  %34 = call i64 @dma_is_direct(%struct.dma_map_ops* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @dma_direct_free(%struct.device* %37, i64 %38, i8* %39, i32 %40, i64 %41)
  br label %60

43:                                               ; preds = %27
  %44 = load %struct.dma_map_ops*, %struct.dma_map_ops** %11, align 8
  %45 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.device.0*, i64, i8*, i32, i64)*, i32 (%struct.device.0*, i64, i8*, i32, i64)** %45, align 8
  %47 = icmp ne i32 (%struct.device.0*, i64, i8*, i32, i64)* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.dma_map_ops*, %struct.dma_map_ops** %11, align 8
  %50 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.device.0*, i64, i8*, i32, i64)*, i32 (%struct.device.0*, i64, i8*, i32, i64)** %50, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = bitcast %struct.device* %52 to %struct.device.0*
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 %51(%struct.device.0* %53, i64 %54, i8* %55, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %20, %26, %59, %36
  ret void
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i64 @dma_release_from_dev_coherent(%struct.device*, i32, i8*) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @debug_dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i32 @dma_direct_free(%struct.device*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
