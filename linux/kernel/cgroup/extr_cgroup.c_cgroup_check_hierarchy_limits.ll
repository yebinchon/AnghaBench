; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_check_hierarchy_limits.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_check_hierarchy_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, i64, i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*)* @cgroup_check_hierarchy_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_check_hierarchy_limits(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %7 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  store %struct.cgroup* %7, %struct.cgroup** %3, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %10 = icmp ne %struct.cgroup* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %13 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %16 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %34

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %23 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %32 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %31)
  store %struct.cgroup* %32, %struct.cgroup** %3, align 8
  br label %8

33:                                               ; preds = %8
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %26, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
