; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_free_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_free_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_free_stateid }
%struct.nfsd4_free_stateid = type { i32 }
%struct.nfs4_stid = type { i32, i32, i32, i32 }
%struct.nfs4_delegation = type { i32 }

@nfserr_bad_stateid = common dso_local global i32 0, align 4
@nfserr_locks_held = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_free_stateid(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_free_stateid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nfs4_stid*, align 8
  %10 = alloca %struct.nfs4_delegation*, align 8
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %13 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %14 = bitcast %union.nfsd4_op_u* %13 to %struct.nfsd4_free_stateid*
  store %struct.nfsd4_free_stateid* %14, %struct.nfsd4_free_stateid** %7, align 8
  %15 = load %struct.nfsd4_free_stateid*, %struct.nfsd4_free_stateid** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_free_stateid, %struct.nfsd4_free_stateid* %15, i32 0, i32 0
  store i32* %16, i32** %8, align 8
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.nfs4_client*, %struct.nfs4_client** %20, align 8
  store %struct.nfs4_client* %21, %struct.nfs4_client** %11, align 8
  %22 = load i32, i32* @nfserr_bad_stateid, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %24 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.nfs4_stid* @find_stateid_locked(%struct.nfs4_client* %26, i32* %27)
  store %struct.nfs4_stid* %28, %struct.nfs4_stid** %9, align 8
  %29 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %30 = icmp ne %struct.nfs4_stid* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %83

32:                                               ; preds = %3
  %33 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %34 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %37 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %79 [
    i32 131, label %39
    i32 129, label %41
    i32 130, label %51
    i32 128, label %64
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* @nfserr_locks_held, align 4
  store i32 %40, i32* %12, align 4
  br label %79

41:                                               ; preds = %32
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %44 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %43, i32 0, i32 3
  %45 = call i32 @check_stateid_generation(i32* %42, i32* %44, i32 1)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %79

49:                                               ; preds = %41
  %50 = load i32, i32* @nfserr_locks_held, align 4
  store i32 %50, i32* %12, align 4
  br label %79

51:                                               ; preds = %32
  %52 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %53 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %56 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %55, i32 0, i32 2
  %57 = call i32 @refcount_inc(i32* %56)
  %58 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %59 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %63 = call i32 @nfsd4_free_lock_stateid(i32* %61, %struct.nfs4_stid* %62)
  store i32 %63, i32* %12, align 4
  br label %87

64:                                               ; preds = %32
  %65 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %66 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %69 = call %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid* %68)
  store %struct.nfs4_delegation* %69, %struct.nfs4_delegation** %10, align 8
  %70 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %71 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %70, i32 0, i32 0
  %72 = call i32 @list_del_init(i32* %71)
  %73 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %74 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %77 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %76)
  %78 = load i32, i32* @nfs_ok, align 4
  store i32 %78, i32* %12, align 4
  br label %87

79:                                               ; preds = %32, %49, %48, %39
  %80 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %81 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %31
  %84 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %85 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %64, %51
  %88 = load i32, i32* %12, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_stid* @find_stateid_locked(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nfsd4_free_lock_stateid(i32*, %struct.nfs4_stid*) #1

declare dso_local %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @nfs4_put_stid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
