; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_css_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_css_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlb_cgroup = type { %struct.cgroup_subsys_state }
%struct.cgroup_subsys_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@root_h_cgroup = common dso_local global %struct.hugetlb_cgroup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* @hugetlb_cgroup_css_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @hugetlb_cgroup_css_alloc(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.hugetlb_cgroup*, align 8
  %5 = alloca %struct.hugetlb_cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  %6 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %7 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(%struct.cgroup_subsys_state* %6)
  store %struct.hugetlb_cgroup* %7, %struct.hugetlb_cgroup** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hugetlb_cgroup* @kzalloc(i32 4, i32 %8)
  store %struct.hugetlb_cgroup* %9, %struct.hugetlb_cgroup** %5, align 8
  %10 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %11 = icmp ne %struct.hugetlb_cgroup* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %14)
  store %struct.cgroup_subsys_state* %15, %struct.cgroup_subsys_state** %2, align 8
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %4, align 8
  %18 = icmp ne %struct.hugetlb_cgroup* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  store %struct.hugetlb_cgroup* %20, %struct.hugetlb_cgroup** @root_h_cgroup, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %23 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %4, align 8
  %24 = call i32 @hugetlb_cgroup_init(%struct.hugetlb_cgroup* %22, %struct.hugetlb_cgroup* %23)
  %25 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %5, align 8
  %26 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %25, i32 0, i32 0
  store %struct.cgroup_subsys_state* %26, %struct.cgroup_subsys_state** %2, align 8
  br label %27

27:                                               ; preds = %21, %12
  %28 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %28
}

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.hugetlb_cgroup* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @hugetlb_cgroup_init(%struct.hugetlb_cgroup*, %struct.hugetlb_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
