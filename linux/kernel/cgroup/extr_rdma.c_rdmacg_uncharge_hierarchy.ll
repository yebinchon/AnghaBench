; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_uncharge_hierarchy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_uncharge_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdmacg_device = type { i32 }
%struct.rdma_cgroup = type { i32 }

@rdmacg_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cgroup*, %struct.rdmacg_device*, %struct.rdma_cgroup*, i32)* @rdmacg_uncharge_hierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdmacg_uncharge_hierarchy(%struct.rdma_cgroup* %0, %struct.rdmacg_device* %1, %struct.rdma_cgroup* %2, i32 %3) #0 {
  %5 = alloca %struct.rdma_cgroup*, align 8
  %6 = alloca %struct.rdmacg_device*, align 8
  %7 = alloca %struct.rdma_cgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rdma_cgroup*, align 8
  store %struct.rdma_cgroup* %0, %struct.rdma_cgroup** %5, align 8
  store %struct.rdmacg_device* %1, %struct.rdmacg_device** %6, align 8
  store %struct.rdma_cgroup* %2, %struct.rdma_cgroup** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @mutex_lock(i32* @rdmacg_mutex)
  %11 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %5, align 8
  store %struct.rdma_cgroup* %11, %struct.rdma_cgroup** %9, align 8
  br label %12

12:                                               ; preds = %21, %4
  %13 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %14 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %7, align 8
  %15 = icmp ne %struct.rdma_cgroup* %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %18 = load %struct.rdmacg_device*, %struct.rdmacg_device** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @uncharge_cg_locked(%struct.rdma_cgroup* %17, %struct.rdmacg_device* %18, i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %23 = call %struct.rdma_cgroup* @parent_rdmacg(%struct.rdma_cgroup* %22)
  store %struct.rdma_cgroup* %23, %struct.rdma_cgroup** %9, align 8
  br label %12

24:                                               ; preds = %12
  %25 = call i32 @mutex_unlock(i32* @rdmacg_mutex)
  %26 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %5, align 8
  %27 = getelementptr inbounds %struct.rdma_cgroup, %struct.rdma_cgroup* %26, i32 0, i32 0
  %28 = call i32 @css_put(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uncharge_cg_locked(%struct.rdma_cgroup*, %struct.rdmacg_device*, i32) #1

declare dso_local %struct.rdma_cgroup* @parent_rdmacg(%struct.rdma_cgroup*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
