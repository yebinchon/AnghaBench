; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_free_cg_rpool_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_free_cg_rpool_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdmacg_resource_pool = type { i32, i32 }

@rdmacg_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdmacg_resource_pool*)* @free_cg_rpool_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cg_rpool_locked(%struct.rdmacg_resource_pool* %0) #0 {
  %2 = alloca %struct.rdmacg_resource_pool*, align 8
  store %struct.rdmacg_resource_pool* %0, %struct.rdmacg_resource_pool** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @rdmacg_mutex)
  %4 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %2, align 8
  %5 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %4, i32 0, i32 1
  %6 = call i32 @list_del(i32* %5)
  %7 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %2, align 8
  %8 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %2, align 8
  %11 = call i32 @kfree(%struct.rdmacg_resource_pool* %10)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.rdmacg_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
