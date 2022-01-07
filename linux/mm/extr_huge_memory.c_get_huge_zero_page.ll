; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_get_huge_zero_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_get_huge_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@huge_zero_refcount = common dso_local global i32 0, align 4
@huge_zero_page = common dso_local global i32 0, align 4
@GFP_TRANSHUGE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4
@THP_ZERO_PAGE_ALLOC_FAILED = common dso_local global i32 0, align 4
@THP_ZERO_PAGE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* ()* @get_huge_zero_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_huge_zero_page() #0 {
  %1 = alloca %struct.page*, align 8
  %2 = alloca %struct.page*, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = call i32 @atomic_inc_not_zero(i32* @huge_zero_refcount)
  %5 = call i64 @likely(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, i32* @huge_zero_page, align 4
  %9 = call %struct.page* @READ_ONCE(i32 %8)
  store %struct.page* %9, %struct.page** %1, align 8
  br label %42

10:                                               ; preds = %3
  %11 = load i32, i32* @GFP_TRANSHUGE, align 4
  %12 = load i32, i32* @__GFP_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @__GFP_MOVABLE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @HPAGE_PMD_ORDER, align 4
  %18 = call %struct.page* @alloc_pages(i32 %16, i32 %17)
  store %struct.page* %18, %struct.page** %2, align 8
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* @THP_ZERO_PAGE_ALLOC_FAILED, align 4
  %23 = call i32 @count_vm_event(i32 %22)
  store %struct.page* null, %struct.page** %1, align 8
  br label %42

24:                                               ; preds = %10
  %25 = load i32, i32* @THP_ZERO_PAGE_ALLOC, align 4
  %26 = call i32 @count_vm_event(i32 %25)
  %27 = call i32 (...) @preempt_disable()
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i64 @cmpxchg(i32* @huge_zero_page, i32* null, %struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = call i32 (...) @preempt_enable()
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = call i32 @compound_order(%struct.page* %34)
  %36 = call i32 @__free_pages(%struct.page* %33, i32 %35)
  br label %3

37:                                               ; preds = %24
  %38 = call i32 @atomic_set(i32* @huge_zero_refcount, i32 2)
  %39 = call i32 (...) @preempt_enable()
  %40 = load i32, i32* @huge_zero_page, align 4
  %41 = call %struct.page* @READ_ONCE(i32 %40)
  store %struct.page* %41, %struct.page** %1, align 8
  br label %42

42:                                               ; preds = %37, %21, %7
  %43 = load %struct.page*, %struct.page** %1, align 8
  ret %struct.page* %43
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local %struct.page* @READ_ONCE(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.page*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
