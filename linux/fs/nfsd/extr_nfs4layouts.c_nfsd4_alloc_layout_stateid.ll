; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_alloc_layout_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_alloc_layout_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layout_stateid = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd4_compound_state = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32, i32 }
%struct.nfs4_stid = type { i64, %struct.nfs4_file* }
%struct.nfs4_file = type { i32, i32, i32 }

@nfs4_layout_stateid_cache = common dso_local global i32 0, align 4
@nfsd4_free_layout_stateid = common dso_local global i32 0, align 4
@nfsd4_cb_layout_ops = common dso_local global i32 0, align 4
@NFSPROC4_CLNT_CB_LAYOUT = common dso_local global i32 0, align 4
@NFS4_DELEG_STID = common dso_local global i64 0, align 8
@NFS4_LAYOUT_STID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_layout_stateid* (%struct.nfsd4_compound_state*, %struct.nfs4_stid*, i32)* @nfsd4_alloc_layout_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_layout_stateid* @nfsd4_alloc_layout_stateid(%struct.nfsd4_compound_state* %0, %struct.nfs4_stid* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_layout_stateid*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfs4_stid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca %struct.nfs4_file*, align 8
  %10 = alloca %struct.nfs4_layout_stateid*, align 8
  %11 = alloca %struct.nfs4_stid*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfs4_stid* %1, %struct.nfs4_stid** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %12, i32 0, i32 0
  %14 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  store %struct.nfs4_client* %14, %struct.nfs4_client** %8, align 8
  %15 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %16 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %15, i32 0, i32 1
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %16, align 8
  store %struct.nfs4_file* %17, %struct.nfs4_file** %9, align 8
  %18 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %18, i32 0, i32 0
  %20 = load %struct.nfs4_client*, %struct.nfs4_client** %19, align 8
  %21 = load i32, i32* @nfs4_layout_stateid_cache, align 4
  %22 = load i32, i32* @nfsd4_free_layout_stateid, align 4
  %23 = call %struct.nfs4_stid* @nfs4_alloc_stid(%struct.nfs4_client* %20, i32 %21, i32 %22)
  store %struct.nfs4_stid* %23, %struct.nfs4_stid** %11, align 8
  %24 = load %struct.nfs4_stid*, %struct.nfs4_stid** %11, align 8
  %25 = icmp ne %struct.nfs4_stid* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store %struct.nfs4_layout_stateid* null, %struct.nfs4_layout_stateid** %4, align 8
  br label %127

27:                                               ; preds = %3
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %29 = call i32 @get_nfs4_file(%struct.nfs4_file* %28)
  %30 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %31 = load %struct.nfs4_stid*, %struct.nfs4_stid** %11, align 8
  %32 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %31, i32 0, i32 1
  store %struct.nfs4_file* %30, %struct.nfs4_file** %32, align 8
  %33 = load %struct.nfs4_stid*, %struct.nfs4_stid** %11, align 8
  %34 = call %struct.nfs4_layout_stateid* @layoutstateid(%struct.nfs4_stid* %33)
  store %struct.nfs4_layout_stateid* %34, %struct.nfs4_layout_stateid** %10, align 8
  %35 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %36 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %39 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %38, i32 0, i32 1
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %42 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %41, i32 0, i32 8
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %45 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %44, i32 0, i32 7
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %48 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %47, i32 0, i32 6
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %52 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %54 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %53, i32 0, i32 4
  %55 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %56 = load i32, i32* @NFSPROC4_CLNT_CB_LAYOUT, align 4
  %57 = call i32 @nfsd4_init_cb(i32* %54, %struct.nfs4_client* %55, i32* @nfsd4_cb_layout_ops, i32 %56)
  %58 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %59 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NFS4_DELEG_STID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %27
  %64 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %65 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nfsd_file_get(i32 %66)
  %68 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %69 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %75

70:                                               ; preds = %27
  %71 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %72 = call i32 @find_any_file(%struct.nfs4_file* %71)
  %73 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %74 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %77 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %84 = call i64 @nfsd4_layout_setlease(%struct.nfs4_layout_stateid* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %75
  %87 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %88 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nfsd_file_put(i32 %89)
  %91 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %92 = call i32 @put_nfs4_file(%struct.nfs4_file* %91)
  %93 = load i32, i32* @nfs4_layout_stateid_cache, align 4
  %94 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %95 = call i32 @kmem_cache_free(i32 %93, %struct.nfs4_layout_stateid* %94)
  store %struct.nfs4_layout_stateid* null, %struct.nfs4_layout_stateid** %4, align 8
  br label %127

96:                                               ; preds = %75
  %97 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %98 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %97, i32 0, i32 0
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load i64, i64* @NFS4_LAYOUT_STID, align 8
  %101 = load %struct.nfs4_stid*, %struct.nfs4_stid** %11, align 8
  %102 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %104 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %103, i32 0, i32 2
  %105 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %106 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %105, i32 0, i32 1
  %107 = call i32 @list_add(i32* %104, i32* %106)
  %108 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %109 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %112 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %111, i32 0, i32 0
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %115 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %114, i32 0, i32 1
  %116 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %117 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %116, i32 0, i32 1
  %118 = call i32 @list_add(i32* %115, i32* %117)
  %119 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %120 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  %123 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @trace_nfsd_layoutstate_alloc(i32* %124)
  %126 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %10, align 8
  store %struct.nfs4_layout_stateid* %126, %struct.nfs4_layout_stateid** %4, align 8
  br label %127

127:                                              ; preds = %96, %86, %26
  %128 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %4, align 8
  ret %struct.nfs4_layout_stateid* %128
}

declare dso_local %struct.nfs4_stid* @nfs4_alloc_stid(%struct.nfs4_client*, i32, i32) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local %struct.nfs4_layout_stateid* @layoutstateid(%struct.nfs4_stid*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nfsd4_init_cb(i32*, %struct.nfs4_client*, i32*, i32) #1

declare dso_local i32 @nfsd_file_get(i32) #1

declare dso_local i32 @find_any_file(%struct.nfs4_file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @nfsd4_layout_setlease(%struct.nfs4_layout_stateid*) #1

declare dso_local i32 @nfsd_file_put(i32) #1

declare dso_local i32 @put_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_layout_stateid*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_nfsd_layoutstate_alloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
