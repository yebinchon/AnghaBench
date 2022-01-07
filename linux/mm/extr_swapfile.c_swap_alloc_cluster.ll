; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_alloc_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_alloc_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8*, i32, i32 }
%struct.swap_cluster_info = type { i32 }

@CONFIG_THP_SWAP = common dso_local global i32 0, align 4
@SWAPFILE_CLUSTER = common dso_local global i64 0, align 8
@CLUSTER_FLAG_HUGE = common dso_local global i32 0, align 4
@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i32*)* @swap_alloc_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_alloc_cluster(%struct.swap_info_struct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.swap_cluster_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @CONFIG_THP_SWAP, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @VM_WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %18 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %17, i32 0, i32 2
  %19 = call i64 @cluster_list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %69

22:                                               ; preds = %16
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %24 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %23, i32 0, i32 2
  %25 = call i64 @cluster_list_first(i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %28 = mul i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %29, i64 %30)
  store %struct.swap_cluster_info* %31, %struct.swap_cluster_info** %7, align 8
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @alloc_cluster(%struct.swap_info_struct* %32, i64 %33)
  %35 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %36 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %37 = load i32, i32* @CLUSTER_FLAG_HUGE, align 4
  %38 = call i32 @cluster_set_count_flag(%struct.swap_cluster_info* %35, i64 %36, i32 %37)
  %39 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %40 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %53, %22
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 %49, i8* %52, align 1
  br label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %44

56:                                               ; preds = %44
  %57 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %58 = call i32 @unlock_cluster(%struct.swap_cluster_info* %57)
  %59 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %62 = call i32 @swap_range_alloc(%struct.swap_info_struct* %59, i64 %60, i64 %61)
  %63 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %64 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @swp_entry(i32 %65, i64 %66)
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %56, %21, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @VM_WARN_ON_ONCE(i32) #1

declare dso_local i64 @cluster_list_empty(i32*) #1

declare dso_local i64 @cluster_list_first(i32*) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @alloc_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @cluster_set_count_flag(%struct.swap_cluster_info*, i64, i32) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

declare dso_local i32 @swap_range_alloc(%struct.swap_info_struct*, i64, i64) #1

declare dso_local i32 @swp_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
