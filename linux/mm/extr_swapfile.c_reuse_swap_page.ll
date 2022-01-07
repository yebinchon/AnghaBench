; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_reuse_swap_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_reuse_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.swap_info_struct = type { i32, i32 }

@SWP_STABLE_WRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuse_swap_page(%struct.page* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca %struct.swap_info_struct*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @VM_BUG_ON_PAGE(i32 %15, %struct.page* %16)
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @PageKsm(%struct.page* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @page_trans_huge_map_swapcount(%struct.page* %24, i32* %7, i32* %8)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i64 @PageSwapCache(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @PageTransCompound(%struct.page* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = call i32 @page_swapcount(%struct.page* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %48, %40
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = call i32 @PageWriteback(%struct.page* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call %struct.page* @compound_head(%struct.page* %58)
  store %struct.page* %59, %struct.page** %4, align 8
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i32 @delete_from_swap_cache(%struct.page* %60)
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @SetPageDirty(%struct.page* %62)
  br label %85

64:                                               ; preds = %53
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = call i32 @page_private(%struct.page* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.swap_info_struct* @swap_info_get(i32 %69)
  store %struct.swap_info_struct* %70, %struct.swap_info_struct** %10, align 8
  %71 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %72 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SWP_STABLE_WRITES, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %79 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %90

81:                                               ; preds = %64
  %82 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %83 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %57
  br label %86

86:                                               ; preds = %85, %48, %36, %33
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %87, 1
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %77, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @page_trans_huge_map_swapcount(%struct.page*, i32*, i32*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @page_swapcount(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @delete_from_swap_cache(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @swap_info_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
