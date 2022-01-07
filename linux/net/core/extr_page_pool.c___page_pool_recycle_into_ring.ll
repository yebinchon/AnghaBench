; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_recycle_into_ring.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_recycle_into_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_pool*, %struct.page*)* @__page_pool_recycle_into_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__page_pool_recycle_into_ring(%struct.page_pool* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page_pool*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.page_pool* %0, %struct.page_pool** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = call i64 (...) @in_serving_softirq()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %10 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %9, i32 0, i32 0
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @ptr_ring_produce(i32* %10, %struct.page* %11)
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %15 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %14, i32 0, i32 0
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @ptr_ring_produce_bh(i32* %15, %struct.page* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  ret i32 %22
}

declare dso_local i64 @in_serving_softirq(...) #1

declare dso_local i32 @ptr_ring_produce(i32*, %struct.page*) #1

declare dso_local i32 @ptr_ring_produce_bh(i32*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
