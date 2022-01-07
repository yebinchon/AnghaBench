; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_new_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_new_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @slob_new_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slob_new_pages(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.page* @alloc_pages(i32 %9, i32 %10)
  store %struct.page* %11, %struct.page** %8, align 8
  %12 = load %struct.page*, %struct.page** %8, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %8, align 8
  %17 = call i32 @page_pgdat(%struct.page* %16)
  %18 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = call i32 @mod_node_page_state(i32 %17, i32 %18, i32 %20)
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i8* @page_address(%struct.page* %22)
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i8*, i8** %4, align 8
  ret i8* %25
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
