; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_return_unused_surplus_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_return_unused_surplus_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i64, i32 }

@node_states = common dso_local global i32* null, align 8
@N_MEMORY = common dso_local global i64 0, align 8
@hugetlb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, i64)* @return_unused_surplus_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_unused_surplus_pages(%struct.hstate* %0, i64 %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hstate*, %struct.hstate** %3, align 8
  %7 = call i64 @hstate_is_gigantic(%struct.hstate* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.hstate*, %struct.hstate** %3, align 8
  %13 = getelementptr inbounds %struct.hstate, %struct.hstate* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @min(i64 %11, i32 %14)
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %34, %10
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %5, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.hstate*, %struct.hstate** %3, align 8
  %22 = getelementptr inbounds %struct.hstate, %struct.hstate* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %4, align 8
  %27 = load %struct.hstate*, %struct.hstate** %3, align 8
  %28 = load i32*, i32** @node_states, align 8
  %29 = load i64, i64* @N_MEMORY, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @free_pool_huge_page(%struct.hstate* %27, i32* %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %37

34:                                               ; preds = %20
  %35 = call i32 @cond_resched_lock(i32* @hugetlb_lock)
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %33, %9
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.hstate*, %struct.hstate** %3, align 8
  %40 = getelementptr inbounds %struct.hstate, %struct.hstate* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %38
  store i64 %42, i64* %40, align 8
  ret void
}

declare dso_local i64 @hstate_is_gigantic(%struct.hstate*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @free_pool_huge_page(%struct.hstate*, i32*, i32) #1

declare dso_local i32 @cond_resched_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
