; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_accept_sec_context_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_gssp_accept_sec_context_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.gssp_upcall_data = type { i32, %struct.svc_cred, %struct.TYPE_19__, %struct.TYPE_18__, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__, i32 }
%struct.svc_cred = type { i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.gssx_ctx = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.xdr_netobj }
%struct.xdr_netobj = type { %struct.TYPE_14__*, i32*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_21__ = type { %struct.xdr_netobj }
%struct.TYPE_20__ = type { %struct.TYPE_14__*, i32 }
%struct.gssx_arg_accept_sec_context = type { %struct.gssx_ctx*, i32 }
%struct.gssx_res_accept_sec_context = type { %struct.TYPE_23__, %struct.gssx_ctx*, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.rpc_message = type { i32*, %struct.gssx_res_accept_sec_context*, %struct.gssx_arg_accept_sec_context*, i32* }

@GSSX_max_princ_sz = common dso_local global i32 0, align 4
@GSS_OID_MAX_LEN = common dso_local global i32 0, align 4
@GSSX_max_output_handle_sz = common dso_local global i32 0, align 4
@gssp_procedures = common dso_local global i32* null, align 8
@GSSX_ACCEPT_SEC_CONTEXT = common dso_local global i64 0, align 8
@GSSX_max_output_token_sz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssp_accept_sec_context_upcall(%struct.net* %0, %struct.gssp_upcall_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.gssp_upcall_data*, align 8
  %6 = alloca %struct.gssx_ctx, align 8
  %7 = alloca %struct.gssx_arg_accept_sec_context, align 8
  %8 = alloca %struct.gssx_ctx, align 8
  %9 = alloca %struct.gssx_res_accept_sec_context, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca %struct.xdr_netobj, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.gssp_upcall_data* %1, %struct.gssp_upcall_data** %5, align 8
  %15 = bitcast %struct.gssx_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 80, i1 false)
  %16 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %6, i32 0, i32 4
  %17 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %18 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %17, i32 0, i32 6
  %19 = bitcast %struct.TYPE_15__* %16 to i8*
  %20 = bitcast %struct.TYPE_15__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %7, i32 0, i32 0
  store %struct.gssx_ctx* null, %struct.gssx_ctx** %21, align 8
  %22 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %7, i32 0, i32 1
  %23 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %24 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 8
  %26 = bitcast %struct.gssx_ctx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 80, i1 false)
  %27 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %28, i32 0, i32 3
  %30 = load i32, i32* @GSSX_max_princ_sz, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %32, i32 0, i32 3
  %34 = load i32, i32* @GSSX_max_princ_sz, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i32, i32* @GSS_OID_MAX_LEN, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* @GSSX_max_output_handle_sz, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 0
  %42 = bitcast %struct.TYPE_23__* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 1
  store %struct.gssx_ctx* %8, %struct.gssx_ctx** %43, align 8
  %44 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 2
  %45 = bitcast %struct.TYPE_17__* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 8, i1 false)
  %46 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 3
  %47 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %48 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %47, i32 0, i32 7
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %46, align 8
  %49 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.gssx_res_accept_sec_context* %9, %struct.gssx_res_accept_sec_context** %50, align 8
  %51 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  store %struct.gssx_arg_accept_sec_context* %7, %struct.gssx_arg_accept_sec_context** %51, align 8
  %52 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 3
  %53 = load i32*, i32** @gssp_procedures, align 8
  %54 = load i64, i64* @GSSX_ACCEPT_SEC_CONTEXT, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %52, align 8
  %56 = bitcast %struct.xdr_netobj* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 24, i1 false)
  %57 = bitcast %struct.xdr_netobj* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 24, i1 false)
  %58 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %59 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, %struct.gssx_arg_accept_sec_context* %7, i32 0, i32 0
  store %struct.gssx_ctx* %6, %struct.gssx_ctx** %64, align 8
  br label %65

65:                                               ; preds = %63, %2
  %66 = load i32, i32* @GSSX_max_output_token_sz, align 4
  %67 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 3
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = call i32 @gssp_alloc_receive_pages(%struct.gssx_arg_accept_sec_context* %7)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %3, align 4
  br label %219

