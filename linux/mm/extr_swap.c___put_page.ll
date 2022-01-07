; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c___put_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c___put_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__put_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i64 @is_zone_device_page(%struct.page* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @put_dev_pagemap(i32 %9)
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @PageCompound(%struct.page* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @__put_compound_page(%struct.page* %17)
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @__put_single_page(%struct.page* %20)
  br label %22

22:                                               ; preds = %6, %19, %16
  ret void
}

declare dso_local i64 @is_zone_device_page(%struct.page*) #1

declare dso_local i32 @put_dev_pagemap(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @__put_compound_page(%struct.page*) #1

declare dso_local i32 @__put_single_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
