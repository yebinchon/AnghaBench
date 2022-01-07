; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32, %struct.TYPE_5__, i32, i32, i32*, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.nfs4_file*, i32, i32 }
%struct.nfs4_file = type { i32, i32 }
%struct.nfsd4_open = type { %struct.nfs4_ol_stateid*, %struct.nfs4_openowner* }
%struct.nfs4_openowner = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@OPEN_STATEID_MUTEX = common dso_local global i32 0, align 4
@NFS4_OPEN_STID = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_ol_stateid* (%struct.nfs4_file*, %struct.nfsd4_open*)* @init_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_ol_stateid* @init_open_stateid(%struct.nfs4_file* %0, %struct.nfsd4_open* %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca %struct.nfsd4_open*, align 8
  %5 = alloca %struct.nfs4_openowner*, align 8
  %6 = alloca %struct.nfs4_ol_stateid*, align 8
  %7 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %4, align 8
  %8 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %8, i32 0, i32 1
  %10 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %9, align 8
  store %struct.nfs4_openowner* %10, %struct.nfs4_openowner** %5, align 8
  store %struct.nfs4_ol_stateid* null, %struct.nfs4_ol_stateid** %6, align 8
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %11, i32 0, i32 0
  %13 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %12, align 8
  store %struct.nfs4_ol_stateid* %13, %struct.nfs4_ol_stateid** %7, align 8
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %15 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %14, i32 0, i32 0
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %18 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %17, i32 0, i32 0
  %19 = load i32, i32* @OPEN_STATEID_MUTEX, align 4
  %20 = call i32 @mutex_lock_nested(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %96, %2
  %22 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %32 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %33 = call %struct.nfs4_ol_stateid* @nfsd4_find_existing_open(%struct.nfs4_file* %31, %struct.nfsd4_open* %32)
  store %struct.nfs4_ol_stateid* %33, %struct.nfs4_ol_stateid** %6, align 8
  %34 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %35 = icmp ne %struct.nfs4_ol_stateid* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %79

37:                                               ; preds = %21
  %38 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %38, i32 0, i32 0
  store %struct.nfs4_ol_stateid* null, %struct.nfs4_ol_stateid** %39, align 8
  %40 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %41 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = call i32 @refcount_inc(i32* %42)
  %44 = load i32, i32* @NFS4_OPEN_STID, align 4
  %45 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %46 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %49 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %48, i32 0, i32 8
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %5, align 8
  %52 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %51, i32 0, i32 0
  %53 = call i32 @nfs4_get_stateowner(%struct.TYPE_6__* %52)
  %54 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %55 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %57 = call i32 @get_nfs4_file(%struct.nfs4_file* %56)
  %58 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %59 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %60 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.nfs4_file* %58, %struct.nfs4_file** %61, align 8
  %62 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %63 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %65 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %67 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  %68 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %69 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %68, i32 0, i32 3
  %70 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %5, align 8
  %71 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = call i32 @list_add(i32* %69, i32* %72)
  %74 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %75 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %74, i32 0, i32 2
  %76 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %77 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %76, i32 0, i32 1
  %78 = call i32 @list_add(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %37, %36
  %80 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %81 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %5, align 8
  %84 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %90 = icmp ne %struct.nfs4_ol_stateid* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %79
  %92 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %93 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %92)
  %94 = load i64, i64* @nfs_ok, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  %98 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %97, i32 0, i32 1
  %99 = call i32 @nfs4_put_stid(%struct.TYPE_5__* %98)
  br label %21

100:                                              ; preds = %91
  %101 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  %102 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  store %struct.nfs4_ol_stateid* %104, %struct.nfs4_ol_stateid** %7, align 8
  br label %105

105:                                              ; preds = %100, %79
  %106 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %7, align 8
  ret %struct.nfs4_ol_stateid* %106
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_ol_stateid* @nfsd4_find_existing_open(%struct.nfs4_file*, %struct.nfsd4_open*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfs4_get_stateowner(%struct.TYPE_6__*) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_put_stid(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
