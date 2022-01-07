; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_free_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_free_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, %struct.swap_cluster_info* }
%struct.swap_cluster_info = type { i32 }

@SWP_WRITEOK = common dso_local global i32 0, align 4
@SWP_PAGE_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i64)* @free_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cluster(%struct.swap_info_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.swap_cluster_info*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %7 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %6, i32 0, i32 1
  %8 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %8, i64 %9
  store %struct.swap_cluster_info* %10, %struct.swap_cluster_info** %5, align 8
  %11 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %12 = call i64 @cluster_count(%struct.swap_cluster_info* %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @VM_BUG_ON(i32 %14)
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %17 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SWP_WRITEOK, align 4
  %20 = load i32, i32* @SWP_PAGE_DISCARD, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @SWP_WRITEOK, align 4
  %24 = load i32, i32* @SWP_PAGE_DISCARD, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @swap_cluster_schedule_discard(%struct.swap_info_struct* %28, i64 %29)
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @__free_cluster(%struct.swap_info_struct* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @cluster_count(%struct.swap_cluster_info*) #1

declare dso_local i32 @swap_cluster_schedule_discard(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @__free_cluster(%struct.swap_info_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
