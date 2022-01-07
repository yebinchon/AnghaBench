; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_destroy_clientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_destroy_clientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_destroy_clientid }
%struct.nfsd4_destroy_clientid = type { i32 }
%struct.nfs4_client = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_clientid_busy = common dso_local global i64 0, align 8
@nfserr_stale_clientid = common dso_local global i64 0, align 8
@nfserr_wrong_cred = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_destroy_clientid(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_destroy_clientid*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca %struct.nfs4_client*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %13 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %14 = bitcast %union.nfsd4_op_u* %13 to %struct.nfsd4_destroy_clientid*
  store %struct.nfsd4_destroy_clientid* %14, %struct.nfsd4_destroy_clientid** %7, align 8
  store %struct.nfs4_client* null, %struct.nfs4_client** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = call i32 @SVC_NET(%struct.svc_rqst* %15)
  %17 = load i32, i32* @nfsd_net_id, align 4
  %18 = call %struct.nfsd_net* @net_generic(i32 %16, i32 %17)
  store %struct.nfsd_net* %18, %struct.nfsd_net** %12, align 8
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.nfsd4_destroy_clientid*, %struct.nfsd4_destroy_clientid** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd4_destroy_clientid, %struct.nfsd4_destroy_clientid* %22, i32 0, i32 0
  %24 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %25 = call %struct.nfs4_client* @find_unconfirmed_client(i32* %23, i32 1, %struct.nfsd_net* %24)
  store %struct.nfs4_client* %25, %struct.nfs4_client** %9, align 8
  %26 = load %struct.nfsd4_destroy_clientid*, %struct.nfsd4_destroy_clientid** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_destroy_clientid, %struct.nfsd4_destroy_clientid* %26, i32 0, i32 0
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %29 = call %struct.nfs4_client* @find_confirmed_client(i32* %27, i32 1, %struct.nfsd_net* %28)
  store %struct.nfs4_client* %29, %struct.nfs4_client** %8, align 8
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %31 = icmp ne %struct.nfs4_client* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %34 = icmp ne %struct.nfs4_client* %33, null
  br label %35

35:                                               ; preds = %32, %3
  %36 = phi i1 [ false, %3 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  %39 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %40 = icmp ne %struct.nfs4_client* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %43 = call i64 @client_has_state(%struct.nfs4_client* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @nfserr_clientid_busy, align 8
  store i64 %46, i64* %11, align 8
  br label %73

47:                                               ; preds = %41
  %48 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %49 = call i64 @mark_client_expired_locked(%struct.nfs4_client* %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %73

53:                                               ; preds = %47
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  store %struct.nfs4_client* %54, %struct.nfs4_client** %10, align 8
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %57 = icmp ne %struct.nfs4_client* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_client* %59, %struct.nfs4_client** %10, align 8
  br label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %61, i64* %11, align 8
  br label %73

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %66 = call i32 @nfsd4_mach_creds_match(%struct.nfs4_client* %64, %struct.svc_rqst* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  store %struct.nfs4_client* null, %struct.nfs4_client** %10, align 8
  %69 = load i64, i64* @nfserr_wrong_cred, align 8
  store i64 %69, i64* %11, align 8
  br label %73

70:                                               ; preds = %63
  %71 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %72 = call i32 @unhash_client_locked(%struct.nfs4_client* %71)
  br label %73

73:                                               ; preds = %70, %68, %60, %52, %45
  %74 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %75 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %78 = icmp ne %struct.nfs4_client* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %81 = call i32 @expire_client(%struct.nfs4_client* %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i64, i64* %11, align 8
  ret i64 %83
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_client* @find_unconfirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @client_has_state(%struct.nfs4_client*) #1

declare dso_local i64 @mark_client_expired_locked(%struct.nfs4_client*) #1

declare dso_local i32 @nfsd4_mach_creds_match(%struct.nfs4_client*, %struct.svc_rqst*) #1

declare dso_local i32 @unhash_client_locked(%struct.nfs4_client*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @expire_client(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
