; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_uring_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_uring_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.io_ring_ctx* }
%struct.io_ring_ctx = type { i8*, i8* }
%struct.vm_area_struct = type { i64, i64, i32, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @io_uring_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_uring_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.io_ring_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %26, align 8
  store %struct.io_ring_ctx* %27, %struct.io_ring_ctx** %8, align 8
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %37 [
    i32 128, label %29
    i32 130, label %29
    i32 129, label %33
  ]

29:                                               ; preds = %2, %2
  %30 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %33, %29
  %41 = load i8*, i8** %11, align 8
  %42 = call %struct.page* @virt_to_head_page(i8* %41)
  store %struct.page* %42, %struct.page** %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = call i64 @page_size(%struct.page* %44)
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %40
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @virt_to_phys(i8* %51)
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %9, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @remap_pfn_range(%struct.vm_area_struct* %56, i64 %59, i64 %60, i64 %61, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %50, %47, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i64 @page_size(%struct.page*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
