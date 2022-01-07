; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_put_page.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_put_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__page_pool_put_page(%struct.page_pool* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.page_pool*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.page_pool* %0, %struct.page_pool** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.page*, %struct.page** %5, align 8
  %8 = call i32 @page_ref_count(%struct.page* %7)
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call i64 (...) @in_serving_softirq()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %22 = call i64 @__page_pool_recycle_direct(%struct.page* %20, %struct.page_pool* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %42

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %16, %13
  %27 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @__page_pool_recycle_into_ring(%struct.page_pool* %27, %struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @__page_pool_return_page(%struct.page_pool* %32, %struct.page* %33)
  br label %35

35:                                               ; preds = %31, %26
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.page_pool*, %struct.page_pool** %4, align 8
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @__page_pool_clean_page(%struct.page_pool* %37, %struct.page* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @put_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %36, %35, %24
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i64 @in_serving_softirq(...) #1

declare dso_local i64 @__page_pool_recycle_direct(%struct.page*, %struct.page_pool*) #1

declare dso_local i32 @__page_pool_recycle_into_ring(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @__page_pool_return_page(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @__page_pool_clean_page(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
