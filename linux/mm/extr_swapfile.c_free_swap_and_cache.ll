; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_free_swap_and_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_free_swap_and_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }

@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@TTRS_UNMAPPED = common dso_local global i32 0, align 4
@TTRS_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_swap_and_cache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @non_swap_entry(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.swap_info_struct* @_swap_info_get(i32 %11)
  store %struct.swap_info_struct* %12, %struct.swap_info_struct** %4, align 8
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %14 = icmp ne %struct.swap_info_struct* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call zeroext i8 @__swap_entry_free(%struct.swap_info_struct* %16, i32 %17, i32 1)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @swap_page_trans_huge_swapped(%struct.swap_info_struct* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @swp_offset(i32 %31)
  %33 = load i32, i32* @TTRS_UNMAPPED, align 4
  %34 = load i32, i32* @TTRS_FULL, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @__try_to_reclaim_swap(%struct.swap_info_struct* %30, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %24, %15
  br label %38

38:                                               ; preds = %37, %10
  %39 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %40 = icmp ne %struct.swap_info_struct* %39, null
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @non_swap_entry(i32) #1

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local zeroext i8 @__swap_entry_free(%struct.swap_info_struct*, i32, i32) #1

declare dso_local i32 @swap_page_trans_huge_swapped(%struct.swap_info_struct*, i32) #1

declare dso_local i32 @__try_to_reclaim_swap(%struct.swap_info_struct*, i32, i32) #1

declare dso_local i32 @swp_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
