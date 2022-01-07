; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs4_client* }
%struct.nfs4_client = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsd4_create_session = type { i32, i32, i32 }
%struct.nfsd_net = type { i32* }
%struct.sockaddr = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.nfsd4_session*, %struct.nfs4_client*, %struct.nfsd4_create_session*)* @init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_session(%struct.svc_rqst* %0, %struct.nfsd4_session* %1, %struct.nfs4_client* %2, %struct.nfsd4_create_session* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_session*, align 8
  %7 = alloca %struct.nfs4_client*, align 8
  %8 = alloca %struct.nfsd4_create_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsd_net*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_session* %1, %struct.nfsd4_session** %6, align 8
  store %struct.nfs4_client* %2, %struct.nfs4_client** %7, align 8
  store %struct.nfsd4_create_session* %3, %struct.nfsd4_create_session** %8, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %13 = call i32 @SVC_NET(%struct.svc_rqst* %12)
  %14 = load i32, i32* @nfsd_net_id, align 4
  %15 = call %struct.nfsd_net* @net_generic(i32 %13, i32 %14)
  store %struct.nfsd_net* %15, %struct.nfsd_net** %10, align 8
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %17 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %17, i32 0, i32 9
  store %struct.nfs4_client* %16, %struct.nfs4_client** %18, align 8
  %19 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %20 = call i32 @gen_sessionid(%struct.nfsd4_session* %19)
  %21 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %27 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %32 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %37 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %40 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %42 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %41, i32 0, i32 4
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %44, i32 0, i32 3
  %46 = call i32 @hash_sessionid(i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %48 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %47, i32 0, i32 2
  %49 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %50 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @list_add(i32* %48, i32* %54)
  %56 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %57 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %59, i32 0, i32 1
  %61 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %62 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %61, i32 0, i32 2
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %65 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %68 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %67)
  store %struct.sockaddr* %68, %struct.sockaddr** %11, align 8
  %69 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %70 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = bitcast i32* %71 to %struct.sockaddr*
  %73 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %74 = call i32 @rpc_copy_addr(%struct.sockaddr* %72, %struct.sockaddr* %73)
  %75 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %76 = call i32 @svc_addr_len(%struct.sockaddr* %75)
  %77 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %78 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @gen_sessionid(%struct.nfsd4_session*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hash_sessionid(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local i32 @rpc_copy_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @svc_addr_len(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
