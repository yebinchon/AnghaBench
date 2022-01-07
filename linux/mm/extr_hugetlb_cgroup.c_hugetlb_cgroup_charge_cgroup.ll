; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_charge_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_charge_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlb_cgroup = type { i32, i32* }
%struct.page_counter = type { i32 }

@hstates = common dso_local global i32* null, align 8
@HUGETLB_CGROUP_MIN_ORDER = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugetlb_cgroup_charge_cgroup(i32 %0, i64 %1, %struct.hugetlb_cgroup** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hugetlb_cgroup**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_counter*, align 8
  %9 = alloca %struct.hugetlb_cgroup*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.hugetlb_cgroup** %2, %struct.hugetlb_cgroup*** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.hugetlb_cgroup* null, %struct.hugetlb_cgroup** %9, align 8
  %10 = call i64 (...) @hugetlb_cgroup_disabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %51

13:                                               ; preds = %3
  %14 = load i32*, i32** @hstates, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i64 @huge_page_order(i32* %17)
  %19 = load i64, i64* @HUGETLB_CGROUP_MIN_ORDER, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %51

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %31, %22
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load i32, i32* @current, align 4
  %26 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_task(i32 %25)
  store %struct.hugetlb_cgroup* %26, %struct.hugetlb_cgroup** %9, align 8
  %27 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %28 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %27, i32 0, i32 0
  %29 = call i32 @css_tryget_online(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = call i32 (...) @rcu_read_unlock()
  br label %23

33:                                               ; preds = %23
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %36 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @page_counter_try_charge(i32* %40, i64 %41, %struct.page_counter** %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %49 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %48, i32 0, i32 0
  %50 = call i32 @css_put(i32* %49)
  br label %51

51:                                               ; preds = %47, %21, %12
  %52 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %53 = load %struct.hugetlb_cgroup**, %struct.hugetlb_cgroup*** %6, align 8
  store %struct.hugetlb_cgroup* %52, %struct.hugetlb_cgroup** %53, align 8
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @hugetlb_cgroup_disabled(...) #1

declare dso_local i64 @huge_page_order(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_task(i32) #1

declare dso_local i32 @css_tryget_online(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @page_counter_try_charge(i32*, i64, %struct.page_counter**) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
