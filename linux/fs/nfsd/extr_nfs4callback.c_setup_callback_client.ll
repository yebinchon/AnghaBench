; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_setup_callback_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_setup_callback_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i64, %struct.cred*, %struct.rpc_clnt*, %struct.nfsd4_session*, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32 }
%struct.cred = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.nfs4_cb_conn = type { %struct.TYPE_9__*, i32, i32, i32, i32, i32 }
%struct.nfsd4_session = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.rpc_timeout = type { i32, i32, i32 }
%struct.rpc_create_args = type { i32, i32, i32, i64, i32, %struct.TYPE_9__*, i64, i32, i32*, %struct.rpc_timeout*, %struct.sockaddr*, i32, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i32 }

@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_QUIET = common dso_local global i32 0, align 4
@cb_program = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_BC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFSD: couldn't create callback client: %ld\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_client*, %struct.nfs4_cb_conn*, %struct.nfsd4_session*)* @setup_callback_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_callback_client(%struct.nfs4_client* %0, %struct.nfs4_cb_conn* %1, %struct.nfsd4_session* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.nfs4_cb_conn*, align 8
  %7 = alloca %struct.nfsd4_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpc_timeout, align 4
  %10 = alloca %struct.rpc_create_args, align 8
  %11 = alloca %struct.rpc_clnt*, align 8
  %12 = alloca %struct.cred*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %5, align 8
  store %struct.nfs4_cb_conn* %1, %struct.nfs4_cb_conn** %6, align 8
  store %struct.nfsd4_session* %2, %struct.nfsd4_session** %7, align 8
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %14 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @max_cb_time(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %9, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %9, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %9, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 1
  %24 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %25 = load i32, i32* @RPC_CLNT_CREATE_QUIET, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 7
  %33 = call i32 (...) @current_cred()
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 8
  store i32* @cb_program, i32** %34, align 8
  %35 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 9
  store %struct.rpc_timeout* %9, %struct.rpc_timeout** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 10
  %37 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %38 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %37, i32 0, i32 3
  %39 = bitcast i32* %38 to %struct.sockaddr*
  store %struct.sockaddr* %39, %struct.sockaddr** %36, align 8
  %40 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 11
  %41 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %42 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 8
  %44 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 12
  %45 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %46 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %45, i32 0, i32 5
  %47 = bitcast i32* %46 to %struct.sockaddr*
  store %struct.sockaddr* %47, %struct.sockaddr** %44, align 8
  %48 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 13
  %49 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %50 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %48, align 8
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %53 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %3
  %57 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %58 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %64 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RPC_AUTH_GSS_KRB5, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %167

72:                                               ; preds = %62, %56
  %73 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %74 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 6
  store i64 %76, i64* %77, align 8
  %78 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %79 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  %83 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %85 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  %89 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %90 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %93 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  br label %137

94:                                               ; preds = %3
  %95 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %96 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %167

102:                                              ; preds = %94
  %103 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %104 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %107 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %108, align 8
  %109 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %110 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %111 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %110, i32 0, i32 3
  store %struct.nfsd4_session* %109, %struct.nfsd4_session** %111, align 8
  %112 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %113 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 5
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %115, align 8
  %116 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %117 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %116, i32 0, i32 3
  %118 = load %struct.nfsd4_session*, %struct.nfsd4_session** %117, align 8
  %119 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 4
  store i32 %120, i32* %121, align 8
  %122 = load %struct.nfs4_cb_conn*, %struct.nfs4_cb_conn** %6, align 8
  %123 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @XPRT_TRANSPORT_BC, align 4
  %130 = or i32 %128, %129
  %131 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 2
  store i32 %130, i32* %131, align 8
  %132 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %133 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %10, i32 0, i32 3
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %102, %72
  %138 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %10)
  store %struct.rpc_clnt* %138, %struct.rpc_clnt** %11, align 8
  %139 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %140 = call i64 @IS_ERR(%struct.rpc_clnt* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %144 = call i32 @PTR_ERR(%struct.rpc_clnt* %143)
  %145 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %147 = call i32 @PTR_ERR(%struct.rpc_clnt* %146)
  store i32 %147, i32* %4, align 4
  br label %167

148:                                              ; preds = %137
  %149 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %150 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %151 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %152 = call %struct.cred* @get_backchannel_cred(%struct.nfs4_client* %149, %struct.rpc_clnt* %150, %struct.nfsd4_session* %151)
  store %struct.cred* %152, %struct.cred** %12, align 8
  %153 = load %struct.cred*, %struct.cred** %12, align 8
  %154 = icmp ne %struct.cred* %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %157 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %167

160:                                              ; preds = %148
  %161 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %162 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %163 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %162, i32 0, i32 2
  store %struct.rpc_clnt* %161, %struct.rpc_clnt** %163, align 8
  %164 = load %struct.cred*, %struct.cred** %12, align 8
  %165 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %166 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %165, i32 0, i32 1
  store %struct.cred* %164, %struct.cred** %166, align 8
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %160, %155, %142, %99, %69
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @max_cb_time(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_clnt*) #1

declare dso_local %struct.cred* @get_backchannel_cred(%struct.nfs4_client*, %struct.rpc_clnt*, %struct.nfsd4_session*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
