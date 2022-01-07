; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ol_stateid*, %struct.list_head*)* @unhash_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhash_open_stateid(%struct.nfs4_ol_stateid* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %13 = call i32 @unhash_ol_stateid(%struct.nfs4_ol_stateid* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = call i32 @release_open_stateid_locks(%struct.nfs4_ol_stateid* %14, %struct.list_head* %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @unhash_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @release_open_stateid_locks(%struct.nfs4_ol_stateid*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
