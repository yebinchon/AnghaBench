; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_discard_swap_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_discard_swap_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }
%struct.swap_extent = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i32, i32)* @discard_swap_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_swap_cluster(%struct.swap_info_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.swap_extent* @offset_to_swap_extent(%struct.swap_info_struct* %11, i32 %12)
  store %struct.swap_extent* %13, %struct.swap_extent** %7, align 8
  br label %14

14:                                               ; preds = %62, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.swap_extent*, %struct.swap_extent** %7, align 8
  %20 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.swap_extent*, %struct.swap_extent** %7, align 8
  %24 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.swap_extent*, %struct.swap_extent** %7, align 8
  %29 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = sub nsw i32 %45, 9
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = sub nsw i32 %49, 9
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %54 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @GFP_NOIO, align 4
  %59 = call i64 @blkdev_issue_discard(i32 %55, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %65

62:                                               ; preds = %38
  %63 = load %struct.swap_extent*, %struct.swap_extent** %7, align 8
  %64 = call %struct.swap_extent* @next_se(%struct.swap_extent* %63)
  store %struct.swap_extent* %64, %struct.swap_extent** %7, align 8
  br label %14

65:                                               ; preds = %61, %14
  ret void
}

declare dso_local %struct.swap_extent* @offset_to_swap_extent(%struct.swap_info_struct*, i32) #1

declare dso_local i64 @blkdev_issue_discard(i32, i32, i32, i32, i32) #1

declare dso_local %struct.swap_extent* @next_se(%struct.swap_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
