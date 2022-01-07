; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_get_sgtable_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_get_sgtable_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32 }
%struct.dma_map_ops = type { i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)* }
%struct.device.0 = type opaque

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_get_sgtable_attrs(%struct.device* %0, %struct.sg_table* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.sg_table* %1, %struct.sg_table** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %15)
  store %struct.dma_map_ops* %16, %struct.dma_map_ops** %14, align 8
  %17 = load %struct.dma_map_ops*, %struct.dma_map_ops** %14, align 8
  %18 = call i64 @dma_is_direct(%struct.dma_map_ops* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @dma_common_get_sgtable(%struct.device* %21, %struct.sg_table* %22, i8* %23, i32 %24, i64 %25, i64 %26)
  store i32 %27, i32* %7, align 4
  br label %48

28:                                               ; preds = %6
  %29 = load %struct.dma_map_ops*, %struct.dma_map_ops** %14, align 8
  %30 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)*, i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)** %30, align 8
  %32 = icmp ne i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load %struct.dma_map_ops*, %struct.dma_map_ops** %14, align 8
  %38 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)*, i32 (%struct.device.0*, %struct.sg_table*, i8*, i32, i64, i64)** %38, align 8
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = bitcast %struct.device* %40 to %struct.device.0*
  %42 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 %39(%struct.device.0* %41, %struct.sg_table* %42, i8* %43, i32 %44, i64 %45, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %36, %33, %20
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i64 @dma_is_direct(%struct.dma_map_ops*) #1

declare dso_local i32 @dma_common_get_sgtable(%struct.device*, %struct.sg_table*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
