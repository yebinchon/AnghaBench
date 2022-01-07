; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_swapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_swapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32* }
%struct.swap_cluster_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i32)* @swap_swapcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_swapcount(%struct.swap_info_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.swap_cluster_info*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @swp_offset(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %10, i64 %11)
  store %struct.swap_cluster_info* %12, %struct.swap_cluster_info** %7, align 8
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @swap_count(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %21 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %22 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %20, %struct.swap_cluster_info* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

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
