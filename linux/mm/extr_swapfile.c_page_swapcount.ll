; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_swapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_swapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.swap_info_struct = type { i32* }
%struct.swap_cluster_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_swapcount(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.swap_cluster_info*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i32 @page_private(%struct.page* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.swap_info_struct* @_swap_info_get(i32 %12)
  store %struct.swap_info_struct* %13, %struct.swap_info_struct** %4, align 8
  %14 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %15 = icmp ne %struct.swap_info_struct* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @swp_offset(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %20, i64 %21)
  store %struct.swap_cluster_info* %22, %struct.swap_cluster_info** %5, align 8
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %24 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @swap_count(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %31 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %32 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %30, %struct.swap_cluster_info* %31)
  br label %33

33:                                               ; preds = %16, %1
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @swap_count(i32) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
