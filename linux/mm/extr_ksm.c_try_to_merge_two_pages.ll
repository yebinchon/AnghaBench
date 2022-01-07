; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_two_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_two_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmap_item = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.rmap_item*, %struct.page*, %struct.rmap_item*, %struct.page*)* @try_to_merge_two_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @try_to_merge_two_pages(%struct.rmap_item* %0, %struct.page* %1, %struct.rmap_item* %2, %struct.page* %3) #0 {
  %5 = alloca %struct.rmap_item*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.rmap_item*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.rmap_item* %0, %struct.rmap_item** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.rmap_item* %2, %struct.rmap_item** %7, align 8
  store %struct.page* %3, %struct.page** %8, align 8
  %10 = load %struct.rmap_item*, %struct.rmap_item** %5, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i32 @try_to_merge_with_ksm_page(%struct.rmap_item* %10, %struct.page* %11, %struct.page* null)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load %struct.rmap_item*, %struct.rmap_item** %7, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @try_to_merge_with_ksm_page(%struct.rmap_item* %16, %struct.page* %17, %struct.page* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.rmap_item*, %struct.rmap_item** %5, align 8
  %24 = call i32 @break_cow(%struct.rmap_item* %23)
  br label %25

25:                                               ; preds = %22, %15
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %32

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %6, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi %struct.page* [ null, %29 ], [ %31, %30 ]
  ret %struct.page* %33
}

declare dso_local i32 @try_to_merge_with_ksm_page(%struct.rmap_item*, %struct.page*, %struct.page*) #1

declare dso_local i32 @break_cow(%struct.rmap_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
