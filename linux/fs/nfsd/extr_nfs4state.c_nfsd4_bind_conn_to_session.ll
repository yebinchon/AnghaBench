; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_bind_conn_to_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_bind_conn_to_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_bind_conn_to_session }
%struct.nfsd4_bind_conn_to_session = type { i32, i32 }
%struct.nfsd4_conn = type { i32 }
%struct.nfsd4_session = type { i32 }
%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_not_only_op = common dso_local global i64 0, align 8
@nfserr_wrong_cred = common dso_local global i64 0, align 8
@nfserr_jukebox = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_bind_conn_to_session(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_bind_conn_to_session*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfsd4_conn*, align 8
  %11 = alloca %struct.nfsd4_session*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %14 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %15 = bitcast %union.nfsd4_op_u* %14 to %struct.nfsd4_bind_conn_to_session*
  store %struct.nfsd4_bind_conn_to_session* %15, %struct.nfsd4_bind_conn_to_session** %8, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %17 = call %struct.net* @SVC_NET(%struct.svc_rqst* %16)
  store %struct.net* %17, %struct.net** %12, align 8
  %18 = load %struct.net*, %struct.net** %12, align 8
  %19 = load i32, i32* @nfsd_net_id, align 4
  %20 = call %struct.nfsd_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.nfsd_net* %20, %struct.nfsd_net** %13, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %22 = call i32 @nfsd4_last_compound_op(%struct.svc_rqst* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @nfserr_not_only_op, align 8
  store i64 %25, i64* %4, align 8
  br label %77

26:                                               ; preds = %3
  %27 = load %struct.nfsd_net*, %struct.nfsd_net** %13, align 8
  %28 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.nfsd4_bind_conn_to_session*, %struct.nfsd4_bind_conn_to_session** %8, align 8
  %31 = getelementptr inbounds %struct.nfsd4_bind_conn_to_session, %struct.nfsd4_bind_conn_to_session* %30, i32 0, i32 1
  %32 = load %struct.net*, %struct.net** %12, align 8
  %33 = call %struct.nfsd4_session* @find_in_sessionid_hashtbl(i32* %31, %struct.net* %32, i64* %9)
  store %struct.nfsd4_session* %33, %struct.nfsd4_session** %11, align 8
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %13, align 8
  %35 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.nfsd4_session*, %struct.nfsd4_session** %11, align 8
  %38 = icmp ne %struct.nfsd4_session* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %75

40:                                               ; preds = %26
  %41 = load i64, i64* @nfserr_wrong_cred, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.nfsd4_session*, %struct.nfsd4_session** %11, align 8
  %43 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = call i32 @nfsd4_mach_creds_match(i32 %44, %struct.svc_rqst* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %72

49:                                               ; preds = %40
  %50 = load %struct.nfsd4_bind_conn_to_session*, %struct.nfsd4_bind_conn_to_session** %8, align 8
  %51 = getelementptr inbounds %struct.nfsd4_bind_conn_to_session, %struct.nfsd4_bind_conn_to_session* %50, i32 0, i32 0
  %52 = call i64 @nfsd4_map_bcts_dir(i32* %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %72

56:                                               ; preds = %49
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %58 = load %struct.nfsd4_bind_conn_to_session*, %struct.nfsd4_bind_conn_to_session** %8, align 8
  %59 = getelementptr inbounds %struct.nfsd4_bind_conn_to_session, %struct.nfsd4_bind_conn_to_session* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst* %57, i32 %60)
  store %struct.nfsd4_conn* %61, %struct.nfsd4_conn** %10, align 8
  %62 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %62, i64* %9, align 8
  %63 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %10, align 8
  %64 = icmp ne %struct.nfsd4_conn* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %72

66:                                               ; preds = %56
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %68 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %10, align 8
  %69 = load %struct.nfsd4_session*, %struct.nfsd4_session** %11, align 8
  %70 = call i32 @nfsd4_init_conn(%struct.svc_rqst* %67, %struct.nfsd4_conn* %68, %struct.nfsd4_session* %69)
  %71 = load i64, i64* @nfs_ok, align 8
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %66, %65, %55, %48
  %73 = load %struct.nfsd4_session*, %struct.nfsd4_session** %11, align 8
  %74 = call i32 @nfsd4_put_session(%struct.nfsd4_session* %73)
  br label %75

75:                                               ; preds = %72, %39
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %24
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfsd4_last_compound_op(%struct.svc_rqst*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfsd4_session* @find_in_sessionid_hashtbl(i32*, %struct.net*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_mach_creds_match(i32, %struct.svc_rqst*) #1

declare dso_local i64 @nfsd4_map_bcts_dir(i32*) #1

declare dso_local %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst*, i32) #1

declare dso_local i32 @nfsd4_init_conn(%struct.svc_rqst*, %struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_put_session(%struct.nfsd4_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
