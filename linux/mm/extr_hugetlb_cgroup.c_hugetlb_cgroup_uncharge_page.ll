; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_uncharge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_uncharge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hugetlb_cgroup = type { i32* }

@hugetlb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_cgroup_uncharge_page(i32 %0, i64 %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.hugetlb_cgroup*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %8 = call i64 (...) @hugetlb_cgroup_disabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %33

11:                                               ; preds = %3
  %12 = call i32 @lockdep_assert_held(i32* @hugetlb_lock)
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_page(%struct.page* %13)
  store %struct.hugetlb_cgroup* %14, %struct.hugetlb_cgroup** %7, align 8
  %15 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %7, align 8
  %16 = icmp ne %struct.hugetlb_cgroup* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %33

22:                                               ; preds = %11
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @set_hugetlb_cgroup(%struct.page* %23, i32* null)
  %25 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %7, align 8
  %26 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @page_counter_uncharge(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %22, %21, %10
  ret void
}

declare dso_local i64 @hugetlb_cgroup_disabled(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_hugetlb_cgroup(%struct.page*, i32*) #1

declare dso_local i32 @page_counter_uncharge(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
