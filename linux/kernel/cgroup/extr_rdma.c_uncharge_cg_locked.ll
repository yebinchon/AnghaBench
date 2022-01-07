; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_uncharge_cg_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_uncharge_cg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cgroup = type { i32 }
%struct.rdmacg_device = type { i32 }
%struct.rdmacg_resource_pool = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid device %p or rdma cgroup %p\0A\00", align 1
@RDMACG_RESOURCE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cgroup*, %struct.rdmacg_device*, i32)* @uncharge_cg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncharge_cg_locked(%struct.rdma_cgroup* %0, %struct.rdmacg_device* %1, i32 %2) #0 {
  %4 = alloca %struct.rdma_cgroup*, align 8
  %5 = alloca %struct.rdmacg_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdmacg_resource_pool*, align 8
  store %struct.rdma_cgroup* %0, %struct.rdma_cgroup** %4, align 8
  store %struct.rdmacg_device* %1, %struct.rdmacg_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %4, align 8
  %9 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %10 = call %struct.rdmacg_resource_pool* @find_cg_rpool_locked(%struct.rdma_cgroup* %8, %struct.rdmacg_device* %9)
  store %struct.rdmacg_resource_pool* %10, %struct.rdmacg_resource_pool** %7, align 8
  %11 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %12 = icmp ne %struct.rdmacg_resource_pool* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %4, align 8
  %19 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.rdma_cgroup* %18, %struct.rdmacg_device* %19)
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %23 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %32 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %43 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %47 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %21
  %51 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %52 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RDMACG_RESOURCE_MAX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %7, align 8
  %58 = call i32 @free_cg_rpool_locked(%struct.rdmacg_resource_pool* %57)
  br label %59

59:                                               ; preds = %17, %56, %50, %21
  ret void
}

declare dso_local %struct.rdmacg_resource_pool* @find_cg_rpool_locked(%struct.rdma_cgroup*, %struct.rdmacg_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, %struct.rdma_cgroup*, %struct.rdmacg_device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @free_cg_rpool_locked(%struct.rdmacg_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
