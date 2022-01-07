; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_prep_compound_gigantic_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_prep_compound_gigantic_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @prep_compound_gigantic_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_compound_gigantic_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i64 1
  store %struct.page* %11, %struct.page** %7, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @set_compound_order(%struct.page* %12, i32 %13)
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @__ClearPageReserved(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @__SetPageHead(%struct.page* %17)
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %31, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = call i32 @__ClearPageReserved(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @set_page_count(%struct.page* %26, i32 0)
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @set_compound_head(%struct.page* %28, %struct.page* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.page* @mem_map_next(%struct.page* %34, %struct.page* %35, i32 %36)
  store %struct.page* %37, %struct.page** %7, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @compound_mapcount_ptr(%struct.page* %39)
  %41 = call i32 @atomic_set(i32 %40, i32 -1)
  ret void
}

declare dso_local i32 @set_compound_order(%struct.page*, i32) #1

declare dso_local i32 @__ClearPageReserved(%struct.page*) #1

declare dso_local i32 @__SetPageHead(%struct.page*) #1

declare dso_local i32 @set_page_count(%struct.page*, i32) #1

declare dso_local i32 @set_compound_head(%struct.page*, %struct.page*) #1

declare dso_local %struct.page* @mem_map_next(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @atomic_set(i32, i32) #1

declare dso_local i32 @compound_mapcount_ptr(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
