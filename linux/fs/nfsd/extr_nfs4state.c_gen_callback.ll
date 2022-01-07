; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_gen_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_gen_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_4__, i32, %struct.nfs4_cb_conn }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs4_cb_conn = type { i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i16 }
%struct.nfsd4_setclientid = type { i32, i32, i32, i32, i32, i32 }
%struct.svc_rqst = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@AF_INET = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@AF_INET6 = common dso_local global i16 0, align 2
@AF_UNSPEC = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [69 x i8] c"NFSD: this client (clientid %08x/%08x) will not receive delegations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*, %struct.nfsd4_setclientid*, %struct.svc_rqst*)* @gen_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_callback(%struct.nfs4_client* %0, %struct.nfsd4_setclientid* %1, %struct.svc_rqst* %2) #0 {
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.nfsd4_setclientid*, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfs4_cb_conn*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.nfs4_client* %0, %struct.nfs4_client** %4, align 8
  store %struct.nfsd4_setclientid* %1, %struct.nfsd4_setclientid** %5, align 8
  store %struct.svc_rqst* %2, %struct.svc_rqst** %6, align 8
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 2
  store %struct.nfs4_cb_conn* %12, %struct.nfs4_cb_conn** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %14 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %13)
  store %struct.sockaddr* %14, %struct.sockaddr** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %16 = call i32 @rpc_get_scope_id(%struct.sockaddr* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcmp(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i16, i16* @AF_INET, align 2
  store i16 %28, i16* %10, align 2
  br label %44

29:                                               ; preds = %21, %3
  %30 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcmp(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i16, i16* @AF_INET6, align 2
  store i16 %41, i16* %10, align 2
  br label %43

42:                                               ; preds = %34, %29
  br label %108

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %46 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %52 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %55 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_3__* %55 to %struct.sockaddr*
  %57 = call i64 @rpc_uaddr2sockaddr(i32 %47, i32 %50, i32 %53, %struct.sockaddr* %56, i32 2)
  %58 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %59 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %61 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %44
  %65 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %66 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i16, i16* %67, align 8
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %10, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64, %44
  br label %108

74:                                               ; preds = %64
  %75 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %76 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i16, i16* %77, align 8
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @AF_INET6, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %86 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %85, i32 0, i32 1
  %87 = bitcast %struct.TYPE_3__* %86 to %struct.sockaddr_in6*
  %88 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %91 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %94 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %96 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %99 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %101 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %100, i32 0, i32 2
  %102 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %103 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %102, i32 0, i32 1
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %105 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32* %101, i32* %103, i32 %106)
  br label %124

108:                                              ; preds = %73, %42
  %109 = load i16, i16* @AF_UNSPEC, align 2
  %110 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %111 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i16 %109, i16* %112, align 8
  %113 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %7, align 8
  %114 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %116 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %120 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %108, %89
  ret void
}

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local i32 @rpc_get_scope_id(%struct.sockaddr*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @rpc_uaddr2sockaddr(i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
