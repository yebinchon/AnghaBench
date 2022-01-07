; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { i64, %struct.gss_auth*, i32, %struct.TYPE_5__*, %struct.gss_pipe**, i32, %struct.rpc_auth, %struct.rpc_clnt*, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.gss_pipe = type { i32 }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.rpc_auth_create_args = type { i64, i32 }
%struct.rpc_clnt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GSS_CRED_SLACK = common dso_local global i32 0, align 4
@GSS_VERF_SLACK = common dso_local global i32 0, align 4
@authgss_ops = common dso_local global i32 0, align 4
@RPCAUTH_AUTH_DATATOUCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gssd\00", align 1
@gss_upcall_ops_v1 = common dso_local global i32 0, align 4
@gss_upcall_ops_v0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_auth* (%struct.rpc_auth_create_args*, %struct.rpc_clnt*)* @gss_create_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_auth* @gss_create_new(%struct.rpc_auth_create_args* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.gss_auth*, align 8
  %4 = alloca %struct.rpc_auth_create_args*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gss_auth*, align 8
  %8 = alloca %struct.gss_pipe*, align 8
  %9 = alloca %struct.rpc_auth*, align 8
  %10 = alloca i32, align 4
  store %struct.rpc_auth_create_args* %0, %struct.rpc_auth_create_args** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  %11 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @try_module_get(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.gss_auth* @ERR_PTR(i32 %20)
  store %struct.gss_auth* %21, %struct.gss_auth** %3, align 8
  br label %211

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.gss_auth* @kmalloc(i32 104, i32 %23)
  store %struct.gss_auth* %24, %struct.gss_auth** %7, align 8
  %25 = icmp ne %struct.gss_auth* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %203

27:                                               ; preds = %22
  %28 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %29 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %28, i32 0, i32 8
  %30 = call i32 @INIT_HLIST_NODE(i32* %29)
  %31 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %32 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %31, i32 0, i32 1
  store %struct.gss_auth* null, %struct.gss_auth** %32, align 8
  %33 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.gss_auth* @kstrdup(i64 %40, i32 %41)
  %43 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %44 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %43, i32 0, i32 1
  store %struct.gss_auth* %42, %struct.gss_auth** %44, align 8
  %45 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %46 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %45, i32 0, i32 1
  %47 = load %struct.gss_auth*, %struct.gss_auth** %46, align 8
  %48 = icmp eq %struct.gss_auth* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %196

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %53 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %54 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %53, i32 0, i32 7
  store %struct.rpc_clnt* %52, %struct.rpc_clnt** %54, align 8
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %56 = call i32 @rpc_net_ns(%struct.rpc_clnt* %55)
  %57 = call i32 @get_net(i32 %56)
  %58 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %59 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.TYPE_5__* @gss_mech_get_by_pseudoflavor(i32 %62)
  %64 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %65 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %64, i32 0, i32 3
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %65, align 8
  %66 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %67 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %51
  br label %191

71:                                               ; preds = %51
  %72 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %73 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @gss_pseudoflavor_to_service(%struct.TYPE_5__* %74, i32 %75)
  %77 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %78 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %80 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %186

84:                                               ; preds = %71
  %85 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %86 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @gssd_running(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %186

91:                                               ; preds = %84
  %92 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %93 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %92, i32 0, i32 6
  store %struct.rpc_auth* %93, %struct.rpc_auth** %9, align 8
  %94 = load i32, i32* @GSS_CRED_SLACK, align 4
  %95 = ashr i32 %94, 2
  %96 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %97 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @GSS_VERF_SLACK, align 4
  %99 = ashr i32 %98, 2
  %100 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %101 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @GSS_VERF_SLACK, align 4
  %103 = ashr i32 %102, 2
  %104 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %105 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @GSS_VERF_SLACK, align 4
  %107 = ashr i32 %106, 2
  %108 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %109 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %111 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %110, i32 0, i32 5
  store i32 0, i32* %111, align 4
  %112 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %113 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %112, i32 0, i32 7
  store i32* @authgss_ops, i32** %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %116 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %118 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @gss_pseudoflavor_to_datatouch(%struct.TYPE_5__* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %91
  %124 = load i32, i32* @RPCAUTH_AUTH_DATATOUCH, align 4
  %125 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %126 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %91
  %130 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %131 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %130, i32 0, i32 4
  %132 = call i32 @refcount_set(i32* %131, i32 1)
  %133 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %134 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %133, i32 0, i32 5
  %135 = call i32 @kref_init(i32* %134)
  %136 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %137 = call i32 @rpcauth_init_credcache(%struct.rpc_auth* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %186

141:                                              ; preds = %129
  %142 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %143 = call %struct.gss_pipe* @gss_pipe_get(%struct.rpc_clnt* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* @gss_upcall_ops_v1)
  store %struct.gss_pipe* %143, %struct.gss_pipe** %8, align 8
  %144 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %145 = call i64 @IS_ERR(%struct.gss_pipe* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %149 = call i32 @PTR_ERR(%struct.gss_pipe* %148)
  store i32 %149, i32* %10, align 4
  br label %183

150:                                              ; preds = %141
  %151 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %152 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %153 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %152, i32 0, i32 4
  %154 = load %struct.gss_pipe**, %struct.gss_pipe*** %153, align 8
  %155 = getelementptr inbounds %struct.gss_pipe*, %struct.gss_pipe** %154, i64 1
  store %struct.gss_pipe* %151, %struct.gss_pipe** %155, align 8
  %156 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %157 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %158 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call %struct.gss_pipe* @gss_pipe_get(%struct.rpc_clnt* %156, i8* %161, i32* @gss_upcall_ops_v0)
  store %struct.gss_pipe* %162, %struct.gss_pipe** %8, align 8
  %163 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %164 = call i64 @IS_ERR(%struct.gss_pipe* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %150
  %167 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %168 = call i32 @PTR_ERR(%struct.gss_pipe* %167)
  store i32 %168, i32* %10, align 4
  br label %176

169:                                              ; preds = %150
  %170 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %171 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %172 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %171, i32 0, i32 4
  %173 = load %struct.gss_pipe**, %struct.gss_pipe*** %172, align 8
  %174 = getelementptr inbounds %struct.gss_pipe*, %struct.gss_pipe** %173, i64 0
  store %struct.gss_pipe* %170, %struct.gss_pipe** %174, align 8
  %175 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  store %struct.gss_auth* %175, %struct.gss_auth** %3, align 8
  br label %211

176:                                              ; preds = %166
  %177 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %178 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %177, i32 0, i32 4
  %179 = load %struct.gss_pipe**, %struct.gss_pipe*** %178, align 8
  %180 = getelementptr inbounds %struct.gss_pipe*, %struct.gss_pipe** %179, i64 1
  %181 = load %struct.gss_pipe*, %struct.gss_pipe** %180, align 8
  %182 = call i32 @gss_pipe_free(%struct.gss_pipe* %181)
  br label %183

183:                                              ; preds = %176, %147
  %184 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %185 = call i32 @rpcauth_destroy_credcache(%struct.rpc_auth* %184)
  br label %186

186:                                              ; preds = %183, %140, %90, %83
  %187 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %188 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %187, i32 0, i32 3
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = call i32 @gss_mech_put(%struct.TYPE_5__* %189)
  br label %191

191:                                              ; preds = %186, %70
  %192 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %193 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @put_net(i32 %194)
  br label %196

196:                                              ; preds = %191, %49
  %197 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %198 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %197, i32 0, i32 1
  %199 = load %struct.gss_auth*, %struct.gss_auth** %198, align 8
  %200 = call i32 @kfree(%struct.gss_auth* %199)
  %201 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %202 = call i32 @kfree(%struct.gss_auth* %201)
  br label %203

203:                                              ; preds = %196, %26
  %204 = load i32, i32* @THIS_MODULE, align 4
  %205 = call i32 @module_put(i32 %204)
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @trace_rpcgss_createauth(i32 %206, i32 %207)
  %209 = load i32, i32* %10, align 4
  %210 = call %struct.gss_auth* @ERR_PTR(i32 %209)
  store %struct.gss_auth* %210, %struct.gss_auth** %3, align 8
  br label %211

211:                                              ; preds = %203, %169, %19
  %212 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  ret %struct.gss_auth* %212
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.gss_auth* @ERR_PTR(i32) #1

declare dso_local %struct.gss_auth* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local %struct.gss_auth* @kstrdup(i64, i32) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @rpc_net_ns(%struct.rpc_clnt*) #1

declare dso_local %struct.TYPE_5__* @gss_mech_get_by_pseudoflavor(i32) #1

declare dso_local i64 @gss_pseudoflavor_to_service(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gssd_running(i32) #1

declare dso_local i64 @gss_pseudoflavor_to_datatouch(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rpcauth_init_credcache(%struct.rpc_auth*) #1

declare dso_local %struct.gss_pipe* @gss_pipe_get(%struct.rpc_clnt*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gss_pipe*) #1

declare dso_local i32 @PTR_ERR(%struct.gss_pipe*) #1

declare dso_local i32 @gss_pipe_free(%struct.gss_pipe*) #1

declare dso_local i32 @rpcauth_destroy_credcache(%struct.rpc_auth*) #1

declare dso_local i32 @gss_mech_put(%struct.TYPE_5__*) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @kfree(%struct.gss_auth*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @trace_rpcgss_createauth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
