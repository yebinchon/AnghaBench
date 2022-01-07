; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_deleg_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_deleg_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32 }
%struct.nfs4_client = type { i32 }
%struct.nfs4_stid = type { i32 }

@NFS4_DELEG_STID = common dso_local global i32 0, align 4
@NFS4_REVOKED_DELEG_STID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_delegation* (%struct.nfs4_client*, i32*)* @find_deleg_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_delegation* @find_deleg_stateid(%struct.nfs4_client* %0, i32* %1) #0 {
  %3 = alloca %struct.nfs4_delegation*, align 8
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_stid*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @NFS4_DELEG_STID, align 4
  %10 = load i32, i32* @NFS4_REVOKED_DELEG_STID, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.nfs4_stid* @find_stateid_by_type(%struct.nfs4_client* %7, i32* %8, i32 %11)
  store %struct.nfs4_stid* %12, %struct.nfs4_stid** %6, align 8
  %13 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %14 = icmp ne %struct.nfs4_stid* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.nfs4_stid*, %struct.nfs4_stid** %6, align 8
  %18 = call %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid* %17)
  store %struct.nfs4_delegation* %18, %struct.nfs4_delegation** %3, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  ret %struct.nfs4_delegation* %20
}

declare dso_local %struct.nfs4_stid* @find_stateid_by_type(%struct.nfs4_client*, i32*, i32) #1

declare dso_local %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
