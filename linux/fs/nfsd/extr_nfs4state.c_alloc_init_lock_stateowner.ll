; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lockowner = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i64, i32 }
%struct.nfs4_client = type { i32, i32* }
%struct.nfs4_ol_stateid = type { i32 }
%struct.nfsd4_lock = type { i32, i32 }

@lockowner_slab = common dso_local global i32 0, align 4
@lockowner_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lockowner* (i32, %struct.nfs4_client*, %struct.nfs4_ol_stateid*, %struct.nfsd4_lock*)* @alloc_init_lock_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lockowner* @alloc_init_lock_stateowner(i32 %0, %struct.nfs4_client* %1, %struct.nfs4_ol_stateid* %2, %struct.nfsd4_lock* %3) #0 {
  %5 = alloca %struct.nfs4_lockowner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_client*, align 8
  %8 = alloca %struct.nfs4_ol_stateid*, align 8
  %9 = alloca %struct.nfsd4_lock*, align 8
  %10 = alloca %struct.nfs4_lockowner*, align 8
  %11 = alloca %struct.nfs4_lockowner*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.nfs4_client* %1, %struct.nfs4_client** %7, align 8
  store %struct.nfs4_ol_stateid* %2, %struct.nfs4_ol_stateid** %8, align 8
  store %struct.nfsd4_lock* %3, %struct.nfsd4_lock** %9, align 8
  %12 = load i32, i32* @lockowner_slab, align 4
  %13 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %14 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %13, i32 0, i32 0
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %16 = call %struct.nfs4_lockowner* @alloc_stateowner(i32 %12, i32* %14, %struct.nfs4_client* %15)
  store %struct.nfs4_lockowner* %16, %struct.nfs4_lockowner** %10, align 8
  %17 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %18 = icmp ne %struct.nfs4_lockowner* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.nfs4_lockowner* null, %struct.nfs4_lockowner** %5, align 8
  br label %70

20:                                               ; preds = %4
  %21 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %22 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %25 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %29 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %32 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %35 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %38 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* @lockowner_ops, i32** %39, align 8
  %40 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %41 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %44 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %45 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %44, i32 0, i32 0
  %46 = call %struct.nfs4_lockowner* @find_lockowner_str_locked(%struct.nfs4_client* %43, i32* %45)
  store %struct.nfs4_lockowner* %46, %struct.nfs4_lockowner** %11, align 8
  %47 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %11, align 8
  %48 = icmp eq %struct.nfs4_lockowner* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %20
  %50 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %51 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %54 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @list_add(i32* %52, i32* %58)
  %60 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  store %struct.nfs4_lockowner* %60, %struct.nfs4_lockowner** %11, align 8
  br label %65

61:                                               ; preds = %20
  %62 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %62, i32 0, i32 0
  %64 = call i32 @nfs4_free_stateowner(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %61, %49
  %66 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %67 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %11, align 8
  store %struct.nfs4_lockowner* %69, %struct.nfs4_lockowner** %5, align 8
  br label %70

70:                                               ; preds = %65, %19
  %71 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %5, align 8
  ret %struct.nfs4_lockowner* %71
}

declare dso_local %struct.nfs4_lockowner* @alloc_stateowner(i32, i32*, %struct.nfs4_client*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_lockowner* @find_lockowner_str_locked(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nfs4_free_stateowner(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
