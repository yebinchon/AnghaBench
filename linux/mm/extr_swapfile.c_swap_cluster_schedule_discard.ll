; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_cluster_schedule_discard.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_cluster_schedule_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32, i32, i64 }

@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@SWAP_MAP_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i32)* @swap_cluster_schedule_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_cluster_schedule_discard(%struct.swap_info_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %6 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %10 = mul i32 %8, %9
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %7, %11
  %13 = load i32, i32* @SWAP_MAP_BAD, align 4
  %14 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %15 = call i32 @memset(i64 %12, i32 %13, i32 %14)
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %17 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %16, i32 0, i32 2
  %18 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %19 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @cluster_list_add_tail(i32* %17, i32 %20, i32 %21)
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %24 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %23, i32 0, i32 0
  %25 = call i32 @schedule_work(i32* %24)
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cluster_list_add_tail(i32*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
