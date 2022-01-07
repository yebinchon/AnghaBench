; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_add_to_page_cache_lru.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_add_to_page_cache_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@__GFP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_page_cache_lru(%struct.page* %0, %struct.address_space* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i32 @__SetPageLocked(%struct.page* %11)
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @__add_to_page_cache_locked(%struct.page* %13, %struct.address_space* %14, i32 %15, i32 %16, i8** %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @__ClearPageLocked(%struct.page* %22)
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @PageActive(%struct.page* %25)
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @__GFP_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @workingset_refault(%struct.page* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %32, %24
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @lru_cache_add(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %21
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @__SetPageLocked(%struct.page*) #1

declare dso_local i32 @__add_to_page_cache_locked(%struct.page*, %struct.address_space*, i32, i32, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ClearPageLocked(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @workingset_refault(%struct.page*, i8*) #1

declare dso_local i32 @lru_cache_add(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
