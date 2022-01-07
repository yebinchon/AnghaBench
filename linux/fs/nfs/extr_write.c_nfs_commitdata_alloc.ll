; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commitdata_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commitdata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { i32 }

@nfs_commit_mempool = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@nfs_cdata_cachep = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_commit_data* @nfs_commitdata_alloc(i32 %0) #0 {
  %2 = alloca %struct.nfs_commit_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_commit_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @nfs_commit_mempool, align 4
  %9 = load i32, i32* @GFP_NOIO, align 4
  %10 = call %struct.nfs_commit_data* @mempool_alloc(i32 %8, i32 %9)
  store %struct.nfs_commit_data* %10, %struct.nfs_commit_data** %4, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @nfs_commit_mempool, align 4
  %13 = load i32, i32* @GFP_NOWAIT, align 4
  %14 = call %struct.nfs_commit_data* @mempool_alloc(i32 %12, i32 %13)
  store %struct.nfs_commit_data* %14, %struct.nfs_commit_data** %4, align 8
  %15 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %16 = icmp ne %struct.nfs_commit_data* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @nfs_cdata_cachep, align 4
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = load i32, i32* @__GFP_NOWARN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @__GFP_NORETRY, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.nfs_commit_data* @kmem_cache_alloc(i32 %18, i32 %23)
  store %struct.nfs_commit_data* %24, %struct.nfs_commit_data** %4, align 8
  br label %25

25:                                               ; preds = %17, %11
  %26 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %27 = icmp ne %struct.nfs_commit_data* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.nfs_commit_data* null, %struct.nfs_commit_data** %2, align 8
  br label %37

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %7
  %31 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %32 = call i32 @memset(%struct.nfs_commit_data* %31, i32 0, i32 4)
  %33 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  store %struct.nfs_commit_data* %36, %struct.nfs_commit_data** %2, align 8
  br label %37

37:                                               ; preds = %30, %28
  %38 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %2, align 8
  ret %struct.nfs_commit_data* %38
}

declare dso_local %struct.nfs_commit_data* @mempool_alloc(i32, i32) #1

declare dso_local %struct.nfs_commit_data* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.nfs_commit_data*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
