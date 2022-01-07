; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_remap_vmalloc_range_partial.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_remap_vmalloc_range_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_struct = type { i32, i8* }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_USERMAP = common dso_local global i32 0, align 4
@VM_DMA_COHERENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remap_vmalloc_range_partial(%struct.vm_area_struct* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_struct*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @PAGE_ALIGNED(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @PAGE_ALIGNED(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %94

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = call %struct.vm_struct* @find_vm_area(i8* %27)
  store %struct.vm_struct* %28, %struct.vm_struct** %10, align 8
  %29 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %30 = icmp ne %struct.vm_struct* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %26
  %35 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %36 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VM_USERMAP, align 4
  %39 = load i32, i32* @VM_DMA_COHERENT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %94

46:                                               ; preds = %34
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %51 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.vm_struct*, %struct.vm_struct** %10, align 8
  %54 = call i32 @get_vm_area_size(%struct.vm_struct* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %52, i64 %55
  %57 = icmp ugt i8* %49, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %94

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i8*, i8** %8, align 8
  %64 = call %struct.page* @vmalloc_to_page(i8* %63)
  store %struct.page* %64, %struct.page** %11, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.page*, %struct.page** %11, align 8
  %68 = call i32 @vm_insert_page(%struct.vm_area_struct* %65, i64 %66, %struct.page* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %62
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr i8, i8* %78, i64 %77
  store i8* %79, i8** %8, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %9, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %62, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @VM_DONTEXPAND, align 4
  %88 = load i32, i32* @VM_DONTDUMP, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %86, %71, %58, %43, %31, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @PAGE_ALIGNED(i8*) #1

declare dso_local %struct.vm_struct* @find_vm_area(i8*) #1

declare dso_local i32 @get_vm_area_size(%struct.vm_struct*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
