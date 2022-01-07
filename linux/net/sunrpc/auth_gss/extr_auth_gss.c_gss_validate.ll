; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xdr_stream = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.kvec = type { i32, i32* }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i64, i32* }

@rpc_auth_gss = common dso_local global i64 0, align 8
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_validate(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca %struct.gss_cl_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kvec, align 8
  %10 = alloca %struct.xdr_buf, align 4
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %4, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %18, align 8
  store %struct.rpc_cred* %19, %struct.rpc_cred** %5, align 8
  %20 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %21 = call %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred* %20)
  store %struct.gss_cl_ctx* %21, %struct.gss_cl_ctx** %6, align 8
  store i32* null, i32** %8, align 8
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i32* @xdr_inline_decode(%struct.xdr_stream* %22, i64 8)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %101

27:                                               ; preds = %2
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %28, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @rpc_auth_gss, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %101

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @be32_to_cpup(i32* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %101

42:                                               ; preds = %35
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32* @xdr_inline_decode(%struct.xdr_stream* %43, i64 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %101

49:                                               ; preds = %42
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i32* @kmalloc(i32 4, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %101

55:                                               ; preds = %49
  %56 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cpu_to_be32(i32 %60)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = call i32 @xdr_buf_from_iov(%struct.kvec* %9, %struct.xdr_buf* %10)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  store i32* %67, i32** %68, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @gss_verify_mic(i32 %73, %struct.xdr_buf* %10, %struct.xdr_netobj* %11)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %55
  %79 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %80 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %81 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %80, i32 0, i32 1
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %55
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %104

87:                                               ; preds = %83
  %88 = load i64, i64* %12, align 8
  %89 = call i64 @XDR_QUADLEN(i64 %88)
  %90 = add nsw i64 %89, 2
  %91 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %92 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %104, %101, %87
  %96 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %6, align 8
  %97 = call i32 @gss_put_ctx(%struct.gss_cl_ctx* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32, i32* %14, align 4
  ret i32 %100

101:                                              ; preds = %54, %48, %41, %34, %26
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %95

104:                                              ; preds = %86
  %105 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @trace_rpcgss_verify_mic(%struct.rpc_task* %105, i64 %106)
  %108 = load i32, i32* @EACCES, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %95
}

declare dso_local %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i64) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_buf_from_iov(%struct.kvec*, %struct.xdr_buf*) #1

declare dso_local i64 @gss_verify_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @XDR_QUADLEN(i64) #1

declare dso_local i32 @gss_put_ctx(%struct.gss_cl_ctx*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @trace_rpcgss_verify_mic(%struct.rpc_task*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
