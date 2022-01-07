; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.vm_unmapped_area_info, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @arch_get_mmap_end(i64 %20)
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* @mmap_min_addr, align 8
  %25 = sub i64 %23, %24
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i64, i64* @ENOMEM, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %6, align 8
  br label %88

30:                                               ; preds = %5
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @MAP_FIXED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %6, align 8
  br label %88

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @PAGE_ALIGN(i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* %43, i64 %44, %struct.vm_area_struct** %14)
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %13, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @mmap_min_addr, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %57 = icmp ne %struct.vm_area_struct* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %63 = call i64 @vm_start_gap(%struct.vm_area_struct* %62)
  %64 = icmp ule i64 %61, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %58, %55
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %67 = icmp ne %struct.vm_area_struct* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %71 = call i64 @vm_end_gap(%struct.vm_area_struct* %70)
  %72 = icmp uge i64 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %65
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %6, align 8
  br label %88

75:                                               ; preds = %68, %58, %51, %40
  br label %76

76:                                               ; preds = %75, %37
  %77 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %81 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  %84 = load i64, i64* %16, align 8
  %85 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %76, %73, %35, %27
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i64 @arch_get_mmap_end(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_end_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
