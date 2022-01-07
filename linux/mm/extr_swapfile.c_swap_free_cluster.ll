; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_free_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_free_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i64 }
%struct.swap_cluster_info = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i64)* @swap_free_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_free_cluster(%struct.swap_info_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.swap_cluster_info*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %9 = mul i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %10, i64 %11)
  store %struct.swap_cluster_info* %12, %struct.swap_cluster_info** %6, align 8
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %19 = call i32 @memset(i64 %17, i32 0, i64 %18)
  %20 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %6, align 8
  %21 = call i32 @cluster_set_count_flag(%struct.swap_cluster_info* %20, i32 0, i32 0)
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @free_cluster(%struct.swap_info_struct* %22, i64 %23)
  %25 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %6, align 8
  %26 = call i32 @unlock_cluster(%struct.swap_cluster_info* %25)
  %27 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %30 = call i32 @swap_range_free(%struct.swap_info_struct* %27, i64 %28, i64 %29)
  ret void
}

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @cluster_set_count_flag(%struct.swap_cluster_info*, i32, i32) #1

declare dso_local i32 @free_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

declare dso_local i32 @swap_range_free(%struct.swap_info_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
