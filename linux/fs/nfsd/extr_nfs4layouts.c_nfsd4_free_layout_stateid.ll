; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_free_layout_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_free_layout_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nfs4_stid = type { i32 }
%struct.nfs4_layout_stateid = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.nfs4_file*, i32, %struct.nfs4_client* }
%struct.nfs4_file = type { i32, i32 }
%struct.nfs4_client = type { i32 }
%struct.TYPE_5__ = type { i32 }

@nfsd4_layout_ops = common dso_local global %struct.TYPE_6__** null, align 8
@F_UNLCK = common dso_local global i32 0, align 4
@nfs4_layout_stateid_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stid*)* @nfsd4_free_layout_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_free_layout_stateid(%struct.nfs4_stid* %0) #0 {
  %2 = alloca %struct.nfs4_stid*, align 8
  %3 = alloca %struct.nfs4_layout_stateid*, align 8
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_stid* %0, %struct.nfs4_stid** %2, align 8
  %6 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %7 = call %struct.nfs4_layout_stateid* @layoutstateid(%struct.nfs4_stid* %6)
  store %struct.nfs4_layout_stateid* %7, %struct.nfs4_layout_stateid** %3, align 8
  %8 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %11, %struct.nfs4_client** %4, align 8
  %12 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nfs4_file*, %struct.nfs4_file** %14, align 8
  store %struct.nfs4_file* %15, %struct.nfs4_file** %5, align 8
  %16 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @trace_nfsd_layoutstate_free(i32* %18)
  %20 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %24 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %23, i32 0, i32 5
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %27 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %30 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %33 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %32, i32 0, i32 4
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %36 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @nfsd4_layout_ops, align 8
  %39 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %40 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %1
  %48 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %49 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F_UNLCK, align 4
  %54 = bitcast %struct.nfs4_layout_stateid** %3 to i8**
  %55 = call i32 @vfs_setlease(i32 %52, i32 %53, i32* null, i8** %54)
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %58 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @nfsd_file_put(%struct.TYPE_5__* %59)
  %61 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %62 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %67 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.nfs4_file*, %struct.nfs4_file** %68, align 8
  %70 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %69, i32 0, i32 0
  %71 = call i32 @atomic_dec(i32* %70)
  br label %72

72:                                               ; preds = %65, %56
  %73 = load i32, i32* @nfs4_layout_stateid_cache, align 4
  %74 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %75 = call i32 @kmem_cache_free(i32 %73, %struct.nfs4_layout_stateid* %74)
  ret void
}

declare dso_local %struct.nfs4_layout_stateid* @layoutstateid(%struct.nfs4_stid*) #1

declare dso_local i32 @trace_nfsd_layoutstate_free(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vfs_setlease(i32, i32, i32*, i8**) #1

declare dso_local i32 @nfsd_file_put(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_layout_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
