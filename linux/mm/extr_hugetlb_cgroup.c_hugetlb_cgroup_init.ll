; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlb_cgroup = type { %struct.page_counter* }
%struct.page_counter = type { i32 }

@HUGE_MAX_HSTATE = common dso_local global i32 0, align 4
@PAGE_COUNTER_MAX = common dso_local global i32 0, align 4
@hstates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hugetlb_cgroup*, %struct.hugetlb_cgroup*)* @hugetlb_cgroup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_cgroup_init(%struct.hugetlb_cgroup* %0, %struct.hugetlb_cgroup* %1) #0 {
  %3 = alloca %struct.hugetlb_cgroup*, align 8
  %4 = alloca %struct.hugetlb_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page_counter*, align 8
  %7 = alloca %struct.page_counter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hugetlb_cgroup* %0, %struct.hugetlb_cgroup** %3, align 8
  store %struct.hugetlb_cgroup* %1, %struct.hugetlb_cgroup** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @HUGE_MAX_HSTATE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %3, align 8
  %16 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %15, i32 0, i32 0
  %17 = load %struct.page_counter*, %struct.page_counter** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %17, i64 %19
  store %struct.page_counter* %20, %struct.page_counter** %6, align 8
  store %struct.page_counter* null, %struct.page_counter** %7, align 8
  %21 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %4, align 8
  %22 = icmp ne %struct.hugetlb_cgroup* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %4, align 8
  %25 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %24, i32 0, i32 0
  %26 = load %struct.page_counter*, %struct.page_counter** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %26, i64 %28
  store %struct.page_counter* %29, %struct.page_counter** %7, align 8
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %32 = load %struct.page_counter*, %struct.page_counter** %7, align 8
  %33 = call i32 @page_counter_init(%struct.page_counter* %31, %struct.page_counter* %32)
  %34 = load i32, i32* @PAGE_COUNTER_MAX, align 4
  %35 = load i32*, i32** @hstates, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @huge_page_order(i32* %38)
  %40 = shl i32 1, %39
  %41 = call i64 @round_down(i32 %34, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @page_counter_set_max(%struct.page_counter* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @VM_BUG_ON(i32 %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %10

50:                                               ; preds = %10
  ret void
}

declare dso_local i32 @page_counter_init(%struct.page_counter*, %struct.page_counter*) #1

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i32 @huge_page_order(i32*) #1

declare dso_local i32 @page_counter_set_max(%struct.page_counter*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
