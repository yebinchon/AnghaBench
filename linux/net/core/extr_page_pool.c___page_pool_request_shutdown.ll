; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_request_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_request_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__page_pool_request_shutdown(%struct.page_pool* %0) #0 {
  %2 = alloca %struct.page_pool*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.page_pool* %0, %struct.page_pool** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %6 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %12 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  %15 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %16 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %3, align 8
  %23 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @__page_pool_return_page(%struct.page_pool* %23, %struct.page* %24)
  br label %4

26:                                               ; preds = %4
  %27 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %28 = call i32 @__page_pool_empty_ring(%struct.page_pool* %27)
  %29 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %30 = call i32 @__page_pool_safe_to_destroy(%struct.page_pool* %29)
  ret i32 %30
}

declare dso_local i32 @__page_pool_return_page(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @__page_pool_empty_ring(%struct.page_pool*) #1

declare dso_local i32 @__page_pool_safe_to_destroy(%struct.page_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
