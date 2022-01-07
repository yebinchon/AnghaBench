; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lockowner = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%struct.nfs4_file = type { i32, i32 }
%struct.inode = type { i32 }
%struct.nfs4_ol_stateid = type { i32, %struct.TYPE_3__, i32, i32, i32, %struct.nfs4_ol_stateid*, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.nfs4_file*, i32, i32 }

@OPEN_STATEID_MUTEX = common dso_local global i32 0, align 4
@NFS4_LOCK_STID = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_ol_stateid* (%struct.nfs4_ol_stateid*, %struct.nfs4_lockowner*, %struct.nfs4_file*, %struct.inode*, %struct.nfs4_ol_stateid*)* @init_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_ol_stateid* @init_lock_stateid(%struct.nfs4_ol_stateid* %0, %struct.nfs4_lockowner* %1, %struct.nfs4_file* %2, %struct.inode* %3, %struct.nfs4_ol_stateid* %4) #0 {
  %6 = alloca %struct.nfs4_ol_stateid*, align 8
  %7 = alloca %struct.nfs4_lockowner*, align 8
  %8 = alloca %struct.nfs4_file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs4_ol_stateid*, align 8
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %6, align 8
  store %struct.nfs4_lockowner* %1, %struct.nfs4_lockowner** %7, align 8
  store %struct.nfs4_file* %2, %struct.nfs4_file** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.nfs4_ol_stateid* %4, %struct.nfs4_ol_stateid** %10, align 8
  %13 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %14 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  store %struct.nfs4_client* %16, %struct.nfs4_client** %11, align 8
  %17 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %18 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %17, i32 0, i32 0
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %21 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %20, i32 0, i32 0
  %22 = load i32, i32* @OPEN_STATEID_MUTEX, align 4
  %23 = call i32 @mutex_lock_nested(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %97, %5
  %25 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %26 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %32 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %33 = call %struct.nfs4_ol_stateid* @find_lock_stateid(%struct.nfs4_lockowner* %31, %struct.nfs4_file* %32)
  store %struct.nfs4_ol_stateid* %33, %struct.nfs4_ol_stateid** %12, align 8
  %34 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  %35 = icmp ne %struct.nfs4_ol_stateid* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %83

37:                                               ; preds = %24
  %38 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %39 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = call i32 @refcount_inc(i32* %40)
  %42 = load i32, i32* @NFS4_LOCK_STID, align 4
  %43 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %44 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %47 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %46, i32 0, i32 0
  %48 = call i32 @nfs4_get_stateowner(%struct.TYPE_4__* %47)
  %49 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %50 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %52 = call i32 @get_nfs4_file(%struct.nfs4_file* %51)
  %53 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %54 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %55 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.nfs4_file* %53, %struct.nfs4_file** %56, align 8
  %57 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %58 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %60 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %63 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %65 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %66 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %65, i32 0, i32 5
  store %struct.nfs4_ol_stateid* %64, %struct.nfs4_ol_stateid** %66, align 8
  %67 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %68 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %67, i32 0, i32 4
  %69 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %69, i32 0, i32 4
  %71 = call i32 @list_add(i32* %68, i32* %70)
  %72 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %73 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %72, i32 0, i32 3
  %74 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %75 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @list_add(i32* %73, i32* %76)
  %78 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %79 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %78, i32 0, i32 2
  %80 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %81 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %80, i32 0, i32 1
  %82 = call i32 @list_add(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %37, %36
  %84 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %85 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %88 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  %91 = icmp ne %struct.nfs4_ol_stateid* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %83
  %93 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  %94 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %93)
  %95 = load i64, i64* @nfs_ok, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  %99 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %98, i32 0, i32 1
  %100 = call i32 @nfs4_put_stid(%struct.TYPE_3__* %99)
  br label %24

101:                                              ; preds = %92
  %102 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %103 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  store %struct.nfs4_ol_stateid* %105, %struct.nfs4_ol_stateid** %6, align 8
  br label %106

106:                                              ; preds = %101, %83
  %107 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  ret %struct.nfs4_ol_stateid* %107
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_ol_stateid* @find_lock_stateid(%struct.nfs4_lockowner*, %struct.nfs4_file*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nfs4_get_stateowner(%struct.TYPE_4__*) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_put_stid(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
