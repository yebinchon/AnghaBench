; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_12__, %struct.gss_svc_data*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.kvec* }
%struct.kvec = type { i32, i32* }
%struct.gss_svc_data = type { %struct.rsc*, i32*, %struct.rpc_gss_wire_cred }
%struct.rsc = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i32, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.kvec* }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RPC:       svcauth_gss: argv->iov_len = %zd\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_GSS_VERSION = common dso_local global i64 0, align 8
@rpc_autherr_badverf = common dso_local global i32 0, align 4
@rpcsec_gsserr_credproblem = common dso_local global i32 0, align 4
@rpc_autherr_rejectedcred = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@rpcsec_gsserr_ctxproblem = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i32 0, align 4
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@SVC_GARBAGE = common dso_local global i32 0, align 4
@SVC_COMPLETE = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svcauth_gss_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_accept(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gss_svc_data*, align 8
  %10 = alloca %struct.rpc_gss_wire_cred*, align 8
  %11 = alloca %struct.rsc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.kvec*, %struct.kvec** %18, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i64 0
  store %struct.kvec* %20, %struct.kvec** %6, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.kvec*, %struct.kvec** %23, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i64 0
  store %struct.kvec* %25, %struct.kvec** %7, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %26, i32 0, i32 4
  %28 = load %struct.gss_svc_data*, %struct.gss_svc_data** %27, align 8
  store %struct.gss_svc_data* %28, %struct.gss_svc_data** %9, align 8
  store %struct.rsc* null, %struct.rsc** %11, align 8
  %29 = load %struct.kvec*, %struct.kvec** %7, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.kvec*, %struct.kvec** %7, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %13, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %38 = call i32 @SVC_NET(%struct.svc_rqst* %37)
  %39 = load i32, i32* @sunrpc_net_id, align 4
  %40 = call %struct.sunrpc_net* @net_generic(i32 %38, i32 %39)
  store %struct.sunrpc_net* %40, %struct.sunrpc_net** %15, align 8
  %41 = load %struct.kvec*, %struct.kvec** %6, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @rpc_autherr_badcred, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %48 = icmp ne %struct.gss_svc_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.gss_svc_data* @kmalloc(i32 48, i32 %50)
  store %struct.gss_svc_data* %51, %struct.gss_svc_data** %9, align 8
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %54 = icmp ne %struct.gss_svc_data* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %313

56:                                               ; preds = %52
  %57 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 4
  store %struct.gss_svc_data* %57, %struct.gss_svc_data** %59, align 8
  %60 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %61 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %63 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %62, i32 0, i32 0
  store %struct.rsc* null, %struct.rsc** %63, align 8
  %64 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %65 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %64, i32 0, i32 2
  store %struct.rpc_gss_wire_cred* %65, %struct.rpc_gss_wire_cred** %10, align 8
  %66 = load %struct.kvec*, %struct.kvec** %6, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -7
  store i32* %70, i32** %12, align 8
  %71 = load %struct.kvec*, %struct.kvec** %6, align 8
  %72 = getelementptr inbounds %struct.kvec, %struct.kvec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 20
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  br label %313

76:                                               ; preds = %56
  %77 = load %struct.kvec*, %struct.kvec** %6, align 8
  %78 = call i64 @svc_getnl(%struct.kvec* %77)
  store i64 %78, i64* %8, align 8
  %79 = load %struct.kvec*, %struct.kvec** %6, align 8
  %80 = call i64 @svc_getnl(%struct.kvec* %79)
  %81 = load i64, i64* @RPC_GSS_VERSION, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %313

84:                                               ; preds = %76
  %85 = load %struct.kvec*, %struct.kvec** %6, align 8
  %86 = call i64 @svc_getnl(%struct.kvec* %85)
  %87 = trunc i64 %86 to i32
  %88 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %89 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.kvec*, %struct.kvec** %6, align 8
  %91 = call i64 @svc_getnl(%struct.kvec* %90)
  %92 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %93 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.kvec*, %struct.kvec** %6, align 8
  %95 = call i64 @svc_getnl(%struct.kvec* %94)
  %96 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %97 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.kvec*, %struct.kvec** %6, align 8
  %99 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %100 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %99, i32 0, i32 3
  %101 = call i64 @svc_safe_getnetobj(%struct.kvec* %98, %struct.TYPE_14__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %84
  br label %313

104:                                              ; preds = %84
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %107 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @round_up_to_quad(i32 %109)
  %111 = add nsw i64 %110, 20
  %112 = icmp ne i64 %105, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %313

114:                                              ; preds = %104
  %115 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %116 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 136
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %121 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %313

125:                                              ; preds = %119, %114
  %126 = load i32, i32* @rpc_autherr_badverf, align 4
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %129 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %169 [
    i32 134, label %131
    i32 137, label %131
    i32 136, label %146
    i32 135, label %146
  ]

131:                                              ; preds = %125, %125
  %132 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %133 = call i32 @SVC_NET(%struct.svc_rqst* %132)
  %134 = call i32 @use_gss_proxy(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %138 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @svcauth_gss_proxy_init(%struct.svc_rqst* %137, %struct.rpc_gss_wire_cred* %138, i32* %139)
  store i32 %140, i32* %3, align 4
  br label %333

141:                                              ; preds = %131
  %142 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %143 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @svcauth_gss_legacy_init(%struct.svc_rqst* %142, %struct.rpc_gss_wire_cred* %143, i32* %144)
  store i32 %145, i32* %3, align 4
  br label %333

146:                                              ; preds = %125, %125
  %147 = load i32, i32* @rpcsec_gsserr_credproblem, align 4
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %149 = load %struct.sunrpc_net*, %struct.sunrpc_net** %15, align 8
  %150 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %153 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %152, i32 0, i32 3
  %154 = call %struct.rsc* @gss_svc_searchbyctx(i32 %151, %struct.TYPE_14__* %153)
  store %struct.rsc* %154, %struct.rsc** %11, align 8
  %155 = load %struct.rsc*, %struct.rsc** %11, align 8
  %156 = icmp ne %struct.rsc* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %146
  br label %313

158:                                              ; preds = %146
  %159 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %160 = load %struct.rsc*, %struct.rsc** %11, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @gss_verify_header(%struct.svc_rqst* %159, %struct.rsc* %160, i32* %161, %struct.rpc_gss_wire_cred* %162, i32* %163)
  switch i32 %164, label %168 [
    i32 128, label %165
    i32 130, label %166
    i32 129, label %167
  ]

165:                                              ; preds = %158
  br label %168

166:                                              ; preds = %158
  br label %313

167:                                              ; preds = %158
  br label %319

168:                                              ; preds = %158, %165
  br label %172

169:                                              ; preds = %125
  %170 = load i32, i32* @rpc_autherr_rejectedcred, align 4
  %171 = load i32*, i32** %5, align 8
  store i32 %170, i32* %171, align 4
  br label %313

172:                                              ; preds = %168
  %173 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %174 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %310 [
    i32 135, label %176
    i32 136, label %205
  ]

176:                                              ; preds = %172
  %177 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %178 = load %struct.rsc*, %struct.rsc** %11, align 8
  %179 = getelementptr inbounds %struct.rsc, %struct.rsc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %182 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @gss_write_verf(%struct.svc_rqst* %177, %struct.TYPE_13__* %180, i64 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %313

187:                                              ; preds = %176
  %188 = load %struct.sunrpc_net*, %struct.sunrpc_net** %15, align 8
  %189 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.rsc*, %struct.rsc** %11, align 8
  %192 = getelementptr inbounds %struct.rsc, %struct.rsc* %191, i32 0, i32 0
  %193 = call i32 @sunrpc_cache_unhash(i32 %190, i32* %192)
  %194 = load %struct.kvec*, %struct.kvec** %7, align 8
  %195 = getelementptr inbounds %struct.kvec, %struct.kvec* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 4
  %198 = load i32, i32* @PAGE_SIZE, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  br label %319

201:                                              ; preds = %187
  %202 = load %struct.kvec*, %struct.kvec** %7, align 8
  %203 = load i32, i32* @RPC_SUCCESS, align 4
  %204 = call i32 @svc_putnl(%struct.kvec* %202, i32 %203)
  br label %317

205:                                              ; preds = %172
  %206 = load i32, i32* @rpcsec_gsserr_ctxproblem, align 4
  %207 = load i32*, i32** %5, align 8
  store i32 %206, i32* %207, align 4
  %208 = load %struct.kvec*, %struct.kvec** %7, align 8
  %209 = getelementptr inbounds %struct.kvec, %struct.kvec* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.kvec*, %struct.kvec** %7, align 8
  %212 = getelementptr inbounds %struct.kvec, %struct.kvec* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %217 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %216, i32 0, i32 1
  store i32* %215, i32** %217, align 8
  %218 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %219 = load %struct.rsc*, %struct.rsc** %11, align 8
  %220 = getelementptr inbounds %struct.rsc, %struct.rsc* %219, i32 0, i32 1
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %223 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @gss_write_verf(%struct.svc_rqst* %218, %struct.TYPE_13__* %221, i64 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %205
  br label %313

228:                                              ; preds = %205
  %229 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %230 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %229, i32 0, i32 2
  %231 = load %struct.rsc*, %struct.rsc** %11, align 8
  %232 = getelementptr inbounds %struct.rsc, %struct.rsc* %231, i32 0, i32 2
  %233 = bitcast %struct.TYPE_11__* %230 to i8*
  %234 = bitcast %struct.TYPE_11__* %232 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %233, i8* align 8 %234, i64 8, i1 false)
  %235 = load %struct.rsc*, %struct.rsc** %11, align 8
  %236 = getelementptr inbounds %struct.rsc, %struct.rsc* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @get_group_info(i32 %238)
  %240 = load i32, i32* @rpc_autherr_badcred, align 4
  %241 = load i32*, i32** %5, align 8
  store i32 %240, i32* %241, align 4
  %242 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %243 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  switch i64 %244, label %289 [
    i64 132, label %245
    i64 133, label %246
    i64 131, label %267
  ]

245:                                              ; preds = %228
  br label %290

246:                                              ; preds = %228
  %247 = load %struct.kvec*, %struct.kvec** %7, align 8
  %248 = call i32 @svc_putnl(%struct.kvec* %247, i32 0)
  %249 = load %struct.kvec*, %struct.kvec** %7, align 8
  %250 = call i32 @svc_putnl(%struct.kvec* %249, i32 0)
  %251 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %252 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %253 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %252, i32 0, i32 3
  %254 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %255 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.rsc*, %struct.rsc** %11, align 8
  %258 = getelementptr inbounds %struct.rsc, %struct.rsc* %257, i32 0, i32 1
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = call i32 @unwrap_integ_data(%struct.svc_rqst* %251, %struct.TYPE_12__* %253, i64 %256, %struct.TYPE_13__* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %246
  br label %311

263:                                              ; preds = %246
  %264 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %265 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %266 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  br label %290

267:                                              ; preds = %228
  %268 = load %struct.kvec*, %struct.kvec** %7, align 8
  %269 = call i32 @svc_putnl(%struct.kvec* %268, i32 0)
  %270 = load %struct.kvec*, %struct.kvec** %7, align 8
  %271 = call i32 @svc_putnl(%struct.kvec* %270, i32 0)
  %272 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %273 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %274 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %273, i32 0, i32 3
  %275 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %276 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.rsc*, %struct.rsc** %11, align 8
  %279 = getelementptr inbounds %struct.rsc, %struct.rsc* %278, i32 0, i32 1
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %279, align 8
  %281 = call i32 @unwrap_priv_data(%struct.svc_rqst* %272, %struct.TYPE_12__* %274, i64 %277, %struct.TYPE_13__* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %267
  br label %311

284:                                              ; preds = %267
  %285 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %286 = mul nsw i32 %285, 2
  %287 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %288 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 8
  br label %290

289:                                              ; preds = %228
  br label %313

290:                                              ; preds = %284, %263, %245
  %291 = load %struct.rsc*, %struct.rsc** %11, align 8
  %292 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  %293 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %292, i32 0, i32 0
  store %struct.rsc* %291, %struct.rsc** %293, align 8
  %294 = load %struct.rsc*, %struct.rsc** %11, align 8
  %295 = getelementptr inbounds %struct.rsc, %struct.rsc* %294, i32 0, i32 0
  %296 = call i32 @cache_get(i32* %295)
  %297 = load %struct.rsc*, %struct.rsc** %11, align 8
  %298 = getelementptr inbounds %struct.rsc, %struct.rsc* %297, i32 0, i32 1
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %303 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %304 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @gss_svc_to_pseudoflavor(i32 %301, i32 %302, i64 %305)
  %307 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %308 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  store i32 %306, i32* %309, align 4
  store i32 128, i32* %14, align 4
  br label %321

310:                                              ; preds = %172
  br label %311

311:                                              ; preds = %310, %283, %262
  %312 = load i32, i32* @SVC_GARBAGE, align 4
  store i32 %312, i32* %14, align 4
  br label %321

313:                                              ; preds = %289, %227, %186, %169, %166, %157, %124, %113, %103, %83, %75, %55
  %314 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %315 = load i32*, i32** %13, align 8
  %316 = call i32 @xdr_ressize_check(%struct.svc_rqst* %314, i32* %315)
  store i32 130, i32* %14, align 4
  br label %321

317:                                              ; preds = %201
  %318 = load i32, i32* @SVC_COMPLETE, align 4
  store i32 %318, i32* %14, align 4
  br label %321

319:                                              ; preds = %200, %167
  %320 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %320, i32* %14, align 4
  br label %321

321:                                              ; preds = %319, %317, %313, %311, %290
  %322 = load %struct.rsc*, %struct.rsc** %11, align 8
  %323 = icmp ne %struct.rsc* %322, null
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = load %struct.rsc*, %struct.rsc** %11, align 8
  %326 = getelementptr inbounds %struct.rsc, %struct.rsc* %325, i32 0, i32 0
  %327 = load %struct.sunrpc_net*, %struct.sunrpc_net** %15, align 8
  %328 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @cache_put(i32* %326, i32 %329)
  br label %331

331:                                              ; preds = %324, %321
  %332 = load i32, i32* %14, align 4
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %331, %141, %136
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.gss_svc_data* @kmalloc(i32, i32) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i64 @svc_safe_getnetobj(%struct.kvec*, %struct.TYPE_14__*) #1

declare dso_local i64 @round_up_to_quad(i32) #1

declare dso_local i32 @use_gss_proxy(i32) #1

declare dso_local i32 @svcauth_gss_proxy_init(%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*) #1

declare dso_local i32 @svcauth_gss_legacy_init(%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*) #1

declare dso_local %struct.rsc* @gss_svc_searchbyctx(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @gss_verify_header(%struct.svc_rqst*, %struct.rsc*, i32*, %struct.rpc_gss_wire_cred*, i32*) #1

declare dso_local i32 @gss_write_verf(%struct.svc_rqst*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @sunrpc_cache_unhash(i32, i32*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @unwrap_integ_data(%struct.svc_rqst*, %struct.TYPE_12__*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @unwrap_priv_data(%struct.svc_rqst*, %struct.TYPE_12__*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @cache_get(i32*) #1

declare dso_local i32 @gss_svc_to_pseudoflavor(i32, i32, i64) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
