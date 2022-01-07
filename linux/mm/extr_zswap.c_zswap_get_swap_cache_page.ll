; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_get_swap_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_get_swap_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ZSWAP_SWAPCACHE_NEW = common dso_local global i32 0, align 4
@ZSWAP_SWAPCACHE_FAIL = common dso_local global i32 0, align 4
@ZSWAP_SWAPCACHE_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.page**)* @zswap_get_swap_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zswap_get_swap_cache_page(i32 %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.page** %1, %struct.page*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.page* @__read_swap_cache_async(i32 %7, i32 %8, i32* null, i32 0, i32* %6)
  %10 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %9, %struct.page** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ZSWAP_SWAPCACHE_NEW, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.page**, %struct.page*** %5, align 8
  %17 = load %struct.page*, %struct.page** %16, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ZSWAP_SWAPCACHE_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @ZSWAP_SWAPCACHE_EXIST, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.page* @__read_swap_cache_async(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
