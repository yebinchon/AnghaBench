; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_ol_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_ol_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stid = type { i32 }
%struct.nfs4_ol_stateid = type { i64, i32 }

@stateid_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stid*)* @nfs4_free_ol_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_free_ol_stateid(%struct.nfs4_stid* %0) #0 {
  %2 = alloca %struct.nfs4_stid*, align 8
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfs4_stid* %0, %struct.nfs4_stid** %2, align 8
  %4 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %5 = call %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid* %4)
  store %struct.nfs4_ol_stateid* %5, %struct.nfs4_ol_stateid** %3, align 8
  %6 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @put_clnt_odstate(i32 %8)
  %10 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %11 = call i32 @release_all_access(%struct.nfs4_ol_stateid* %10)
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %18 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @nfs4_put_stateowner(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @stateid_slab, align 4
  %23 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %24 = call i32 @kmem_cache_free(i32 %22, %struct.nfs4_stid* %23)
  ret void
}

declare dso_local %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid*) #1

declare dso_local i32 @put_clnt_odstate(i32) #1

declare dso_local i32 @release_all_access(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_put_stateowner(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
