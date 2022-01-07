; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_delegreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_delegreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_delegreturn }
%struct.nfsd4_delegreturn = type { i32 }
%struct.nfs4_delegation = type { i32 }
%struct.nfs4_stid = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@NFS4_DELEG_STID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_delegreturn(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_delegreturn*, align 8
  %9 = alloca %struct.nfs4_delegation*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nfs4_stid*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %14 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %15 = bitcast %union.nfsd4_op_u* %14 to %struct.nfsd4_delegreturn*
  store %struct.nfsd4_delegreturn* %15, %struct.nfsd4_delegreturn** %8, align 8
  %16 = load %struct.nfsd4_delegreturn*, %struct.nfsd4_delegreturn** %8, align 8
  %17 = getelementptr inbounds %struct.nfsd4_delegreturn, %struct.nfsd4_delegreturn* %16, i32 0, i32 0
  store i32* %17, i32** %10, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %19 = call i32 @SVC_NET(%struct.svc_rqst* %18)
  %20 = load i32, i32* @nfsd_net_id, align 4
  %21 = call %struct.nfsd_net* @net_generic(i32 %19, i32 %20)
  store %struct.nfsd_net* %21, %struct.nfsd_net** %13, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %23, i32 0, i32 0
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = call i64 @fh_verify(%struct.svc_rqst* %22, i32* %24, i32 %25, i32 0)
  store i64 %26, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %4, align 8
  br label %60

30:                                               ; preds = %3
  %31 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @NFS4_DELEG_STID, align 4
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %13, align 8
  %35 = call i64 @nfsd4_lookup_stateid(%struct.nfsd4_compound_state* %31, i32* %32, i32 %33, %struct.nfs4_stid** %11, %struct.nfsd_net* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %58

39:                                               ; preds = %30
  %40 = load %struct.nfs4_stid*, %struct.nfs4_stid** %11, align 8
  %41 = call %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid* %40)
  store %struct.nfs4_delegation* %41, %struct.nfs4_delegation** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %9, align 8
  %44 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %43, i32 0, i32 0
  %45 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %46 = call i32 @nfsd4_has_session(%struct.nfsd4_compound_state* %45)
  %47 = call i64 @nfsd4_stid_check_stateid_generation(i32* %42, i32* %44, i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %9, align 8
  %53 = call i32 @destroy_delegation(%struct.nfs4_delegation* %52)
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %9, align 8
  %56 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %55, i32 0, i32 0
  %57 = call i32 @nfs4_put_stid(i32* %56)
  br label %58

58:                                               ; preds = %54, %38
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %58, %28
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @nfsd4_lookup_stateid(%struct.nfsd4_compound_state*, i32*, i32, %struct.nfs4_stid**, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_delegation* @delegstateid(%struct.nfs4_stid*) #1

declare dso_local i64 @nfsd4_stid_check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i32 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @destroy_delegation(%struct.nfs4_delegation*) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
