; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_uncharge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_rdmacg_uncharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cgroup = type { i32 }
%struct.rdmacg_device = type { i32 }

@RDMACG_RESOURCE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdmacg_uncharge(%struct.rdma_cgroup* %0, %struct.rdmacg_device* %1, i32 %2) #0 {
  %4 = alloca %struct.rdma_cgroup*, align 8
  %5 = alloca %struct.rdmacg_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cgroup* %0, %struct.rdma_cgroup** %4, align 8
  store %struct.rdmacg_device* %1, %struct.rdmacg_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RDMACG_RESOURCE_MAX, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %16

11:                                               ; preds = %3
  %12 = load %struct.rdma_cgroup*, %struct.rdma_cgroup** %4, align 8
  %13 = load %struct.rdmacg_device*, %struct.rdmacg_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @rdmacg_uncharge_hierarchy(%struct.rdma_cgroup* %12, %struct.rdmacg_device* %13, i32* null, i32 %14)
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @rdmacg_uncharge_hierarchy(%struct.rdma_cgroup*, %struct.rdmacg_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