75:                                               ; preds = %65
  %76 = load %struct.net*, %struct.net** %4, align 8
  %77 = call i32 @gssp_call(%struct.net* %76, %struct.rpc_message* %10)
  store i32 %77, i32* %13, align 4
  %78 = call i32 @gssp_free_receive_pages(%struct.gssx_arg_accept_sec_context* %7)
  %79 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %83 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %88 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 1
  %90 = load %struct.gssx_ctx*, %struct.gssx_ctx** %89, align 8
  %91 = icmp ne %struct.gssx_ctx* %90, null
  br i1 %91, label %92, label %134

92:                                               ; preds = %75
  %93 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %94 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 3
  %96 = bitcast %struct.TYPE_18__* %94 to i8*
  %97 = bitcast %struct.TYPE_18__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 4, i1 false)
  %98 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %102 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = icmp ne %struct.TYPE_14__* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %92
  %109 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %110 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %117 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i32 %112, %struct.TYPE_14__* %115, i32 %119)
  %121 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = call i32 @kfree(%struct.TYPE_14__* %123)
  br label %125

125:                                              ; preds = %108, %92
  %126 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = bitcast %struct.xdr_netobj* %11 to i8*
  %129 = bitcast %struct.xdr_netobj* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 24, i1 false)
  %130 = getelementptr inbounds %struct.gssx_ctx, %struct.gssx_ctx* %8, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = bitcast %struct.xdr_netobj* %12 to i8*
  %133 = bitcast %struct.xdr_netobj* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 24, i1 false)
  br label %134

134:                                              ; preds = %125, %75
  %135 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %14, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %160

149:                                              ; preds = %139
  %150 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %151 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = bitcast %struct.TYPE_14__* %154 to %struct.svc_cred*
  %156 = bitcast %struct.svc_cred* %151 to i8*
  %157 = bitcast %struct.svc_cred* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 24, i1 false)
  %158 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %159 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %149, %139
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = call i32 @kfree(%struct.TYPE_14__* %163)
  br label %165

165:                                              ; preds = %160, %134
  %166 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.gssx_res_accept_sec_context, %struct.gssx_res_accept_sec_context* %9, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = call i32 @kfree(%struct.TYPE_14__* %173)
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %177 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %211

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = icmp ne %struct.TYPE_14__* %182, null
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = call i8* @gssp_stringify(%struct.xdr_netobj* %11)
  %186 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %187 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %187, i32 0, i32 2
  store i8* %185, i8** %188, align 8
  %189 = call i8* @gssp_stringify(%struct.xdr_netobj* %11)
  %190 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %191 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %191, i32 0, i32 1
  store i8* %189, i8** %192, align 8
  %193 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %194 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %194, i32 0, i32 1
  %196 = call i32 @gssp_hostbased_service(i8** %195)
  br label %197

197:                                              ; preds = %184, %180
  %198 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = icmp ne %struct.TYPE_14__* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = call i8* @gssp_stringify(%struct.xdr_netobj* %12)
  %203 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %204 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  %206 = load %struct.gssp_upcall_data*, %struct.gssp_upcall_data** %5, align 8
  %207 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %207, i32 0, i32 0
  %209 = call i32 @gssp_hostbased_service(i8** %208)
  br label %210

210:                                              ; preds = %201, %197
  br label %211

211:                                              ; preds = %210, %175
  %212 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = call i32 @kfree(%struct.TYPE_14__* %213)
  %215 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = call i32 @kfree(%struct.TYPE_14__* %216)
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %211, %73
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gssp_alloc_receive_pages(%struct.gssx_arg_accept_sec_context*) #2

declare dso_local i32 @gssp_call(%struct.net*, %struct.rpc_message*) #2

declare dso_local i32 @gssp_free_receive_pages(%struct.gssx_arg_accept_sec_context*) #2

declare dso_local i32 @memcpy(i32, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @kfree(%struct.TYPE_14__*) #2

declare dso_local i8* @gssp_stringify(%struct.xdr_netobj*) #2

declare dso_local i32 @gssp_hostbased_service(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
