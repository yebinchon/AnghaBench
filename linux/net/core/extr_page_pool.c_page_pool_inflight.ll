; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c_page_pool_inflight.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c_page_pool_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_pool*)* @page_pool_inflight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_pool_inflight(%struct.page_pool* %0) #0 {
  %2 = alloca %struct.page_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page_pool* %0, %struct.page_pool** %2, align 8
  %6 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %7 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %10 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @_distance(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @trace_page_pool_inflight(%struct.page_pool* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @_distance(i32, i32) #1

declare dso_local i32 @trace_page_pool_inflight(%struct.page_pool*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
