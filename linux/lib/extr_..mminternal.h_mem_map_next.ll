; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..mminternal.h_mem_map_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..mminternal.h_mem_map_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page*, %struct.page*, i32)* @mem_map_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @mem_map_next(%struct.page* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @page_to_pfn(%struct.page* %18)
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @pfn_valid(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store %struct.page* null, %struct.page** %4, align 8
  br label %33

27:                                               ; preds = %17
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.page* @pfn_to_page(i64 %28)
  store %struct.page* %29, %struct.page** %4, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i64 1
  store %struct.page* %32, %struct.page** %4, align 8
  br label %33

33:                                               ; preds = %30, %27, %26
  %34 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
