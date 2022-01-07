; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_alloc_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_alloc_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_trans_rdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.p9_rdma_opts = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_trans_rdma* (%struct.p9_rdma_opts*)* @alloc_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_trans_rdma* @alloc_rdma(%struct.p9_rdma_opts* %0) #0 {
  %2 = alloca %struct.p9_trans_rdma*, align 8
  %3 = alloca %struct.p9_rdma_opts*, align 8
  %4 = alloca %struct.p9_trans_rdma*, align 8
  store %struct.p9_rdma_opts* %0, %struct.p9_rdma_opts** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.p9_trans_rdma* @kzalloc(i32 40, i32 %5)
  store %struct.p9_trans_rdma* %6, %struct.p9_trans_rdma** %4, align 8
  %7 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %8 = icmp ne %struct.p9_trans_rdma* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.p9_trans_rdma* null, %struct.p9_trans_rdma** %2, align 8
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %3, align 8
  %12 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %15 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %3, align 8
  %17 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %20 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %3, align 8
  %22 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %25 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %3, align 8
  %27 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %30 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %3, align 8
  %32 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %35 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %37 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %40 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %39, i32 0, i32 5
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %43 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %42, i32 0, i32 4
  %44 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %45 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sema_init(i32* %43, i32 %46)
  %48 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %49 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %48, i32 0, i32 2
  %50 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %51 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sema_init(i32* %49, i32 %52)
  %54 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  %55 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %54, i32 0, i32 0
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %4, align 8
  store %struct.p9_trans_rdma* %57, %struct.p9_trans_rdma** %2, align 8
  br label %58

58:                                               ; preds = %10, %9
  %59 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  ret %struct.p9_trans_rdma* %59
}

declare dso_local %struct.p9_trans_rdma* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
