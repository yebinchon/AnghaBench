; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swapin_nr_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swapin_nr_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swapin_nr_pages.prev_offset = internal global i64 0, align 8
@swapin_nr_pages.last_readahead_pages = internal global i32 0, align 4
@page_cluster = common dso_local global i32 0, align 4
@swapin_readahead_hits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @swapin_nr_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swapin_nr_pages(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @page_cluster, align 4
  %8 = call i32 @READ_ONCE(i32 %7)
  %9 = shl i32 1, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ule i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 1, i64* %2, align 8
  br label %30

13:                                               ; preds = %1
  %14 = call i32 @atomic_xchg(i32* @swapin_readahead_hits, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @swapin_nr_pages.prev_offset, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @atomic_read(i32* @swapin_nr_pages.last_readahead_pages)
  %20 = call i32 @__swapin_nr_pages(i64 %15, i64 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* @swapin_nr_pages.prev_offset, align 8
  br label %25

25:                                               ; preds = %23, %13
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @atomic_set(i32* @swapin_nr_pages.last_readahead_pages, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %25, %12
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @__swapin_nr_pages(i64, i64, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
