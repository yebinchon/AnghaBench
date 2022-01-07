; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_integ.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_integ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, %struct.xdr_buf }
%struct.xdr_buf = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xdr_stream = type { i32 }
%struct.xdr_netobj = type { i32, i32* }

@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, %struct.rpc_task*, %struct.xdr_stream*)* @gss_wrap_req_integ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_wrap_req_integ(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, %struct.rpc_task* %2, %struct.xdr_stream* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.xdr_stream*, align 8
  %10 = alloca %struct.rpc_rqst*, align 8
  %11 = alloca %struct.xdr_buf, align 8
  %12 = alloca %struct.xdr_buf*, align 8
  %13 = alloca %struct.xdr_netobj, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %6, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %7, align 8
  store %struct.rpc_task* %2, %struct.rpc_task** %8, align 8
  store %struct.xdr_stream* %3, %struct.xdr_stream** %9, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 0
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %19, align 8
  store %struct.rpc_rqst* %20, %struct.rpc_rqst** %10, align 8
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %22 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %21, i32 0, i32 1
  store %struct.xdr_buf* %22, %struct.xdr_buf** %12, align 8
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %24 = call i32* @xdr_reserve_space(%struct.xdr_stream* %23, i32 8)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %104

28:                                               ; preds = %4
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %14, align 8
  store i32* %29, i32** %15, align 8
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cpu_to_be32(i64 %33)
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %38 = call i64 @rpcauth_wrap_req_encode(%struct.rpc_task* %36, %struct.xdr_stream* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %104

41:                                               ; preds = %28
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = ptrtoint i32* %42 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %16, align 8
  %54 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  %57 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %16, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %54, %struct.xdr_buf* %11, i64 %55, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %104

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cpu_to_be32(i64 %66)
  %68 = load i32*, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %70 = call i32* @xdr_reserve_space(%struct.xdr_stream* %69, i32 0)
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %104

74:                                               ; preds = %64
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  %78 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @gss_get_mic(i32 %80, %struct.xdr_buf* %11, %struct.xdr_netobj* %13)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %87 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %88 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  br label %95

90:                                               ; preds = %74
  %91 = load i64, i64* %17, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %107

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %85
  %96 = load %struct.xdr_stream*, %struct.xdr_stream** %9, align 8
  %97 = bitcast i32** %14 to i8**
  %98 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @xdr_stream_encode_opaque_inline(%struct.xdr_stream* %96, i8** %97, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %104

103:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %113

104:                                              ; preds = %102, %73, %63, %40, %27
  %105 = load i32, i32* @EMSGSIZE, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %113

107:                                              ; preds = %93
  %108 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %109 = load i64, i64* %17, align 8
  %110 = call i32 @trace_rpcgss_get_mic(%struct.rpc_task* %108, i64 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %104, %103
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @rpcauth_wrap_req_encode(%struct.rpc_task*, %struct.xdr_stream*) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i64, i64) #1

declare dso_local i64 @gss_get_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @xdr_stream_encode_opaque_inline(%struct.xdr_stream*, i8**, i32) #1

declare dso_local i32 @trace_rpcgss_get_mic(%struct.rpc_task*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
