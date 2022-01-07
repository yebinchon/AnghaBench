; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_try_charge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_try_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cgroup = type { i32 }
%struct.rdmacg_device = type { i32 }
%struct.rdmacg_resource_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@RDMACG_RESOURCE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rdmacg_mutex = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdmacg_try_charge(%struct.rdma_cgroup** %0, %struct.rdmacg_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cgroup**, align 8
  %6 = alloca %struct.rdmacg_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_cgroup*, align 8
  %9 = alloca %struct.rdma_cgroup*, align 8
  %10 = alloca %struct.rdmacg_resource_pool*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rdma_cgroup** %0, %struct.rdma_cgroup*** %5, align 8
  store %struct.rdmacg_device* %1, %struct.rdmacg_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RDMACG_RESOURCE_MAX, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = call %struct.rdma_cgroup* (...) @get_current_rdmacg()
  store %struct.rdma_cgroup* %20, %struct.rdma_cgroup** %8, align 8
  %21 = call i32 @mutex_lock(i32* @rdmacg_mutex)
  %22 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %8, align 8
  store %struct.rdma_cgroup* %22, %struct.rdma_cgroup** %9, align 8
  br label %23

23:                                               ; preds = %74, %19
  %24 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %25 = icmp ne %struct.rdma_cgroup* %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %23
  %27 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %28 = load %struct.rdmacg_device*, %struct.rdmacg_device** %6, align 8
  %29 = call %struct.rdmacg_resource_pool* @get_cg_rpool_locked(%struct.rdma_cgroup* %27, %struct.rdmacg_device* %28)
  store %struct.rdmacg_resource_pool* %29, %struct.rdmacg_resource_pool** %10, align 8
  %30 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %31 = call i64 @IS_ERR(%struct.rdmacg_resource_pool* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.rdmacg_resource_pool* %34)
  store i32 %35, i32* %12, align 4
  br label %81

36:                                               ; preds = %26
  %37 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %38 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %48 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %46, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %81

59:                                               ; preds = %36
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %62 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %60, i64* %67, align 8
  %68 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %10, align 8
  %69 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %76 = call %struct.rdma_cgroup* @parent_rdmacg(%struct.rdma_cgroup* %75)
  store %struct.rdma_cgroup* %76, %struct.rdma_cgroup** %9, align 8
  br label %23

77:                                               ; preds = %23
  %78 = call i32 @mutex_unlock(i32* @rdmacg_mutex)
  %79 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %8, align 8
  %80 = load %struct.rdma_cgroup**, %struct.rdma_cgroup*** %5, align 8
  store %struct.rdma_cgroup* %79, %struct.rdma_cgroup** %80, align 8
  store i32 0, i32* %4, align 4
  br label %89

81:                                               ; preds = %56, %33
  %82 = call i32 @mutex_unlock(i32* @rdmacg_mutex)
  %83 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %8, align 8
  %84 = load %struct.rdmacg_device*, %struct.rdmacg_device** %6, align 8
  %85 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @rdmacg_uncharge_hierarchy(%struct.rdma_cgroup* %83, %struct.rdmacg_device* %84, %struct.rdma_cgroup* %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %81, %77, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.rdma_cgroup* @get_current_rdmacg(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rdmacg_resource_pool* @get_cg_rpool_locked(%struct.rdma_cgroup*, %struct.rdmacg_device*) #1

declare dso_local i64 @IS_ERR(%struct.rdmacg_resource_pool*) #1

declare dso_local i32 @PTR_ERR(%struct.rdmacg_resource_pool*) #1

declare dso_local %struct.rdma_cgroup* @parent_rdmacg(%struct.rdma_cgroup*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdmacg_uncharge_hierarchy(%struct.rdma_cgroup*, %struct.rdmacg_device*, %struct.rdma_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
