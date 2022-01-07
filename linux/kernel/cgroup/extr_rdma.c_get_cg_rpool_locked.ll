; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_get_cg_rpool_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_get_cg_rpool_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdmacg_resource_pool = type { i32, i32, %struct.rdmacg_device* }
%struct.rdma_cgroup = type { i32 }
%struct.rdmacg_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdmacg_resource_pool* (%struct.rdma_cgroup*, %struct.rdmacg_device*)* @get_cg_rpool_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdmacg_resource_pool* @get_cg_rpool_locked(%struct.rdma_cgroup* %0, %struct.rdmacg_device* %1) #0 {
  %3 = alloca %struct.rdmacg_resource_pool*, align 8
  %4 = alloca %struct.rdma_cgroup*, align 8
  %5 = alloca %struct.rdmacg_device*, align 8
  %6 = alloca %struct.rdmacg_resource_pool*, align 8
  store %struct.rdma_cgroup* %0, %struct.rdma_cgroup** %4, align 8
  store %struct.rdmacg_device* %1, %struct.rdmacg_device** %5, align 8
  %7 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %4, align 8
  %8 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %9 = call %struct.rdmacg_resource_pool* @find_cg_rpool_locked(%struct.rdma_cgroup* %7, %struct.rdmacg_device* %8)
  store %struct.rdmacg_resource_pool* %9, %struct.rdmacg_resource_pool** %6, align 8
  %10 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %11 = icmp ne %struct.rdmacg_resource_pool* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  store %struct.rdmacg_resource_pool* %13, %struct.rdmacg_resource_pool** %3, align 8
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rdmacg_resource_pool* @kzalloc(i32 16, i32 %15)
  store %struct.rdmacg_resource_pool* %16, %struct.rdmacg_resource_pool** %6, align 8
  %17 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %18 = icmp ne %struct.rdmacg_resource_pool* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.rdmacg_resource_pool* @ERR_PTR(i32 %21)
  store %struct.rdmacg_resource_pool* %22, %struct.rdmacg_resource_pool** %3, align 8
  br label %46

23:                                               ; preds = %14
  %24 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %25 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %26 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %25, i32 0, i32 2
  store %struct.rdmacg_device* %24, %struct.rdmacg_device** %26, align 8
  %27 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %28 = call i32 @set_all_resource_max_limit(%struct.rdmacg_resource_pool* %27)
  %29 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %30 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %33 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %36 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %35, i32 0, i32 1
  %37 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %4, align 8
  %38 = getelementptr inbounds %struct.rdma_cgroup, %struct.rdma_cgroup* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  %41 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %40, i32 0, i32 0
  %42 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %43 = getelementptr inbounds %struct.rdmacg_device, %struct.rdmacg_device* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %6, align 8
  store %struct.rdmacg_resource_pool* %45, %struct.rdmacg_resource_pool** %3, align 8
  br label %46

46:                                               ; preds = %23, %19, %12
  %47 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %3, align 8
  ret %struct.rdmacg_resource_pool* %47
}

declare dso_local %struct.rdmacg_resource_pool* @find_cg_rpool_locked(%struct.rdma_cgroup*, %struct.rdmacg_device*) #1

declare dso_local %struct.rdmacg_resource_pool* @kzalloc(i32, i32) #1

declare dso_local %struct.rdmacg_resource_pool* @ERR_PTR(i32) #1

declare dso_local i32 @set_all_resource_max_limit(%struct.rdmacg_resource_pool*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
