; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c___dma_common_pages_remap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c___dma_common_pages_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }
%struct.page = type { i32 }

@VM_DMA_COHERENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_struct* (%struct.page**, i64, i32, i8*)* @__dma_common_pages_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_struct* @__dma_common_pages_remap(%struct.page** %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.vm_struct*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vm_struct*, align 8
  store %struct.page** %0, %struct.page*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* @VM_DMA_COHERENT, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = call %struct.vm_struct* @get_vm_area_caller(i64 %11, i32 %12, i8* %13)
  store %struct.vm_struct* %14, %struct.vm_struct** %10, align 8
  %15 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %16 = icmp ne %struct.vm_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.vm_struct* null, %struct.vm_struct** %5, align 8
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.page**, %struct.page*** %6, align 8
  %22 = call i64 @map_vm_area(%struct.vm_struct* %19, i32 %20, %struct.page** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %26 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vunmap(i32 %27)
  store %struct.vm_struct* null, %struct.vm_struct** %5, align 8
  br label %31

29:                                               ; preds = %18
  %30 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  store %struct.vm_struct* %30, %struct.vm_struct** %5, align 8
  br label %31

31:                                               ; preds = %29, %24, %17
  %32 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  ret %struct.vm_struct* %32
}

declare dso_local %struct.vm_struct* @get_vm_area_caller(i64, i32, i8*) #1

declare dso_local i64 @map_vm_area(%struct.vm_struct*, i32, %struct.page**) #1

declare dso_local i32 @vunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
