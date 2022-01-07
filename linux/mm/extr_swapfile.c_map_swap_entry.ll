; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_map_swap_entry.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_map_swap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.swap_info_struct = type { %struct.block_device* }
%struct.swap_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.block_device**)* @map_swap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_swap_entry(i32 %0, %struct.block_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device**, align 8
  %5 = alloca %struct.swap_info_struct*, align 8
  %6 = alloca %struct.swap_extent*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.block_device** %1, %struct.block_device*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.swap_info_struct* @swp_swap_info(i32 %8)
  store %struct.swap_info_struct* %9, %struct.swap_info_struct** %5, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %11 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %10, i32 0, i32 0
  %12 = load %struct.block_device*, %struct.block_device** %11, align 8
  %13 = load %struct.block_device**, %struct.block_device*** %4, align 8
  store %struct.block_device* %12, %struct.block_device** %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @swp_offset(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.swap_extent* @offset_to_swap_extent(%struct.swap_info_struct* %16, i64 %17)
  store %struct.swap_extent* %18, %struct.swap_extent** %6, align 8
  %19 = load %struct.swap_extent*, %struct.swap_extent** %6, align 8
  %20 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.swap_extent*, %struct.swap_extent** %6, align 8
  %24 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = add nsw i64 %21, %26
  ret i64 %27
}

declare dso_local %struct.swap_info_struct* @swp_swap_info(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_extent* @offset_to_swap_extent(%struct.swap_info_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
