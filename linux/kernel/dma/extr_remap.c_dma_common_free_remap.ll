; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_free_remap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_free_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64 }

@VM_DMA_COHERENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"trying to free invalid coherent area: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_common_free_remap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_struct*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.vm_struct* @find_vm_area(i8* %6)
  store %struct.vm_struct* %7, %struct.vm_struct** %5, align 8
  %8 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %9 = icmp ne %struct.vm_struct* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VM_DMA_COHERENT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %27

19:                                               ; preds = %10
  %20 = load i8*, i8** %3, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @PAGE_ALIGN(i64 %22)
  %24 = call i32 @unmap_kernel_range(i64 %21, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @vunmap(i8* %25)
  br label %27

27:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.vm_struct* @find_vm_area(i8*) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

declare dso_local i32 @unmap_kernel_range(i64, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @vunmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
