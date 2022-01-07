; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_close }
%struct.nfsd4_close = type { i32, i32 }
%struct.nfs4_ol_stateid = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFSD: nfsd4_close on file %pd\0A\00", align 1
@NFS4_OPEN_STID = common dso_local global i32 0, align 4
@NFS4_CLOSED_STID = common dso_local global i32 0, align 4
@close_stateid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_close(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_close*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs4_ol_stateid*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %12 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %13 = bitcast %union.nfsd4_op_u* %12 to %struct.nfsd4_close*
  store %struct.nfsd4_close* %13, %struct.nfsd4_close** %7, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = call %struct.net* @SVC_NET(%struct.svc_rqst* %14)
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load %struct.net*, %struct.net** %10, align 8
  %17 = load i32, i32* @nfsd_net_id, align 4
  %18 = call %struct.nfsd_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.nfsd_net* %18, %struct.nfsd_net** %11, align 8
  %19 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %25 = load %struct.nfsd4_close*, %struct.nfsd4_close** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfsd4_close*, %struct.nfsd4_close** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %28, i32 0, i32 0
  %30 = load i32, i32* @NFS4_OPEN_STID, align 4
  %31 = load i32, i32* @NFS4_CLOSED_STID, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %34 = call i64 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state* %24, i32 %27, i32* %29, i32 %32, %struct.nfs4_ol_stateid** %9, %struct.nfsd_net* %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @nfsd4_bump_seqid(%struct.nfsd4_compound_state* %35, i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %62

41:                                               ; preds = %3
  %42 = load i32, i32* @NFS4_CLOSED_STID, align 4
  %43 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %44 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.nfsd4_close*, %struct.nfsd4_close** %7, align 8
  %47 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %46, i32 0, i32 0
  %48 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %49 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %48, i32 0, i32 0
  %50 = call i32 @nfs4_inc_and_copy_stateid(i32* %47, %struct.TYPE_5__* %49)
  %51 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %52 = call i32 @nfsd4_close_open_stateid(%struct.nfs4_ol_stateid* %51)
  %53 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %54 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.nfsd4_close*, %struct.nfsd4_close** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %57, i32* @close_stateid, i32 4)
  %59 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %60 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %59, i32 0, i32 0
  %61 = call i32 @nfs4_put_stid(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %41, %40
  %63 = load i64, i64* %8, align 8
  ret i64 %63
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state*, i32, i32*, i32, %struct.nfs4_ol_stateid**, %struct.nfsd_net*) #1

declare dso_local i32 @nfsd4_bump_seqid(%struct.nfsd4_compound_state*, i64) #1

declare dso_local i32 @nfs4_inc_and_copy_stateid(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @nfsd4_close_open_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_put_stid(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
