; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_deleg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_deleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i64 }
%struct.nfsd4_open = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_delegation = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@nfserr_bad_stateid = common dso_local global i64 0, align 8
@NFS4_REVOKED_DELEG_STID = common dso_local global i64 0, align 8
@nfserr_deleg_revoked = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@NFS4_OO_CONFIRMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs4_client*, %struct.nfsd4_open*, %struct.nfs4_delegation**)* @nfs4_check_deleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_check_deleg(%struct.nfs4_client* %0, %struct.nfsd4_open* %1, %struct.nfs4_delegation** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.nfs4_delegation**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs4_delegation*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %5, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %6, align 8
  store %struct.nfs4_delegation** %2, %struct.nfs4_delegation*** %7, align 8
  %11 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %13 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %13, i32 0, i32 2
  %15 = call %struct.nfs4_delegation* @find_deleg_stateid(%struct.nfs4_client* %12, i32* %14)
  store %struct.nfs4_delegation* %15, %struct.nfs4_delegation** %10, align 8
  %16 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %17 = icmp eq %struct.nfs4_delegation* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %21 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFS4_REVOKED_DELEG_STID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %27, i32 0, i32 0
  %29 = call i32 @nfs4_put_stid(%struct.TYPE_4__* %28)
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %31 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* @nfserr_deleg_revoked, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %26
  br label %54

37:                                               ; preds = %19
  %38 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @share_access_to_flags(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @nfs4_check_delegmode(%struct.nfs4_delegation* %42, i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %48, i32 0, i32 0
  %50 = call i32 @nfs4_put_stid(%struct.TYPE_4__* %49)
  br label %54

51:                                               ; preds = %37
  %52 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %53 = load %struct.nfs4_delegation**, %struct.nfs4_delegation*** %7, align 8
  store %struct.nfs4_delegation* %52, %struct.nfs4_delegation** %53, align 8
  br label %54

54:                                               ; preds = %51, %47, %36, %18
  %55 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %56 = call i32 @nfsd4_is_deleg_cur(%struct.nfsd4_open* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @nfs_ok, align 8
  store i64 %59, i64* %4, align 8
  br label %74

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %4, align 8
  br label %74

65:                                               ; preds = %60
  %66 = load i32, i32* @NFS4_OO_CONFIRMED, align 4
  %67 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %68 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load i64, i64* @nfs_ok, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %65, %63, %58
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local %struct.nfs4_delegation* @find_deleg_stateid(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @nfs4_put_stid(%struct.TYPE_4__*) #1

declare dso_local i32 @share_access_to_flags(i32) #1

declare dso_local i64 @nfs4_check_delegmode(%struct.nfs4_delegation*, i32) #1

declare dso_local i32 @nfsd4_is_deleg_cur(%struct.nfsd4_open*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
