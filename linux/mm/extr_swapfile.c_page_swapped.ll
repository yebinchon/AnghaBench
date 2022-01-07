; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_swapped.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_swapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.swap_info_struct = type { i32 }

@CONFIG_THP_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @page_swapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_swapped(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.swap_info_struct*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load i32, i32* @CONFIG_THP_SWAP, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PageTransCompound(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9, %1
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i64 @page_swapcount(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %9
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call %struct.page* @compound_head(%struct.page* %23)
  store %struct.page* %24, %struct.page** %3, align 8
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @page_private(%struct.page* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.swap_info_struct* @_swap_info_get(i32 %29)
  store %struct.swap_info_struct* %30, %struct.swap_info_struct** %5, align 8
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %32 = icmp ne %struct.swap_info_struct* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @swap_page_trans_huge_swapped(%struct.swap_info_struct* %34, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i64 @page_swapcount(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local i32 @swap_page_trans_huge_swapped(%struct.swap_info_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
