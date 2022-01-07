; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_read_u64.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_read_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.page_counter = type { i32, i32, i32 }
%struct.hugetlb_cgroup = type { %struct.page_counter* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*)* @hugetlb_cgroup_read_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_cgroup_read_u64(%struct.cgroup_subsys_state* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.page_counter*, align 8
  %7 = alloca %struct.hugetlb_cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(%struct.cgroup_subsys_state* %8)
  store %struct.hugetlb_cgroup* %9, %struct.hugetlb_cgroup** %7, align 8
  %10 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %7, align 8
  %11 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %10, i32 0, i32 0
  %12 = load %struct.page_counter*, %struct.page_counter** %11, align 8
  %13 = load %struct.cftype*, %struct.cftype** %5, align 8
  %14 = getelementptr inbounds %struct.cftype, %struct.cftype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @MEMFILE_IDX(i32 %15)
  %17 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %12, i64 %16
  store %struct.page_counter* %17, %struct.page_counter** %6, align 8
  %18 = load %struct.cftype*, %struct.cftype** %5, align 8
  %19 = getelementptr inbounds %struct.cftype, %struct.cftype* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MEMFILE_ATTR(i32 %20)
  switch i32 %21, label %43 [
    i32 128, label %22
    i32 130, label %27
    i32 129, label %33
    i32 131, label %39
  ]

22:                                               ; preds = %2
  %23 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %24 = call i32 @page_counter_read(%struct.page_counter* %23)
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %2
  %28 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %29 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %35 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load %struct.page_counter*, %struct.page_counter** %6, align 8
  %41 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %22, %27, %33, %39, %43
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local i64 @MEMFILE_IDX(i32) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @page_counter_read(%struct.page_counter*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
