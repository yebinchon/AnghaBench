; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pcpu_get_pages.pages = internal global %struct.page** null, align 8
@pcpu_nr_units = common dso_local global i32 0, align 4
@pcpu_unit_pages = common dso_local global i32 0, align 4
@pcpu_alloc_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** ()* @pcpu_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @pcpu_get_pages() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @pcpu_nr_units, align 4
  %3 = load i32, i32* @pcpu_unit_pages, align 4
  %4 = mul nsw i32 %2, %3
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  store i64 %6, i64* %1, align 8
  %7 = call i32 @lockdep_assert_held(i32* @pcpu_alloc_mutex)
  %8 = load %struct.page**, %struct.page*** @pcpu_get_pages.pages, align 8
  %9 = icmp ne %struct.page** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.page** @pcpu_mem_zalloc(i64 %11, i32 %12)
  store %struct.page** %13, %struct.page*** @pcpu_get_pages.pages, align 8
  br label %14

14:                                               ; preds = %10, %0
  %15 = load %struct.page**, %struct.page*** @pcpu_get_pages.pages, align 8
  ret %struct.page** %15
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.page** @pcpu_mem_zalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
