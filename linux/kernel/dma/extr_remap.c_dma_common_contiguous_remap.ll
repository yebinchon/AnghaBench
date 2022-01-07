; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_contiguous_remap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_remap.c_dma_common_contiguous_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_struct = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_common_contiguous_remap(%struct.page* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca %struct.vm_struct*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @get_order(i64 %13)
  %15 = zext i32 %14 to i64
  %16 = shl i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page** @kmalloc(i32 %17, i32 %18)
  store %struct.page** %19, %struct.page*** %11, align 8
  %20 = load %struct.page**, %struct.page*** %11, align 8
  %21 = icmp ne %struct.page** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %57

23:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.page* @nth_page(%struct.page* %32, i32 %33)
  %35 = load %struct.page**, %struct.page*** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  store %struct.page* %34, %struct.page** %38, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.page**, %struct.page*** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call %struct.vm_struct* @__dma_common_pages_remap(%struct.page** %43, i64 %44, i32 %45, i8* %46)
  store %struct.vm_struct* %47, %struct.vm_struct** %12, align 8
  %48 = load %struct.page**, %struct.page*** %11, align 8
  %49 = call i32 @kfree(%struct.page** %48)
  %50 = load %struct.vm_struct*, %struct.vm_struct** %12, align 8
  %51 = icmp ne %struct.vm_struct* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.vm_struct*, %struct.vm_struct** %12, align 8
  %55 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %53, %52, %22
  %58 = load i8*, i8** %5, align 8
  ret i8* %58
}

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local %struct.vm_struct* @__dma_common_pages_remap(%struct.page**, i64, i32, i8*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
