; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_uncharge_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_uncharge_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlb_cgroup = type { i32* }

@hstates = common dso_local global i32* null, align 8
@HUGETLB_CGROUP_MIN_ORDER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_cgroup_uncharge_cgroup(i32 %0, i64 %1, %struct.hugetlb_cgroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hugetlb_cgroup*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.hugetlb_cgroup* %2, %struct.hugetlb_cgroup** %6, align 8
  %7 = call i64 (...) @hugetlb_cgroup_disabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %6, align 8
  %11 = icmp ne %struct.hugetlb_cgroup* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %3
  br label %31

13:                                               ; preds = %9
  %14 = load i32*, i32** @hstates, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i64 @huge_page_order(i32* %17)
  %19 = load i64, i64* @HUGETLB_CGROUP_MIN_ORDER, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %6, align 8
  %24 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @page_counter_uncharge(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %22, %21, %12
  ret void
}

declare dso_local i64 @hugetlb_cgroup_disabled(...) #1

declare dso_local i64 @huge_page_order(i32*) #1

declare dso_local i32 @page_counter_uncharge(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
