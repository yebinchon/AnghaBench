; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cgroup_subsys_state = type { i32, i32, i32, i32, i32, i32 }
%struct.cgroup = type { i32 }
%struct.cgroup_subsys = type { i32, i32, i64, i32, %struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* }

@cgroup_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@css_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [141 x i8] c"%s (%d) created nested cgroup for controller \22%s\22 which has incomplete hierarchy support. Nested cgroups may change behavior in the future.\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\22memory\22 requires setting use_hierarchy to 1 on the root\0A\00", align 1
@css_free_rwork_fn = common dso_local global i32 0, align 4
@cgroup_destroy_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup*, %struct.cgroup_subsys*)* @css_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @css_create(%struct.cgroup* %0, %struct.cgroup_subsys* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cgroup_subsys_state*, align 8
  %8 = alloca %struct.cgroup_subsys_state*, align 8
  %9 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %5, align 8
  %10 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %11 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %10)
  store %struct.cgroup* %11, %struct.cgroup** %6, align 8
  %12 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %13 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %14 = call %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %12, %struct.cgroup_subsys* %13)
  store %struct.cgroup_subsys_state* %14, %struct.cgroup_subsys_state** %7, align 8
  %15 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %16 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %17 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %16, i32 0, i32 4
  %18 = load %struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)*, %struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)** %17, align 8
  %19 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %7, align 8
  %20 = call %struct.cgroup_subsys_state* %18(%struct.cgroup_subsys_state* %19)
  store %struct.cgroup_subsys_state* %20, %struct.cgroup_subsys_state** %8, align 8
  %21 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %22 = icmp ne %struct.cgroup_subsys_state* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %25)
  store %struct.cgroup_subsys_state* %26, %struct.cgroup_subsys_state** %8, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %29 = call i64 @IS_ERR(%struct.cgroup_subsys_state* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  store %struct.cgroup_subsys_state* %32, %struct.cgroup_subsys_state** %3, align 8
  br label %130

33:                                               ; preds = %27
  %34 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %35 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %36 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %37 = call i32 @init_and_link_css(%struct.cgroup_subsys_state* %34, %struct.cgroup_subsys* %35, %struct.cgroup* %36)
  %38 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %39 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %38, i32 0, i32 5
  %40 = load i32, i32* @css_release, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @percpu_ref_init(i32* %39, i32 %40, i32 0, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %116

46:                                               ; preds = %33
  %47 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %48 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %47, i32 0, i32 3
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @cgroup_idr_alloc(i32* %48, i32* null, i32 2, i32 0, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %116

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %57 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %59 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %58, i32 0, i32 3
  %60 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %7, align 8
  %61 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %60, i32 0, i32 4
  %62 = call i32 @list_add_tail_rcu(i32* %59, i32* %61)
  %63 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %64 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %63, i32 0, i32 3
  %65 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %66 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %67 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cgroup_idr_replace(i32* %64, %struct.cgroup_subsys_state* %65, i32 %68)
  %70 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %71 = call i32 @online_css(%struct.cgroup_subsys_state* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %112

75:                                               ; preds = %54
  %76 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %77 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %82 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %80
  %86 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %87 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %86)
  %88 = icmp ne %struct.cgroup* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %97 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, i32 %98)
  %100 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %101 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strcmp(i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %89
  %106 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %89
  %108 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %109 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %85, %80, %75
  %111 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  store %struct.cgroup_subsys_state* %111, %struct.cgroup_subsys_state** %3, align 8
  br label %130

112:                                              ; preds = %74
  %113 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %114 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %113, i32 0, i32 3
  %115 = call i32 @list_del_rcu(i32* %114)
  br label %116

116:                                              ; preds = %112, %53, %45
  %117 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %118 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %117, i32 0, i32 2
  %119 = call i32 @list_del_rcu(i32* %118)
  %120 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %121 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %120, i32 0, i32 1
  %122 = load i32, i32* @css_free_rwork_fn, align 4
  %123 = call i32 @INIT_RCU_WORK(i32* %121, i32 %122)
  %124 = load i32, i32* @cgroup_destroy_wq, align 4
  %125 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %8, align 8
  %126 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %125, i32 0, i32 1
  %127 = call i32 @queue_rcu_work(i32 %124, i32* %126)
  %128 = load i32, i32* %9, align 4
  %129 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %128)
  store %struct.cgroup_subsys_state* %129, %struct.cgroup_subsys_state** %3, align 8
  br label %130

130:                                              ; preds = %116, %110, %31
  %131 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %131
}

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup*, %struct.cgroup_subsys*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @init_and_link_css(%struct.cgroup_subsys_state*, %struct.cgroup_subsys*, %struct.cgroup*) #1

declare dso_local i32 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i32 @cgroup_idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @cgroup_idr_replace(i32*, %struct.cgroup_subsys_state*, i32) #1

declare dso_local i32 @online_css(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @INIT_RCU_WORK(i32*, i32) #1

declare dso_local i32 @queue_rcu_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
