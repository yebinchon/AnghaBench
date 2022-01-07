; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_alloc_stid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_alloc_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stid = type { void (%struct.nfs4_stid*)*, i32, i32, %struct.TYPE_4__, %struct.nfs4_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfs4_client = type { i32, i32, i32 }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_stid* @nfs4_alloc_stid(%struct.nfs4_client* %0, %struct.kmem_cache* %1, void (%struct.nfs4_stid*)* %2) #0 {
  %4 = alloca %struct.nfs4_stid*, align 8
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca void (%struct.nfs4_stid*)*, align 8
  %8 = alloca %struct.nfs4_stid*, align 8
  %9 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %5, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %6, align 8
  store void (%struct.nfs4_stid*)* %2, void (%struct.nfs4_stid*)** %7, align 8
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfs4_stid* @kmem_cache_zalloc(%struct.kmem_cache* %10, i32 %11)
  store %struct.nfs4_stid* %12, %struct.nfs4_stid** %8, align 8
  %13 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %14 = icmp ne %struct.nfs4_stid* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.nfs4_stid* null, %struct.nfs4_stid** %4, align 8
  br label %64

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @idr_preload(i32 %17)
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %22, i32 0, i32 2
  %24 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %25 = load i32, i32* @GFP_NOWAIT, align 4
  %26 = call i32 @idr_alloc_cyclic(i32* %23, %struct.nfs4_stid* %24, i32 1, i32 0, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 (...) @idr_preload_end()
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %60

34:                                               ; preds = %16
  %35 = load void (%struct.nfs4_stid*)*, void (%struct.nfs4_stid*)** %7, align 8
  %36 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %37 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %36, i32 0, i32 0
  store void (%struct.nfs4_stid*)* %35, void (%struct.nfs4_stid*)** %37, align 8
  %38 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %39 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %40 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %39, i32 0, i32 4
  store %struct.nfs4_client* %38, %struct.nfs4_client** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %43 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %47 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %50 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %54 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %53, i32 0, i32 2
  %55 = call i32 @refcount_set(i32* %54, i32 1)
  %56 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %57 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %56, i32 0, i32 1
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  store %struct.nfs4_stid* %59, %struct.nfs4_stid** %4, align 8
  br label %64

60:                                               ; preds = %33
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %62 = load %struct.nfs4_stid*, %struct.nfs4_stid** %8, align 8
  %63 = call i32 @kmem_cache_free(%struct.kmem_cache* %61, %struct.nfs4_stid* %62)
  store %struct.nfs4_stid* null, %struct.nfs4_stid** %4, align 8
  br label %64

64:                                               ; preds = %60, %34, %15
  %65 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  ret %struct.nfs4_stid* %65
}

declare dso_local %struct.nfs4_stid* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.nfs4_stid*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
