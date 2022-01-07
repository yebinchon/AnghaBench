; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c___read_swap_cache_async.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c___read_swap_cache_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.swap_info_struct = type { i32 }

@swap_slot_cache_enabled = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @__read_swap_cache_async(i32 %0, i32 %1, %struct.vm_area_struct* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.swap_info_struct*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store %struct.page* null, %struct.page** %13, align 8
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %98, %5
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.swap_info_struct* @get_swap_device(i32 %18)
  store %struct.swap_info_struct* %19, %struct.swap_info_struct** %14, align 8
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %14, align 8
  %21 = icmp ne %struct.swap_info_struct* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %103

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @swap_address_space(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @swp_offset(i32 %26)
  %28 = call %struct.page* @find_get_page(i32 %25, i32 %27)
  store %struct.page* %28, %struct.page** %12, align 8
  %29 = load %struct.swap_info_struct*, %struct.swap_info_struct** %14, align 8
  %30 = call i32 @put_swap_device(%struct.swap_info_struct* %29)
  %31 = load %struct.page*, %struct.page** %12, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %103

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @__swp_swapcount(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @swap_slot_cache_enabled, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %103

42:                                               ; preds = %38, %34
  %43 = load %struct.page*, %struct.page** %13, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call %struct.page* @alloc_page_vma(i32 %46, %struct.vm_area_struct* %47, i64 %48)
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %103

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @swapcache_prepare(i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (...) @cond_resched()
  br label %98

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %103

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.page*, %struct.page** %13, align 8
  %70 = call i32 @__SetPageLocked(%struct.page* %69)
  %71 = load %struct.page*, %struct.page** %13, align 8
  %72 = call i32 @__SetPageSwapBacked(%struct.page* %71)
  %73 = load %struct.page*, %struct.page** %13, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @add_to_swap_cache(%struct.page* %73, i32 %74, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = call i32 @SetPageWorkingset(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %13, align 8
  %89 = call i32 @lru_cache_add_anon(%struct.page* %88)
  %90 = load i32*, i32** %11, align 8
  store i32 1, i32* %90, align 4
  %91 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %91, %struct.page** %6, align 8
  br label %111

92:                                               ; preds = %68
  %93 = load %struct.page*, %struct.page** %13, align 8
  %94 = call i32 @__ClearPageLocked(%struct.page* %93)
  %95 = load %struct.page*, %struct.page** %13, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @put_swap_page(%struct.page* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %61
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %17, label %103

103:                                              ; preds = %98, %66, %52, %41, %33, %22
  %104 = load %struct.page*, %struct.page** %13, align 8
  %105 = icmp ne %struct.page* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.page*, %struct.page** %13, align 8
  %108 = call i32 @put_page(%struct.page* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %110, %struct.page** %6, align 8
  br label %111

111:                                              ; preds = %109, %85
  %112 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %112
}

declare dso_local %struct.swap_info_struct* @get_swap_device(i32) #1

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i32 @swap_address_space(i32) #1

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i32 @put_swap_device(%struct.swap_info_struct*) #1

declare dso_local i32 @__swp_swapcount(i32) #1

declare dso_local %struct.page* @alloc_page_vma(i32, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @swapcache_prepare(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @__SetPageLocked(%struct.page*) #1

declare dso_local i32 @__SetPageSwapBacked(%struct.page*) #1

declare dso_local i32 @add_to_swap_cache(%struct.page*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SetPageWorkingset(%struct.page*) #1

declare dso_local i32 @lru_cache_add_anon(%struct.page*) #1

declare dso_local i32 @__ClearPageLocked(%struct.page*) #1

declare dso_local i32 @put_swap_page(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
