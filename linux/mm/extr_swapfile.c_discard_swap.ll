; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_discard_swap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_discard_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }
%struct.swap_extent = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*)* @discard_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discard_swap(%struct.swap_info_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca %struct.swap_extent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %9 = call %struct.swap_extent* @first_se(%struct.swap_info_struct* %8)
  store %struct.swap_extent* %9, %struct.swap_extent** %4, align 8
  %10 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %11 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = sub nsw i32 %14, 9
  %16 = shl i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %18 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = sub nsw i32 %22, 9
  %24 = shl i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %29 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @blkdev_issue_discard(i32 %30, i32 %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %78

39:                                               ; preds = %27
  %40 = call i32 (...) @cond_resched()
  br label %41

41:                                               ; preds = %39, %1
  %42 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %43 = call %struct.swap_extent* @next_se(%struct.swap_extent* %42)
  store %struct.swap_extent* %43, %struct.swap_extent** %4, align 8
  br label %44

44:                                               ; preds = %73, %41
  %45 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %46 = icmp ne %struct.swap_extent* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %49 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = sub nsw i32 %51, 9
  %53 = shl i32 %50, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %55 = getelementptr inbounds %struct.swap_extent, %struct.swap_extent* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = sub nsw i32 %58, 9
  %60 = shl i32 %57, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %62 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @blkdev_issue_discard(i32 %63, i32 %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  br label %76

71:                                               ; preds = %47
  %72 = call i32 (...) @cond_resched()
  br label %73

73:                                               ; preds = %71
  %74 = load %struct.swap_extent*, %struct.swap_extent** %4, align 8
  %75 = call %struct.swap_extent* @next_se(%struct.swap_extent* %74)
  store %struct.swap_extent* %75, %struct.swap_extent** %4, align 8
  br label %44

76:                                               ; preds = %70, %44
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %37
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.swap_extent* @first_se(%struct.swap_info_struct*) #1

declare dso_local i32 @blkdev_issue_discard(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.swap_extent* @next_se(%struct.swap_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
