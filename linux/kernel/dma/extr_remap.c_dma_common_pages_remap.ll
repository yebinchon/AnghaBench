; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_pages_remap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_pages_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_struct = type { i8*, %struct.page** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_common_pages_remap(%struct.page** %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vm_struct*, align 8
  store %struct.page** %0, %struct.page*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.page**, %struct.page*** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call %struct.vm_struct* @__dma_common_pages_remap(%struct.page** %11, i64 %12, i32 %13, i8* %14)
  store %struct.vm_struct* %15, %struct.vm_struct** %10, align 8
  %16 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %17 = icmp ne %struct.vm_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.page**, %struct.page*** %6, align 8
  %21 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %22 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %21, i32 0, i32 1
  store %struct.page** %20, %struct.page*** %22, align 8
  %23 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %24 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i8*, i8** %5, align 8
  ret i8* %27
}

declare dso_local %struct.vm_struct* @__dma_common_pages_remap(%struct.page**, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
