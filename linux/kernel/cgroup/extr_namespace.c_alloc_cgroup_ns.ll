; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_alloc_cgroup_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_namespace.c_alloc_cgroup_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_namespace = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cgroupns_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_namespace* ()* @alloc_cgroup_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_namespace* @alloc_cgroup_ns() #0 {
  %1 = alloca %struct.cgroup_namespace*, align 8
  %2 = alloca %struct.cgroup_namespace*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.cgroup_namespace* @kzalloc(i32 16, i32 %4)
  store %struct.cgroup_namespace* %5, %struct.cgroup_namespace** %2, align 8
  %6 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  %7 = icmp ne %struct.cgroup_namespace* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.cgroup_namespace* @ERR_PTR(i32 %10)
  store %struct.cgroup_namespace* %11, %struct.cgroup_namespace** %1, align 8
  br label %31

12:                                               ; preds = %0
  %13 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  %14 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %13, i32 0, i32 0
  %15 = call i32 @ns_alloc_inum(%struct.TYPE_2__* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  %20 = call i32 @kfree(%struct.cgroup_namespace* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.cgroup_namespace* @ERR_PTR(i32 %21)
  store %struct.cgroup_namespace* %22, %struct.cgroup_namespace** %1, align 8
  br label %31

23:                                               ; preds = %12
  %24 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  %25 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %24, i32 0, i32 1
  %26 = call i32 @refcount_set(i32* %25, i32 1)
  %27 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  %28 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* @cgroupns_operations, i32** %29, align 8
  %30 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %2, align 8
  store %struct.cgroup_namespace* %30, %struct.cgroup_namespace** %1, align 8
  br label %31

31:                                               ; preds = %23, %18, %8
  %32 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %1, align 8
  ret %struct.cgroup_namespace* %32
}

declare dso_local %struct.cgroup_namespace* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.cgroup_namespace*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
