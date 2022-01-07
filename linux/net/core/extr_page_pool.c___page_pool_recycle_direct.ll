; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_recycle_direct.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_recycle_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.page_pool = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.page** }

@PP_ALLOC_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.page_pool*)* @__page_pool_recycle_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__page_pool_recycle_direct(%struct.page* %0, %struct.page_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page_pool*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.page_pool* %1, %struct.page_pool** %5, align 8
  %6 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %7 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PP_ALLOC_CACHE_SIZE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %19 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.page**, %struct.page*** %20, align 8
  %22 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %23 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %25
  store %struct.page* %17, %struct.page** %27, align 8
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
