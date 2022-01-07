; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___try_to_reclaim_swap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___try_to_reclaim_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }
%struct.page = type { i32 }

@TTRS_ANYWAY = common dso_local global i64 0, align 8
@TTRS_UNMAPPED = common dso_local global i64 0, align 8
@TTRS_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i64, i64)* @__try_to_reclaim_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__try_to_reclaim_swap(%struct.swap_info_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_info_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %12 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @swp_entry(i32 %13, i64 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @swap_address_space(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.page* @find_get_page(i32 %17, i64 %18)
  store %struct.page* %19, %struct.page** %9, align 8
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.page*, %struct.page** %9, align 8
  %25 = call i64 @trylock_page(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @TTRS_ANYWAY, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @TTRS_UNMAPPED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i32 @page_mapped(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %32
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @TTRS_FULL, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.page*, %struct.page** %9, align 8
  %48 = call i64 @mem_cgroup_swap_full(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %37, %27
  %51 = load %struct.page*, %struct.page** %9, align 8
  %52 = call i32 @try_to_free_swap(%struct.page* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call i32 @unlock_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %23
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i32 @put_page(%struct.page* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @swp_entry(i32, i64) #1

declare dso_local %struct.page* @find_get_page(i32, i64) #1

declare dso_local i32 @swap_address_space(i32) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i64 @mem_cgroup_swap_full(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
