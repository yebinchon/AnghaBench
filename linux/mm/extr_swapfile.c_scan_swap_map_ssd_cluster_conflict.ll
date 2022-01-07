; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_scan_swap_map_ssd_cluster_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_scan_swap_map_ssd_cluster_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32*, i32 }
%struct.percpu_cluster = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i64)* @scan_swap_map_ssd_cluster_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_swap_map_ssd_cluster_conflict(%struct.swap_info_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.percpu_cluster*, align 8
  %7 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %9 = load i64, i64* %5, align 8
  %10 = udiv i64 %9, %8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %12 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %11, i32 0, i32 2
  %13 = call i32 @cluster_list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %18 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %17, i32 0, i32 2
  %19 = call i64 @cluster_list_first(i32* %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %23 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i64 @cluster_is_free(i32* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %21, %15, %2
  %30 = phi i1 [ false, %15 ], [ false, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %37 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.percpu_cluster* @this_cpu_ptr(i32 %38)
  store %struct.percpu_cluster* %39, %struct.percpu_cluster** %6, align 8
  %40 = load %struct.percpu_cluster*, %struct.percpu_cluster** %6, align 8
  %41 = getelementptr inbounds %struct.percpu_cluster, %struct.percpu_cluster* %40, i32 0, i32 0
  %42 = call i32 @cluster_set_null(i32* %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @cluster_list_empty(i32*) #1

declare dso_local i64 @cluster_list_first(i32*) #1

declare dso_local i64 @cluster_is_free(i32*) #1

declare dso_local %struct.percpu_cluster* @this_cpu_ptr(i32) #1

declare dso_local i32 @cluster_set_null(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
