; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_alloc_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_alloc_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i8* (%struct.device.0*, i64, i32*, i32, i64)* }
%struct.device.0 = type opaque

@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_map_ops*, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %14)
  store %struct.dma_map_ops* %15, %struct.dma_map_ops** %12, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @dma_alloc_from_dev_coherent(%struct.device* %23, i64 %24, i32* %25, i8** %13)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %6, align 8
  br label %75

30:                                               ; preds = %5
  %31 = load i32, i32* @__GFP_DMA, align 4
  %32 = load i32, i32* @__GFP_DMA32, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @__GFP_HIGHMEM, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.dma_map_ops*, %struct.dma_map_ops** %12, align 8
  %40 = call i64 @dma_is_direct(%struct.dma_map_ops* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i8* @dma_direct_alloc(%struct.device* %43, i64 %44, i32* %45, i32 %46, i64 %47)
  store i8* %48, i8** %13, align 8
  br label %67

49:                                               ; preds = %30
  %50 = load %struct.dma_map_ops*, %struct.dma_map_ops** %12, align 8
  %51 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %50, i32 0, i32 0
  %52 = load i8* (%struct.device.0*, i64, i32*, i32, i64)*, i8* (%struct.device.0*, i64, i32*, i32, i64)** %51, align 8
  %53 = icmp ne i8* (%struct.device.0*, i64, i32*, i32, i64)* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.dma_map_ops*, %struct.dma_map_ops** %12, align 8
  %56 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %55, i32 0, i32 0
  %57 = load i8* (%struct.device.0*, i64, i32*, i32, i64)*, i8* (%struct.device.0*, i64, i32*, i32, i64)** %56, align 8
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = bitcast %struct.device* %58 to %struct.device.0*
  %60 = load i64, i64* %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i8* %57(%struct.device.0* %59, i64 %60, i32* %61, i32 %62, i64 %63)
  store i8* %64, i8** %13, align 8
  br label %66

65:                                               ; preds = %49
  store i8* null, i8** %6, align 8
  br label %75

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @debug_dma_alloc_coherent(%struct.device* %68, i64 %69, i32 %71, i8* %72)
  %74 = load i8*, i8** %13, align 8
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %67, %65, %28
  %76 = load i8*, i8** %6, align 8
  ret i8* %76
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @dma_alloc_from_dev_coherent(%struct.device*, i64, i32*, i8**) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i8* @dma_direct_alloc(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i32 @debug_dma_alloc_coherent(%struct.device*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
