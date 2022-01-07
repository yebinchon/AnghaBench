; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_hierarchy_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_hierarchy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cgroup_subsys_state* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i32)* @mem_cgroup_hierarchy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_hierarchy_write(%struct.cgroup_subsys_state* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca %struct.mem_cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %12 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %11)
  store %struct.mem_cgroup* %12, %struct.mem_cgroup** %9, align 8
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %15, align 8
  %17 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %16)
  store %struct.mem_cgroup* %17, %struct.mem_cgroup** %10, align 8
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %26 = icmp ne %struct.mem_cgroup* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %29 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35, %32
  %39 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %40 = call i32 @memcg_has_children(%struct.mem_cgroup* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %45 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %42
  br label %53

50:                                               ; preds = %35, %27
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @memcg_has_children(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
