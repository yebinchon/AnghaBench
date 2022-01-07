; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_init_and_link_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_init_and_link_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32, i32, i32, i32, i64, i32, i32, %struct.cgroup_subsys*, %struct.cgroup* }
%struct.cgroup_subsys = type { i64 }
%struct.cgroup = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@css_serial_nr_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys_state*, %struct.cgroup_subsys*, %struct.cgroup*)* @init_and_link_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_and_link_css(%struct.cgroup_subsys_state* %0, %struct.cgroup_subsys* %1, %struct.cgroup* %2) #0 {
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %5, align 8
  store %struct.cgroup* %2, %struct.cgroup** %6, align 8
  %7 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %8 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %9 = call i32 @cgroup_get_live(%struct.cgroup* %8)
  %10 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %11 = call i32 @memset(%struct.cgroup_subsys_state* %10, i32 0, i32 48)
  %12 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %13 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %13, i32 0, i32 8
  store %struct.cgroup* %12, %struct.cgroup** %14, align 8
  %15 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %16 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %17 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %16, i32 0, i32 7
  store %struct.cgroup_subsys* %15, %struct.cgroup_subsys** %17, align 8
  %18 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %19 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %21 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %24 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %23, i32 0, i32 5
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %27 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @css_serial_nr_next, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @css_serial_nr_next, align 4
  %31 = sext i32 %29 to i64
  %32 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %33 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %35 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %34, i32 0, i32 3
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %38 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %37)
  %39 = icmp ne %struct.cgroup* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  %41 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %42 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %41)
  %43 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %44 = call i32 @cgroup_css(%struct.cgroup* %42, %struct.cgroup_subsys* %43)
  %45 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %46 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %48 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @css_get(i32 %49)
  br label %51

51:                                               ; preds = %40, %3
  %52 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %53 = call i64 @cgroup_on_dfl(%struct.cgroup* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %57 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %62 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %61, i32 0, i32 1
  %63 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %64 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %63, i32 0, i32 0
  %65 = call i32 @list_add_rcu(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %55, %51
  %67 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %68 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %69 = call i32 @cgroup_css(%struct.cgroup* %67, %struct.cgroup_subsys* %68)
  %70 = call i32 @BUG_ON(i32 %69)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_get_live(%struct.cgroup*) #1

declare dso_local i32 @memset(%struct.cgroup_subsys_state*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local i32 @cgroup_css(%struct.cgroup*, %struct.cgroup_subsys*) #1

declare dso_local i32 @css_get(i32) #1

declare dso_local i64 @cgroup_on_dfl(%struct.cgroup*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
