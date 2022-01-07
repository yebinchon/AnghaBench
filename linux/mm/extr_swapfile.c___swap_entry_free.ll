; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_entry_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_entry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }
%struct.swap_cluster_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.swap_info_struct*, i32, i8)* @__swap_entry_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @__swap_entry_free(%struct.swap_info_struct* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.swap_cluster_info*, align 8
  %8 = alloca i64, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @swp_offset(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %11, i64 %12)
  store %struct.swap_cluster_info* %13, %struct.swap_cluster_info** %7, align 8
  %14 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i8, i8* %6, align 1
  %17 = call zeroext i8 @__swap_entry_free_locked(%struct.swap_info_struct* %14, i64 %15, i8 zeroext %16)
  store i8 %17, i8* %6, align 1
  %18 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %19 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %20 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %18, %struct.swap_cluster_info* %19)
  %21 = load i8, i8* %6, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @free_swap_slot(i32 %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i8, i8* %6, align 1
  ret i8 %27
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local zeroext i8 @__swap_entry_free_locked(%struct.swap_info_struct*, i64, i8 zeroext) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

declare dso_local i32 @free_swap_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
