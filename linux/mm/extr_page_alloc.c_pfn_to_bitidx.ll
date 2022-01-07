; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_pfn_to_bitidx.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_pfn_to_bitidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i64 0, align 8
@NR_PAGEBLOCK_BITS = common dso_local global i64 0, align 8
@PAGES_PER_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @pfn_to_bitidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfn_to_bitidx(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.TYPE_2__* @page_zone(%struct.page* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @pageblock_nr_pages, align 4
  %11 = call i64 @round_down(i32 %9, i32 %10)
  %12 = sub i64 %5, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @pageblock_order, align 8
  %15 = lshr i64 %13, %14
  %16 = load i64, i64* @NR_PAGEBLOCK_BITS, align 8
  %17 = mul i64 %15, %16
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local %struct.TYPE_2__* @page_zone(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
