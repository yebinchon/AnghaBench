; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_do_scheduled_discard.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_do_scheduled_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i64, i32, i32, %struct.swap_cluster_info* }
%struct.swap_cluster_info = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*)* @swap_do_scheduled_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_do_scheduled_discard(%struct.swap_info_struct* %0) #0 {
  %2 = alloca %struct.swap_info_struct*, align 8
  %3 = alloca %struct.swap_cluster_info*, align 8
  %4 = alloca %struct.swap_cluster_info*, align 8
  %5 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %2, align 8
  %6 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %7 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %6, i32 0, i32 3
  %8 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  store %struct.swap_cluster_info* %8, %struct.swap_cluster_info** %3, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %11 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %10, i32 0, i32 2
  %12 = call i32 @cluster_list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %17 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %16, i32 0, i32 2
  %18 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %3, align 8
  %19 = call i32 @cluster_list_del_first(i32* %17, %struct.swap_cluster_info* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %21 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %26 = mul i32 %24, %25
  %27 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %28 = call i32 @discard_swap_cluster(%struct.swap_info_struct* %23, i32 %26, i32 %27)
  %29 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %30 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %35 = mul i32 %33, %34
  %36 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %32, i32 %35)
  store %struct.swap_cluster_info* %36, %struct.swap_cluster_info** %4, align 8
  %37 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @__free_cluster(%struct.swap_info_struct* %37, i32 %38)
  %40 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %41 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %45 = mul i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %49 = call i32 @memset(i64 %47, i32 0, i32 %48)
  %50 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %4, align 8
  %51 = call i32 @unlock_cluster(%struct.swap_cluster_info* %50)
  br label %9

52:                                               ; preds = %9
  ret void
}

declare dso_local i32 @cluster_list_empty(i32*) #1

declare dso_local i32 @cluster_list_del_first(i32*, %struct.swap_cluster_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @discard_swap_cluster(%struct.swap_info_struct*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i32) #1

declare dso_local i32 @__free_cluster(%struct.swap_info_struct*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
