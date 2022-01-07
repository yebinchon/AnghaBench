; ModuleID = '/home/carl/AnghaBench/linux/security/extr_device_cgroup.c___devcgroup_check_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_device_cgroup.c___devcgroup_check_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_cgroup = type { i64, i32 }

@current = common dso_local global i32 0, align 4
@DEVCG_DEFAULT_ALLOW = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__devcgroup_check_permission(i16 signext %0, i32 %1, i32 %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.dev_cgroup*, align 8
  %11 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load i32, i32* @current, align 4
  %14 = call %struct.dev_cgroup* @task_devcgroup(i32 %13)
  store %struct.dev_cgroup* %14, %struct.dev_cgroup** %10, align 8
  %15 = load %struct.dev_cgroup*, %struct.dev_cgroup** %10, align 8
  %16 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEVCG_DEFAULT_ALLOW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load %struct.dev_cgroup*, %struct.dev_cgroup** %10, align 8
  %22 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %21, i32 0, i32 1
  %23 = load i16, i16* %6, align 2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i16, i16* %9, align 2
  %27 = call i32 @match_exception_partial(i32* %22, i16 signext %23, i32 %24, i32 %25, i16 signext %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load %struct.dev_cgroup*, %struct.dev_cgroup** %10, align 8
  %33 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %32, i32 0, i32 1
  %34 = load i16, i16* %6, align 2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i16, i16* %9, align 2
  %38 = call i32 @match_exception(i32* %33, i16 signext %34, i32 %35, i32 %36, i16 signext %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %31, %20
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dev_cgroup* @task_devcgroup(i32) #1

declare dso_local i32 @match_exception_partial(i32*, i16 signext, i32, i32, i16 signext) #1

declare dso_local i32 @match_exception(i32*, i16 signext, i32, i32, i16 signext) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
