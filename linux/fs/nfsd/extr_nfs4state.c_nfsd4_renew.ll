; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_renew.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i64, i32 }
%union.nfsd4_op_u = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"process_renew(%08x/%08x): starting\0A\00", align 1
@nfserr_cb_path_down = common dso_local global i64 0, align 8
@NFSD4_CB_UP = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_renew(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %11 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %12 = bitcast %union.nfsd4_op_u* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = call i32 @SVC_NET(%struct.svc_rqst* %13)
  %15 = load i32, i32* @nfsd_net_id, align 4
  %16 = call %struct.nfsd_net* @net_generic(i32 %14, i32 %15)
  store %struct.nfsd_net* %16, %struct.nfsd_net** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %26 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %27 = call i64 @lookup_clientid(%struct.TYPE_3__* %24, %struct.nfsd4_compound_state* %25, %struct.nfsd_net* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %32, i32 0, i32 0
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %33, align 8
  store %struct.nfs4_client* %34, %struct.nfs4_client** %8, align 8
  %35 = load i64, i64* @nfserr_cb_path_down, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %37 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %36, i32 0, i32 1
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %42 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NFSD4_CB_UP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40, %31
  %48 = load i64, i64* @nfs_ok, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %46, %30
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i64 @lookup_clientid(%struct.TYPE_3__*, %struct.nfsd4_compound_state*, %struct.nfsd_net*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
