; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_attach_to_pool.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_attach_to_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.worker_pool*, i32, i32, i32 }
%struct.worker_pool = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wq_pool_attach_mutex = common dso_local global i32 0, align 4
@POOL_DISASSOCIATED = common dso_local global i32 0, align 4
@WORKER_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, %struct.worker_pool*)* @worker_attach_to_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_attach_to_pool(%struct.worker* %0, %struct.worker_pool* %1) #0 {
  %3 = alloca %struct.worker*, align 8
  %4 = alloca %struct.worker_pool*, align 8
  store %struct.worker* %0, %struct.worker** %3, align 8
  store %struct.worker_pool* %1, %struct.worker_pool** %4, align 8
  %5 = call i32 @mutex_lock(i32* @wq_pool_attach_mutex)
  %6 = load %struct.worker*, %struct.worker** %3, align 8
  %7 = getelementptr inbounds %struct.worker, %struct.worker* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.worker_pool*, %struct.worker_pool** %4, align 8
  %10 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_cpus_allowed_ptr(i32 %8, i32 %13)
  %15 = load %struct.worker_pool*, %struct.worker_pool** %4, align 8
  %16 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @POOL_DISASSOCIATED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @WORKER_UNBOUND, align 4
  %23 = load %struct.worker*, %struct.worker** %3, align 8
  %24 = getelementptr inbounds %struct.worker, %struct.worker* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.worker*, %struct.worker** %3, align 8
  %29 = getelementptr inbounds %struct.worker, %struct.worker* %28, i32 0, i32 1
  %30 = load %struct.worker_pool*, %struct.worker_pool** %4, align 8
  %31 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.worker_pool*, %struct.worker_pool** %4, align 8
  %34 = load %struct.worker*, %struct.worker** %3, align 8
  %35 = getelementptr inbounds %struct.worker, %struct.worker* %34, i32 0, i32 0
  store %struct.worker_pool* %33, %struct.worker_pool** %35, align 8
  %36 = call i32 @mutex_unlock(i32* @wq_pool_attach_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
