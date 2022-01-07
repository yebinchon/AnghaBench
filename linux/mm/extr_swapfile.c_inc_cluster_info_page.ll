; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_inc_cluster_info_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_inc_cluster_info_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }
%struct.swap_cluster_info = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, %struct.swap_cluster_info*, i64)* @inc_cluster_info_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_cluster_info_page(%struct.swap_info_struct* %0, %struct.swap_cluster_info* %1, i64 %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.swap_cluster_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store %struct.swap_cluster_info* %1, %struct.swap_cluster_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %10 = udiv i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %12 = icmp ne %struct.swap_cluster_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %15, i64 %16
  %18 = call i64 @cluster_is_free(%struct.swap_cluster_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @alloc_cluster(%struct.swap_info_struct* %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %25, i64 %26
  %28 = call i32 @cluster_count(%struct.swap_cluster_info* %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %31 = icmp uge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @VM_BUG_ON(i32 %32)
  %34 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %34, i64 %35
  %37 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %37, i64 %38
  %40 = call i32 @cluster_count(%struct.swap_cluster_info* %39)
  %41 = add nsw i32 %40, 1
  %42 = call i32 @cluster_set_count(%struct.swap_cluster_info* %36, i32 %41)
  br label %43

43:                                               ; preds = %24, %13
  ret void
}

declare dso_local i64 @cluster_is_free(%struct.swap_cluster_info*) #1

declare dso_local i32 @alloc_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @cluster_count(%struct.swap_cluster_info*) #1

declare dso_local i32 @cluster_set_count(%struct.swap_cluster_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
