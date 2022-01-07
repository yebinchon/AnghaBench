; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_move_parent.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_move_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlb_cgroup = type { %struct.page_counter* }
%struct.page_counter = type { i32 }
%struct.page = type { i32 }

@root_h_cgroup = common dso_local global %struct.hugetlb_cgroup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hugetlb_cgroup*, %struct.page*)* @hugetlb_cgroup_move_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_cgroup_move_parent(i32 %0, %struct.hugetlb_cgroup* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hugetlb_cgroup*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_counter*, align 8
  %9 = alloca %struct.hugetlb_cgroup*, align 8
  %10 = alloca %struct.hugetlb_cgroup*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hugetlb_cgroup* %1, %struct.hugetlb_cgroup** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %11 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %12 = call %struct.hugetlb_cgroup* @parent_hugetlb_cgroup(%struct.hugetlb_cgroup* %11)
  store %struct.hugetlb_cgroup* %12, %struct.hugetlb_cgroup** %10, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_page(%struct.page* %13)
  store %struct.hugetlb_cgroup* %14, %struct.hugetlb_cgroup** %9, align 8
  %15 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %16 = icmp ne %struct.hugetlb_cgroup* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %9, align 8
  %19 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %20 = icmp ne %struct.hugetlb_cgroup* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  br label %50

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @compound_nr(%struct.page* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %10, align 8
  %26 = icmp ne %struct.hugetlb_cgroup* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** @root_h_cgroup, align 8
  store %struct.hugetlb_cgroup* %28, %struct.hugetlb_cgroup** %10, align 8
  %29 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %10, align 8
  %30 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %29, i32 0, i32 0
  %31 = load %struct.page_counter*, %struct.page_counter** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %31, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @page_counter_charge(%struct.page_counter* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %39 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %38, i32 0, i32 0
  %40 = load %struct.page_counter*, %struct.page_counter** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %40, i64 %42
  store %struct.page_counter* %43, %struct.page_counter** %8, align 8
  %44 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @page_counter_cancel(%struct.page_counter* %44, i32 %45)
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %10, align 8
  %49 = call i32 @set_hugetlb_cgroup(%struct.page* %47, %struct.hugetlb_cgroup* %48)
  br label %50

50:                                               ; preds = %37, %21
  ret void
}

declare dso_local %struct.hugetlb_cgroup* @parent_hugetlb_cgroup(%struct.hugetlb_cgroup*) #1

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_page(%struct.page*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i32 @page_counter_charge(%struct.page_counter*, i32) #1

declare dso_local i32 @page_counter_cancel(%struct.page_counter*, i32) #1

declare dso_local i32 @set_hugetlb_cgroup(%struct.page*, %struct.hugetlb_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
