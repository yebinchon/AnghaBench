; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_new_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_new_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_create_args = type { i8*, i64, i32, i32, i32*, i64, i32, i32, %struct.rpc_program* }
%struct.rpc_program = type { i64, i32, i32, %struct.rpc_version**, i32 }
%struct.rpc_version = type { i32, i32, i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt = type { %struct.rpc_timeout* }
%struct.rpc_timeout = type { i32 }
%struct.rpc_clnt = type { i32, i32*, i32, %struct.TYPE_3__*, i32, i32*, i32, %struct.rpc_timeout, i32, i32, %struct.rpc_program*, i32, i32, i32, i32, i32, i32, %struct.rpc_clnt* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [48 x i8] c"RPC:       creating %s client for %s (xprt %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.rpc_create_args*, %struct.rpc_xprt_switch*, %struct.rpc_xprt*, %struct.rpc_clnt*)* @rpc_new_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpc_new_client(%struct.rpc_create_args* %0, %struct.rpc_xprt_switch* %1, %struct.rpc_xprt* %2, %struct.rpc_clnt* %3) #0 {
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.rpc_create_args*, align 8
  %7 = alloca %struct.rpc_xprt_switch*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca %struct.rpc_clnt*, align 8
  %10 = alloca %struct.rpc_program*, align 8
  %11 = alloca %struct.rpc_version*, align 8
  %12 = alloca %struct.rpc_clnt*, align 8
  %13 = alloca %struct.rpc_timeout*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.rpc_create_args* %0, %struct.rpc_create_args** %6, align 8
  store %struct.rpc_xprt_switch* %1, %struct.rpc_xprt_switch** %7, align 8
  store %struct.rpc_xprt* %2, %struct.rpc_xprt** %8, align 8
  store %struct.rpc_clnt* %3, %struct.rpc_clnt** %9, align 8
  %16 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %16, i32 0, i32 8
  %18 = load %struct.rpc_program*, %struct.rpc_program** %17, align 8
  store %struct.rpc_program* %18, %struct.rpc_program** %10, align 8
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %12, align 8
  %19 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %20 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %23 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %26 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, %struct.rpc_xprt* %28)
  %30 = call i32 (...) @rpciod_up()
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %235

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %41 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %233

45:                                               ; preds = %34
  %46 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %47 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %46, i32 0, i32 3
  %48 = load %struct.rpc_version**, %struct.rpc_version*** %47, align 8
  %49 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %50 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.rpc_version*, %struct.rpc_version** %48, i64 %51
  %53 = load %struct.rpc_version*, %struct.rpc_version** %52, align 8
  store %struct.rpc_version* %53, %struct.rpc_version** %11, align 8
  %54 = load %struct.rpc_version*, %struct.rpc_version** %11, align 8
  %55 = icmp eq %struct.rpc_version* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %233

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.rpc_clnt* @kzalloc(i32 104, i32 %60)
  store %struct.rpc_clnt* %61, %struct.rpc_clnt** %12, align 8
  %62 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %63 = icmp ne %struct.rpc_clnt* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %233

65:                                               ; preds = %57
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %67 = icmp ne %struct.rpc_clnt* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  %70 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi %struct.rpc_clnt* [ %66, %68 ], [ %70, %69 ]
  %73 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %74 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %73, i32 0, i32 17
  store %struct.rpc_clnt* %72, %struct.rpc_clnt** %74, align 8
  %75 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %76 = call i32 @rpc_alloc_clid(%struct.rpc_clnt* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %230

80:                                               ; preds = %71
  %81 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %82 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @get_cred(i32 %83)
  %85 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %86 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.rpc_version*, %struct.rpc_version** %11, align 8
  %88 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %91 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %90, i32 0, i32 16
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rpc_version*, %struct.rpc_version** %11, align 8
  %93 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %96 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %95, i32 0, i32 15
  store i32 %94, i32* %96, align 8
  %97 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %98 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %80
  br label %107

102:                                              ; preds = %80
  %103 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %104 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  br label %107

107:                                              ; preds = %102, %101
  %108 = phi i64 [ %99, %101 ], [ %106, %102 ]
  %109 = trunc i64 %108 to i32
  %110 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %111 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rpc_version*, %struct.rpc_version** %11, align 8
  %113 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %116 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %115, i32 0, i32 13
  store i32 %114, i32* %116, align 8
  %117 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %118 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %121 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %120, i32 0, i32 12
  store i32 %119, i32* %121, align 4
  %122 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %123 = call i32* @rpc_alloc_iostats(%struct.rpc_clnt* %122)
  %124 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %125 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %127 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %126, i32 0, i32 11
  %128 = call i32 @rpc_init_pipe_dir_head(i32* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %15, align 4
  %131 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %132 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %107
  br label %223

136:                                              ; preds = %107
  %137 = load %struct.rpc_program*, %struct.rpc_program** %10, align 8
  %138 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %139 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %138, i32 0, i32 10
  store %struct.rpc_program* %137, %struct.rpc_program** %139, align 8
  %140 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %141 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %140, i32 0, i32 9
  %142 = call i32 @INIT_LIST_HEAD(i32* %141)
  %143 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %144 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %143, i32 0, i32 8
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %147 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %146, i32 0, i32 0
  %148 = load %struct.rpc_timeout*, %struct.rpc_timeout** %147, align 8
  store %struct.rpc_timeout* %148, %struct.rpc_timeout** %13, align 8
  %149 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %150 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %136
  %154 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %155 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %154, i32 0, i32 7
  %156 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %157 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @memcpy(%struct.rpc_timeout* %155, i32* %158, i32 4)
  %160 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %161 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %160, i32 0, i32 7
  store %struct.rpc_timeout* %161, %struct.rpc_timeout** %13, align 8
  br label %162

162:                                              ; preds = %153, %136
  %163 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %164 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %165 = load %struct.rpc_timeout*, %struct.rpc_timeout** %13, align 8
  %166 = call i32 @rpc_clnt_set_transport(%struct.rpc_clnt* %163, %struct.rpc_xprt* %164, %struct.rpc_timeout* %165)
  %167 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %168 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %167, i32 0, i32 6
  %169 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %170 = call i32 @xprt_iter_init(i32* %168, %struct.rpc_xprt_switch* %169)
  %171 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %172 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %171)
  %173 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %174 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %173, i32 0, i32 4
  %175 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %176 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %175, i32 0, i32 5
  store i32* %174, i32** %176, align 8
  %177 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %178 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %177, i32 0, i32 4
  %179 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %180 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %179, i32 0, i32 3
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @rpc_init_rtt(i32* %178, i32 %183)
  %185 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %186 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %185, i32 0, i32 2
  %187 = call i32 @atomic_set(i32* %186, i32 1)
  %188 = load i8*, i8** %14, align 8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %162
  %191 = call %struct.TYPE_4__* (...) @utsname()
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %14, align 8
  br label %194

194:                                              ; preds = %190, %162
  %195 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = call i32 @rpc_clnt_set_nodename(%struct.rpc_clnt* %195, i8* %196)
  %198 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %199 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %200 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.rpc_create_args*, %struct.rpc_create_args** %6, align 8
  %203 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @rpc_client_register(%struct.rpc_clnt* %198, i32 %201, i32 %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %194
  br label %218

209:                                              ; preds = %194
  %210 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %211 = icmp ne %struct.rpc_clnt* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %214 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %213, i32 0, i32 2
  %215 = call i32 @atomic_inc(i32* %214)
  br label %216

216:                                              ; preds = %212, %209
  %217 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  store %struct.rpc_clnt* %217, %struct.rpc_clnt** %5, align 8
  br label %242

218:                                              ; preds = %208
  %219 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %220 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @rpc_free_iostats(i32* %221)
  br label %223

223:                                              ; preds = %218, %135
  %224 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %225 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @put_cred(i32 %226)
  %228 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %229 = call i32 @rpc_free_clid(%struct.rpc_clnt* %228)
  br label %230

230:                                              ; preds = %223, %79
  %231 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %232 = call i32 @kfree(%struct.rpc_clnt* %231)
  br label %233

233:                                              ; preds = %230, %64, %56, %44
  %234 = call i32 (...) @rpciod_down()
  br label %235

235:                                              ; preds = %233, %33
  %236 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %237 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %236)
  %238 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %239 = call i32 @xprt_put(%struct.rpc_xprt* %238)
  %240 = load i32, i32* %15, align 4
  %241 = call %struct.rpc_clnt* @ERR_PTR(i32 %240)
  store %struct.rpc_clnt* %241, %struct.rpc_clnt** %5, align 8
  br label %242

242:                                              ; preds = %235, %216
  %243 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  ret %struct.rpc_clnt* %243
}

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.rpc_xprt*) #1

declare dso_local i32 @rpciod_up(...) #1

declare dso_local %struct.rpc_clnt* @kzalloc(i32, i32) #1

declare dso_local i32 @rpc_alloc_clid(%struct.rpc_clnt*) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32* @rpc_alloc_iostats(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_init_pipe_dir_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(%struct.rpc_timeout*, i32*, i32) #1

declare dso_local i32 @rpc_clnt_set_transport(%struct.rpc_clnt*, %struct.rpc_xprt*, %struct.rpc_timeout*) #1

declare dso_local i32 @xprt_iter_init(i32*, %struct.rpc_xprt_switch*) #1

declare dso_local i32 @xprt_switch_put(%struct.rpc_xprt_switch*) #1

declare dso_local i32 @rpc_init_rtt(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @utsname(...) #1

declare dso_local i32 @rpc_clnt_set_nodename(%struct.rpc_clnt*, i8*) #1

declare dso_local i32 @rpc_client_register(%struct.rpc_clnt*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rpc_free_iostats(i32*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @rpc_free_clid(%struct.rpc_clnt*) #1

declare dso_local i32 @kfree(%struct.rpc_clnt*) #1

declare dso_local i32 @rpciod_down(...) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
