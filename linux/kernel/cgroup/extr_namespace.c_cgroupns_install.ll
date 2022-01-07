; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_cgroupns_install.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_cgroupns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { %struct.cgroup_namespace* }
%struct.cgroup_namespace = type { i32 }
%struct.ns_common = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, %struct.ns_common*)* @cgroupns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroupns_install(%struct.nsproxy* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.cgroup_namespace*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %7 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %8 = call %struct.cgroup_namespace* @to_cg_ns(%struct.ns_common* %7)
  store %struct.cgroup_namespace* %8, %struct.cgroup_namespace** %6, align 8
  %9 = call i32 (...) @current_user_ns()
  %10 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %11 = call i32 @ns_capable(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %6, align 8
  %15 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @ns_capable(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %6, align 8
  %25 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %26 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %25, i32 0, i32 0
  %27 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %26, align 8
  %28 = icmp eq %struct.cgroup_namespace* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %6, align 8
  %32 = call i32 @get_cgroup_ns(%struct.cgroup_namespace* %31)
  %33 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %34 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %33, i32 0, i32 0
  %35 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %34, align 8
  %36 = call i32 @put_cgroup_ns(%struct.cgroup_namespace* %35)
  %37 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %6, align 8
  %38 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %39 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %38, i32 0, i32 0
  store %struct.cgroup_namespace* %37, %struct.cgroup_namespace** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %29, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.cgroup_namespace* @to_cg_ns(%struct.ns_common*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @get_cgroup_ns(%struct.cgroup_namespace*) #1

declare dso_local i32 @put_cgroup_ns(%struct.cgroup_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
