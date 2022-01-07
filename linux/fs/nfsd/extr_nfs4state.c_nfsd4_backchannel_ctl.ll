; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_backchannel_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_backchannel_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.nfsd4_session* }
%struct.nfsd4_session = type { i32, i32, i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_backchannel_ctl }
%struct.nfsd4_backchannel_ctl = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_backchannel_ctl(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_backchannel_ctl*, align 8
  %9 = alloca %struct.nfsd4_session*, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %12 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %13 = bitcast %union.nfsd4_op_u* %12 to %struct.nfsd4_backchannel_ctl*
  store %struct.nfsd4_backchannel_ctl* %13, %struct.nfsd4_backchannel_ctl** %8, align 8
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %14, i32 0, i32 0
  %16 = load %struct.nfsd4_session*, %struct.nfsd4_session** %15, align 8
  store %struct.nfsd4_session* %16, %struct.nfsd4_session** %9, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %18 = call i32 @SVC_NET(%struct.svc_rqst* %17)
  %19 = load i32, i32* @nfsd_net_id, align 4
  %20 = call %struct.nfsd_net* @net_generic(i32 %18, i32 %19)
  store %struct.nfsd_net* %20, %struct.nfsd_net** %10, align 8
  %21 = load %struct.nfsd4_backchannel_ctl*, %struct.nfsd4_backchannel_ctl** %8, align 8
  %22 = getelementptr inbounds %struct.nfsd4_backchannel_ctl, %struct.nfsd4_backchannel_ctl* %21, i32 0, i32 0
  %23 = call i64 @nfsd4_check_cb_sec(i32* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %4, align 8
  br label %50

28:                                               ; preds = %3
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.nfsd4_backchannel_ctl*, %struct.nfsd4_backchannel_ctl** %8, align 8
  %33 = getelementptr inbounds %struct.nfsd4_backchannel_ctl, %struct.nfsd4_backchannel_ctl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd4_session*, %struct.nfsd4_session** %9, align 8
  %36 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nfsd4_backchannel_ctl*, %struct.nfsd4_backchannel_ctl** %8, align 8
  %38 = getelementptr inbounds %struct.nfsd4_backchannel_ctl, %struct.nfsd4_backchannel_ctl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfsd4_session*, %struct.nfsd4_session** %9, align 8
  %41 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %43 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.nfsd4_session*, %struct.nfsd4_session** %9, align 8
  %46 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nfsd4_probe_callback(i32 %47)
  %49 = load i64, i64* @nfs_ok, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %28, %26
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nfsd4_check_cb_sec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_probe_callback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
