; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_copy_cgroup_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_copy_cgroup_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.cgroup_namespace = type { %struct.css_set*, %struct.ucounts*, i32 }
%struct.css_set = type { i32 }
%struct.ucounts = type { i32 }

@CLONE_NEWCGROUP = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_namespace* @copy_cgroup_ns(i64 %0, %struct.user_namespace* %1, %struct.cgroup_namespace* %2) #0 {
  %4 = alloca %struct.cgroup_namespace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.cgroup_namespace*, align 8
  %8 = alloca %struct.cgroup_namespace*, align 8
  %9 = alloca %struct.ucounts*, align 8
  %10 = alloca %struct.css_set*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %6, align 8
  store %struct.cgroup_namespace* %2, %struct.cgroup_namespace** %7, align 8
  %11 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %7, align 8
  %12 = icmp ne %struct.cgroup_namespace* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CLONE_NEWCGROUP, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %7, align 8
  %22 = call i32 @get_cgroup_ns(%struct.cgroup_namespace* %21)
  %23 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %7, align 8
  store %struct.cgroup_namespace* %23, %struct.cgroup_namespace** %4, align 8
  br label %71

24:                                               ; preds = %3
  %25 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @ns_capable(%struct.user_namespace* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.cgroup_namespace* @ERR_PTR(i32 %31)
  store %struct.cgroup_namespace* %32, %struct.cgroup_namespace** %4, align 8
  br label %71

33:                                               ; preds = %24
  %34 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %35 = call %struct.ucounts* @inc_cgroup_namespaces(%struct.user_namespace* %34)
  store %struct.ucounts* %35, %struct.ucounts** %9, align 8
  %36 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %37 = icmp ne %struct.ucounts* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.cgroup_namespace* @ERR_PTR(i32 %40)
  store %struct.cgroup_namespace* %41, %struct.cgroup_namespace** %4, align 8
  br label %71

42:                                               ; preds = %33
  %43 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %44 = load i32, i32* @current, align 4
  %45 = call %struct.css_set* @task_css_set(i32 %44)
  store %struct.css_set* %45, %struct.css_set** %10, align 8
  %46 = load %struct.css_set*, %struct.css_set** %10, align 8
  %47 = call i32 @get_css_set(%struct.css_set* %46)
  %48 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %49 = call %struct.cgroup_namespace* (...) @alloc_cgroup_ns()
  store %struct.cgroup_namespace* %49, %struct.cgroup_namespace** %8, align 8
  %50 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %51 = call i64 @IS_ERR(%struct.cgroup_namespace* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.css_set*, %struct.css_set** %10, align 8
  %55 = call i32 @put_css_set(%struct.css_set* %54)
  %56 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %57 = call i32 @dec_cgroup_namespaces(%struct.ucounts* %56)
  %58 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  store %struct.cgroup_namespace* %58, %struct.cgroup_namespace** %4, align 8
  br label %71

59:                                               ; preds = %42
  %60 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %61 = call i32 @get_user_ns(%struct.user_namespace* %60)
  %62 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %63 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ucounts*, %struct.ucounts** %9, align 8
  %65 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %66 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %65, i32 0, i32 1
  store %struct.ucounts* %64, %struct.ucounts** %66, align 8
  %67 = load %struct.css_set*, %struct.css_set** %10, align 8
  %68 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %69 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %68, i32 0, i32 0
  store %struct.css_set* %67, %struct.css_set** %69, align 8
  %70 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  store %struct.cgroup_namespace* %70, %struct.cgroup_namespace** %4, align 8
  br label %71

71:                                               ; preds = %59, %53, %38, %29, %20
  %72 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %4, align 8
  ret %struct.cgroup_namespace* %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_cgroup_ns(%struct.cgroup_namespace*) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local %struct.cgroup_namespace* @ERR_PTR(i32) #1

declare dso_local %struct.ucounts* @inc_cgroup_namespaces(%struct.user_namespace*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.css_set* @task_css_set(i32) #1

declare dso_local i32 @get_css_set(%struct.css_set*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.cgroup_namespace* @alloc_cgroup_ns(...) #1

declare dso_local i64 @IS_ERR(%struct.cgroup_namespace*) #1

declare dso_local i32 @put_css_set(%struct.css_set*) #1

declare dso_local i32 @dec_cgroup_namespaces(%struct.ucounts*) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
