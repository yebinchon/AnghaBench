; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32 (%struct.page*)*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.address_space* @page_mapping(%struct.page* %6)
  store %struct.address_space* %7, %struct.address_space** %4, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call %struct.page* @compound_head(%struct.page* %8)
  store %struct.page* %9, %struct.page** %3, align 8
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = call i64 @likely(%struct.address_space* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.page*)*, i32 (%struct.page*)** %17, align 8
  store i32 (%struct.page*)* %18, i32 (%struct.page*)** %5, align 8
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i64 @PageReclaim(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @ClearPageReclaim(%struct.page* %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32 (%struct.page*)*, i32 (%struct.page*)** %5, align 8
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i32 %26(%struct.page* %27)
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @PageDirty(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @TestSetPageDirty(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %40

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %29
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @likely(%struct.address_space*) #1

declare dso_local i64 @PageReclaim(%struct.page*) #1

declare dso_local i32 @ClearPageReclaim(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
