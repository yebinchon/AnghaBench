; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_find_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_find_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_struct = type { i64, %struct.page** }

@VM_DMA_COHERENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page** @dma_common_find_pages(i8* %0) #0 {
  %2 = alloca %struct.page**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vm_struct*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.vm_struct* @find_vm_area(i8* %5)
  store %struct.vm_struct* %6, %struct.vm_struct** %4, align 8
  %7 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %8 = icmp ne %struct.vm_struct* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VM_DMA_COHERENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store %struct.page** null, %struct.page*** %2, align 8
  br label %20

16:                                               ; preds = %9
  %17 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %17, i32 0, i32 1
  %19 = load %struct.page**, %struct.page*** %18, align 8
  store %struct.page** %19, %struct.page*** %2, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.page**, %struct.page*** %2, align 8
  ret %struct.page** %21
}

declare dso_local %struct.vm_struct* @find_vm_area(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
