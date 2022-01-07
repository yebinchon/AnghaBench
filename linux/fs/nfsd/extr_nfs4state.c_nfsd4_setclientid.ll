; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_setclientid }
%struct.nfsd4_setclientid = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, %struct.xdr_netobj }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xdr_netobj = type { i32 }
%struct.nfs4_client = type { %struct.TYPE_8__, %struct.TYPE_6__, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nfsd_net = type { i32 }
%struct.sockaddr = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i32 0, align 4
@nfserr_clid_inuse = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"NFSD: setclientid: string in use by client at %s\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_setclientid(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_setclientid*, align 8
  %9 = alloca %struct.xdr_netobj, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca %struct.nfs4_client*, align 8
  %13 = alloca %struct.nfs4_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsd_net*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %19 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %20 = bitcast %union.nfsd4_op_u* %19 to %struct.nfsd4_setclientid*
  store %struct.nfsd4_setclientid* %20, %struct.nfsd4_setclientid** %8, align 8
  %21 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %22 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %21, i32 0, i32 3
  %23 = bitcast %struct.xdr_netobj* %9 to i8*
  %24 = bitcast %struct.xdr_netobj* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %26 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  store %struct.nfs4_client* null, %struct.nfs4_client** %13, align 8
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %29 = call i32 @SVC_NET(%struct.svc_rqst* %28)
  %30 = load i32, i32* @nfsd_net_id, align 4
  %31 = call %struct.nfsd_net* @net_generic(i32 %29, i32 %30)
  store %struct.nfsd_net* %31, %struct.nfsd_net** %15, align 8
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %33 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.nfs4_client* @create_client(i32 %34, %struct.svc_rqst* %32, i32* %10)
  store %struct.nfs4_client* %35, %struct.nfs4_client** %12, align 8
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %37 = icmp eq %struct.nfs4_client* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %39, i32* %4, align 4
  br label %153

40:                                               ; preds = %3
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %42 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %45 = call %struct.nfs4_client* @find_confirmed_client_by_name(%struct.xdr_netobj* %9, %struct.nfsd_net* %44)
  store %struct.nfs4_client* %45, %struct.nfs4_client** %11, align 8
  %46 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %47 = icmp ne %struct.nfs4_client* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %40
  %49 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %50 = call i64 @client_has_state(%struct.nfs4_client* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %55 = call i64 @clp_used_exchangeid(%struct.nfs4_client* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %136

58:                                               ; preds = %52
  %59 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %60 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %59, i32 0, i32 5
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %61, i32 0, i32 0
  %63 = call i32 @same_creds(i32* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %16, align 8
  %69 = alloca i8, i64 %67, align 16
  store i64 %67, i64* %17, align 8
  %70 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %71 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %70, i32 0, i32 4
  %72 = bitcast i32* %71 to %struct.sockaddr*
  %73 = trunc i64 %67 to i32
  %74 = call i32 @rpc_ntop(%struct.sockaddr* %72, i8* %69, i32 %73)
  %75 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %69)
  store i32 2, i32* %18, align 4
  %76 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %18, align 4
  switch i32 %77, label %155 [
    i32 2, label %136
  ]

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %48, %40
  %80 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %81 = call %struct.nfs4_client* @find_unconfirmed_client_by_name(%struct.xdr_netobj* %9, %struct.nfsd_net* %80)
  store %struct.nfs4_client* %81, %struct.nfs4_client** %13, align 8
  %82 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %83 = icmp ne %struct.nfs4_client* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %86 = call i32 @unhash_client_locked(%struct.nfs4_client* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %89 = icmp ne %struct.nfs4_client* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %92 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %91, i32 0, i32 3
  %93 = call i64 @same_verf(i32* %92, i32* %10)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %97 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %98 = call i32 @copy_clid(%struct.nfs4_client* %96, %struct.nfs4_client* %97)
  %99 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %100 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %101 = call i32 @gen_confirm(%struct.nfs4_client* %99, %struct.nfsd_net* %100)
  br label %103

102:                                              ; preds = %90, %87
  br label %103

103:                                              ; preds = %102, %95
  %104 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %105 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %107 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %108 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %109 = call i32 @gen_callback(%struct.nfs4_client* %106, %struct.nfsd4_setclientid* %107, %struct.svc_rqst* %108)
  %110 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %111 = call i32 @add_to_unconfirmed(%struct.nfs4_client* %110)
  %112 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %113 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %117 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %120 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %124 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %8, align 8
  %127 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %131 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @memcpy(i32 %129, i32 %133, i32 4)
  store %struct.nfs4_client* null, %struct.nfs4_client** %12, align 8
  %135 = load i32, i32* @nfs_ok, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %103, %65, %57
  %137 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %138 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %141 = icmp ne %struct.nfs4_client* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %144 = call i32 @free_client(%struct.nfs4_client* %143)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %147 = icmp ne %struct.nfs4_client* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %150 = call i32 @expire_client(%struct.nfs4_client* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %38
  %154 = load i32, i32* %4, align 4
  ret i32 %154

155:                                              ; preds = %65
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #2

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #2

declare dso_local %struct.nfs4_client* @create_client(i32, %struct.svc_rqst*, i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local %struct.nfs4_client* @find_confirmed_client_by_name(%struct.xdr_netobj*, %struct.nfsd_net*) #2

declare dso_local i64 @client_has_state(%struct.nfs4_client*) #2

declare dso_local i64 @clp_used_exchangeid(%struct.nfs4_client*) #2

declare dso_local i32 @same_creds(i32*, i32*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @dprintk(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local %struct.nfs4_client* @find_unconfirmed_client_by_name(%struct.xdr_netobj*, %struct.nfsd_net*) #2

declare dso_local i32 @unhash_client_locked(%struct.nfs4_client*) #2

declare dso_local i64 @same_verf(i32*, i32*) #2

declare dso_local i32 @copy_clid(%struct.nfs4_client*, %struct.nfs4_client*) #2

declare dso_local i32 @gen_confirm(%struct.nfs4_client*, %struct.nfsd_net*) #2

declare dso_local i32 @gen_callback(%struct.nfs4_client*, %struct.nfsd4_setclientid*, %struct.svc_rqst*) #2

declare dso_local i32 @add_to_unconfirmed(%struct.nfs4_client*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @free_client(%struct.nfs4_client*) #2

declare dso_local i32 @expire_client(%struct.nfs4_client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
