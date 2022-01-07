; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_vm_op_close.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_vm_op_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.hstate = type { i32 }
%struct.resv_map = type { i32 }
%struct.hugepage_subpool = type { i32 }

@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@resv_map_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @hugetlb_vm_op_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_vm_op_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.resv_map*, align 8
  %5 = alloca %struct.hugepage_subpool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %11 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %10)
  store %struct.hstate* %11, %struct.hstate** %3, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %13 = call %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %12)
  store %struct.resv_map* %13, %struct.resv_map** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %15 = call %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct* %14)
  store %struct.hugepage_subpool* %15, %struct.hugepage_subpool** %5, align 8
  %16 = load %struct.resv_map*, %struct.resv_map** %4, align 8
  %17 = icmp ne %struct.resv_map* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %20 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %21 = call i32 @is_vma_resv_set(%struct.vm_area_struct* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %1
  br label %59

24:                                               ; preds = %18
  %25 = load %struct.hstate*, %struct.hstate** %3, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @vma_hugecache_offset(%struct.hstate* %25, %struct.vm_area_struct* %26, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.hstate*, %struct.hstate** %3, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @vma_hugecache_offset(%struct.hstate* %31, %struct.vm_area_struct* %32, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %37, %38
  %40 = load %struct.resv_map*, %struct.resv_map** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @region_count(%struct.resv_map* %40, i64 %41, i64 %42)
  %44 = sub i64 %39, %43
  store i64 %44, i64* %6, align 8
  %45 = load %struct.resv_map*, %struct.resv_map** %4, align 8
  %46 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %45, i32 0, i32 0
  %47 = load i32, i32* @resv_map_release, align 4
  %48 = call i32 @kref_put(i32* %46, i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %24
  %52 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.hstate*, %struct.hstate** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 0, %56
  %58 = call i32 @hugetlb_acct_memory(%struct.hstate* %55, i64 %57)
  br label %59

59:                                               ; preds = %23, %51, %24
  ret void
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.resv_map* @vma_resv_map(%struct.vm_area_struct*) #1

declare dso_local %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local i64 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i32) #1

declare dso_local i64 @region_count(%struct.resv_map*, i64, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
