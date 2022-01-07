; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_vma_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_vma_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_fault = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }
%struct.blk_plug = type { i32 }
%struct.vma_swap_readahead = type { i32, i32, i32, i32*, i32 }

@SWAP_RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.vm_fault*)* @swap_vma_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @swap_vma_readahead(i32 %0, i32 %1, %struct.vm_fault* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_fault*, align 8
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vma_swap_readahead, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.vm_fault* %2, %struct.vm_fault** %6, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 1
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %8, align 8
  %19 = bitcast %struct.vma_swap_readahead* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %21 = call i32 @swap_ra_info(%struct.vm_fault* %20, %struct.vma_swap_readahead* %15)
  %22 = getelementptr inbounds %struct.vma_swap_readahead, %struct.vma_swap_readahead* %15, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %93

26:                                               ; preds = %3
  %27 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  store i32 0, i32* %13, align 4
  %28 = getelementptr inbounds %struct.vma_swap_readahead, %struct.vma_swap_readahead* %15, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  br label %30

30:                                               ; preds = %85, %26
  %31 = load i32, i32* %13, align 4
  %32 = getelementptr inbounds %struct.vma_swap_readahead, %struct.vma_swap_readahead* %15, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @pte_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %85

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @pte_present(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %85

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @pte_to_swp_entry(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @non_swap_entry(i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %85

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %59 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %60 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.page* @__read_swap_cache_async(i32 %56, i32 %57, %struct.vm_area_struct* %58, i32 %61, i32* %14)
  store %struct.page* %62, %struct.page** %9, align 8
  %63 = load %struct.page*, %struct.page** %9, align 8
  %64 = icmp ne %struct.page* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %85

66:                                               ; preds = %55
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.page*, %struct.page** %9, align 8
  %71 = call i32 @swap_readpage(%struct.page* %70, i32 0)
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds %struct.vma_swap_readahead, %struct.vma_swap_readahead* %15, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = call i32 @SetPageReadahead(%struct.page* %77)
  %79 = load i32, i32* @SWAP_RA, align 4
  %80 = call i32 @count_vm_event(i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.page*, %struct.page** %9, align 8
  %84 = call i32 @put_page(%struct.page* %83)
  br label %85

85:                                               ; preds = %82, %65, %54, %46, %41
  %86 = load i32, i32* %13, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %10, align 8
  br label %30

90:                                               ; preds = %30
  %91 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  %92 = call i32 (...) @lru_add_drain()
  br label %93

93:                                               ; preds = %90, %25
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %97 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.vma_swap_readahead, %struct.vma_swap_readahead* %15, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call %struct.page* @read_swap_cache_async(i32 %94, i32 %95, %struct.vm_area_struct* %96, i32 %99, i32 %103)
  ret %struct.page* %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @swap_ra_info(%struct.vm_fault*, %struct.vma_swap_readahead*) #2

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #2

declare dso_local i64 @pte_none(i32) #2

declare dso_local i64 @pte_present(i32) #2

declare dso_local i32 @pte_to_swp_entry(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @non_swap_entry(i32) #2

declare dso_local %struct.page* @__read_swap_cache_async(i32, i32, %struct.vm_area_struct*, i32, i32*) #2

declare dso_local i32 @swap_readpage(%struct.page*, i32) #2

declare dso_local i32 @SetPageReadahead(%struct.page*) #2

declare dso_local i32 @count_vm_event(i32) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #2

declare dso_local i32 @lru_add_drain(...) #2

declare dso_local %struct.page* @read_swap_cache_async(i32, i32, %struct.vm_area_struct*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
