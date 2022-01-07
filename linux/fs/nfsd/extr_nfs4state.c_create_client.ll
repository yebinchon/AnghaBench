; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_create_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.net*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.xdr_netobj = type { i32 }
%struct.sockaddr = type { i32 }
%struct.nfsd_net = type { i64 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NFSPROC4_CLNT_CB_NULL = common dso_local global i32 0, align 4
@client_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_client* (i32, %struct.svc_rqst*, i32*)* @create_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_client* @create_client(i32 %0, %struct.svc_rqst* %1, i32* %2) #0 {
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.xdr_netobj, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nfsd_net*, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store %struct.svc_rqst* %1, %struct.svc_rqst** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %15 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %14)
  store %struct.sockaddr* %15, %struct.sockaddr** %9, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %17 = call %struct.net* @SVC_NET(%struct.svc_rqst* %16)
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.net*, %struct.net** %11, align 8
  %19 = load i32, i32* @nfsd_net_id, align 4
  %20 = call %struct.nfsd_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.nfsd_net* %20, %struct.nfsd_net** %12, align 8
  %21 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nfs4_client* @alloc_client(i32 %22)
  store %struct.nfs4_client* %23, %struct.nfs4_client** %8, align 8
  %24 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %25 = icmp eq %struct.nfs4_client* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store %struct.nfs4_client* null, %struct.nfs4_client** %4, align 8
  br label %93

27:                                               ; preds = %3
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 9
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = call i32 @copy_cred(i32* %29, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %37 = call i32 @free_client(%struct.nfs4_client* %36)
  store %struct.nfs4_client* null, %struct.nfs4_client** %4, align 8
  br label %93

38:                                               ; preds = %27
  %39 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %40 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %41 = call i32 @gen_clid(%struct.nfs4_client* %39, %struct.nfsd_net* %40)
  %42 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %43 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @kref_init(i32* %44)
  %46 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %47 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %46, i32 0, i32 8
  %48 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %49 = load i32, i32* @NFSPROC4_CLNT_CB_NULL, align 4
  %50 = call i32 @nfsd4_init_cb(i32* %47, %struct.nfs4_client* %48, i32* null, i32 %49)
  %51 = call i32 (...) @get_seconds()
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %53 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %55 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %54, i32 0, i32 6
  %56 = call i32 @clear_bit(i32 0, i32* %55)
  %57 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @copy_verf(%struct.nfs4_client* %57, i32* %58)
  %60 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %61 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %60, i32 0, i32 5
  %62 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %63 = call i32 @memcpy(i32* %61, %struct.sockaddr* %62, i32 4)
  %64 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %65 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  %66 = load %struct.net*, %struct.net** %11, align 8
  %67 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %68 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %67, i32 0, i32 3
  store %struct.net* %66, %struct.net** %68, align 8
  %69 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %70 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %71 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %70, i32 0, i32 2
  %72 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %73 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %77 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load i32, i32* @client_files, align 4
  %81 = call i32 @nfsd_client_mkdir(%struct.nfsd_net* %69, %struct.TYPE_4__* %71, i64 %79, i32 %80)
  %82 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %83 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %85 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %38
  %89 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  %90 = call i32 @free_client(%struct.nfs4_client* %89)
  store %struct.nfs4_client* null, %struct.nfs4_client** %4, align 8
  br label %93

91:                                               ; preds = %38
  %92 = load %struct.nfs4_client*, %struct.nfs4_client** %8, align 8
  store %struct.nfs4_client* %92, %struct.nfs4_client** %4, align 8
  br label %93

93:                                               ; preds = %91, %88, %35, %26
  %94 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  ret %struct.nfs4_client* %94
}

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.nfs4_client* @alloc_client(i32) #1

declare dso_local i32 @copy_cred(i32*, i32*) #1

declare dso_local i32 @free_client(%struct.nfs4_client*) #1

declare dso_local i32 @gen_clid(%struct.nfs4_client*, %struct.nfsd_net*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nfsd4_init_cb(i32*, %struct.nfs4_client*, i32*, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @copy_verf(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @nfsd_client_mkdir(%struct.nfsd_net*, %struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
