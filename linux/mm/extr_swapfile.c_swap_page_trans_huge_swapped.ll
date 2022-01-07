; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_page_trans_huge_swapped.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_page_trans_huge_swapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8* }
%struct.swap_cluster_info = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i32)* @swap_page_trans_huge_swapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_page_trans_huge_swapped(%struct.swap_info_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_cluster_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %12 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @swp_offset(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %18 = call i64 @round_down(i64 %16, i32 %17)
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %19, i64 %20)
  store %struct.swap_cluster_info* %21, %struct.swap_cluster_info** %5, align 8
  %22 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %23 = icmp ne %struct.swap_cluster_info* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %26 = call i32 @cluster_is_huge(%struct.swap_cluster_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @swap_count(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %58

37:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @swap_count(i8 zeroext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %38

57:                                               ; preds = %52, %38
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %60 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %61 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %59, %struct.swap_cluster_info* %60)
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @cluster_is_huge(%struct.swap_cluster_info*) #1

declare dso_local i64 @swap_count(i8 zeroext) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
