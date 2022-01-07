; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___vma_reservation_common.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___vma_reservation_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.resv_map = type { i32 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hstate*, %struct.vm_area_struct*, i64, i32)* @__vma_reservation_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__vma_reservation_common(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resv_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hstate* %0, %struct.hstate** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = call %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %13)
  store %struct.resv_map* %14, %struct.resv_map** %10, align 8
  %15 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %16 = icmp ne %struct.resv_map* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i64 1, i64* %5, align 8
  br label %99

18:                                               ; preds = %4
  %19 = load %struct.hstate*, %struct.hstate** %6, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @vma_hugecache_offset(%struct.hstate* %19, %struct.vm_area_struct* %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %67 [
    i32 128, label %24
    i32 130, label %30
    i32 129, label %36
    i32 131, label %42
  ]

24:                                               ; preds = %18
  %25 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i64 @region_chg(%struct.resv_map* %25, i32 %26, i32 %28)
  store i64 %29, i64* %12, align 8
  br label %69

30:                                               ; preds = %18
  %31 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i64 @region_add(%struct.resv_map* %31, i32 %32, i32 %34)
  store i64 %35, i64* %12, align 8
  br label %69

36:                                               ; preds = %18
  %37 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @region_abort(%struct.resv_map* %37, i32 %38, i32 %40)
  store i64 0, i64* %12, align 8
  br label %69

42:                                               ; preds = %18
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_MAYSHARE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i64 @region_add(%struct.resv_map* %50, i32 %51, i32 %53)
  store i64 %54, i64* %12, align 8
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @region_abort(%struct.resv_map* %56, i32 %57, i32 %59)
  %61 = load %struct.resv_map*, %struct.resv_map** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i64 @region_del(%struct.resv_map* %61, i32 %62, i32 %64)
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %55, %49
  br label %69

67:                                               ; preds = %18
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %66, %36, %30, %24
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VM_MAYSHARE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %5, align 8
  br label %99

78:                                               ; preds = %69
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %80 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %81 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i64, i64* %12, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i64 0, i64* %5, align 8
  br label %99

90:                                               ; preds = %86
  store i64 1, i64* %5, align 8
  br label %99

91:                                               ; preds = %83, %78
  %92 = load i64, i64* %12, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  br label %97

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i64 [ %95, %94 ], [ 0, %96 ]
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %90, %89, %76, %17
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local %struct.resv_map* @vma_resv_map(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @region_chg(%struct.resv_map*, i32, i32) #1

declare dso_local i64 @region_add(%struct.resv_map*, i32, i32) #1

declare dso_local i32 @region_abort(%struct.resv_map*, i32, i32) #1

declare dso_local i64 @region_del(%struct.resv_map*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
