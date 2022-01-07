; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_install.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i32 }
%struct.ns_common = type { i32 }
%struct.pid_namespace = type { i64, %struct.pid_namespace*, i32 }

@current = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, %struct.ns_common*)* @pidns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidns_install(%struct.nsproxy* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.pid_namespace* @task_active_pid_ns(i32 %9)
  store %struct.pid_namespace* %10, %struct.pid_namespace** %6, align 8
  %11 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %12 = call %struct.pid_namespace* @to_pid_ns(%struct.ns_common* %11)
  store %struct.pid_namespace* %12, %struct.pid_namespace** %8, align 8
  %13 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %14 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @ns_capable(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = call i32 (...) @current_user_ns()
  %21 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %22 = call i32 @ns_capable(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %29 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %32 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %27
  %39 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  store %struct.pid_namespace* %39, %struct.pid_namespace** %7, align 8
  br label %40

40:                                               ; preds = %48, %38
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %42 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %45 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %50 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %49, i32 0, i32 1
  %51 = load %struct.pid_namespace*, %struct.pid_namespace** %50, align 8
  store %struct.pid_namespace* %51, %struct.pid_namespace** %7, align 8
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %54 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %55 = icmp ne %struct.pid_namespace* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %61 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @put_pid_ns(i32 %62)
  %64 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %65 = call i32 @get_pid_ns(%struct.pid_namespace* %64)
  %66 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %67 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %56, %35, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.pid_namespace* @to_pid_ns(%struct.ns_common*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @put_pid_ns(i32) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
