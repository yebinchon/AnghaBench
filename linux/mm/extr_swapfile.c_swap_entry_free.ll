; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_entry_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_entry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8*, i32 }
%struct.swap_cluster_info = type { i32 }

@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i32)* @swap_entry_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_entry_free(%struct.swap_info_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_cluster_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @swp_offset(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %10, i64 %11)
  store %struct.swap_cluster_info* %12, %struct.swap_cluster_info** %5, align 8
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @VM_BUG_ON(i32 %24)
  %26 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %27 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %33 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @dec_cluster_info_page(%struct.swap_info_struct* %31, i32 %34, i64 %35)
  %37 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %38 = call i32 @unlock_cluster(%struct.swap_cluster_info* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mem_cgroup_uncharge_swap(i32 %39, i32 1)
  %41 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @swap_range_free(%struct.swap_info_struct* %41, i64 %42, i32 1)
  ret void
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @dec_cluster_info_page(%struct.swap_info_struct*, i32, i64) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

declare dso_local i32 @mem_cgroup_uncharge_swap(i32, i32) #1

declare dso_local i32 @swap_range_free(%struct.swap_info_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
