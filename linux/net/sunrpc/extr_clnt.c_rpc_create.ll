; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_create_args = type { i32, i8*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }
%struct.xprt_create = type { i32, i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32, i32 }
%struct.sockaddr_un = type { i8* }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8 }
%struct.sockaddr_in6 = type { i8 }

@XPRT_TRANSPORT_BC = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_INFINITE_SLOTS = common dso_local global i32 0, align 4
@XPRT_CREATE_INFINITE_SLOTS = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NO_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@XPRT_CREATE_NO_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_create_args*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.xprt_create, align 8
  %6 = alloca [48 x i8], align 16
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rpc_create_args* %0, %struct.rpc_create_args** %3, align 8
  %12 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 0
  %13 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 1
  %17 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %16, align 8
  %20 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 3
  %22 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %21, align 8
  %25 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 4
  %26 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 5
  %30 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %29, align 8
  %33 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 6
  %34 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 7
  %38 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %37, align 4
  %41 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %42 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %1
  %46 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %47 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XPRT_TRANSPORT_BC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON_ONCE(i32 %53)
  %55 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %56 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.rpc_xprt*, %struct.rpc_xprt** %58, align 8
  store %struct.rpc_xprt* %59, %struct.rpc_xprt** %4, align 8
  %60 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %61 = icmp ne %struct.rpc_xprt* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %64 = call i32 @xprt_get(%struct.rpc_xprt* %63)
  %65 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %66 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %67 = call %struct.rpc_xprt* @rpc_create_xprt(%struct.rpc_create_args* %65, %struct.rpc_xprt* %66)
  %68 = bitcast %struct.rpc_xprt* %67 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %68, %struct.rpc_clnt** %2, align 8
  br label %198

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %72 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RPC_CLNT_CREATE_INFINITE_SLOTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @XPRT_CREATE_INFINITE_SLOTS, align 4
  %79 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %84 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RPC_CLNT_CREATE_NO_IDLE_TIMEOUT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* @XPRT_CREATE_NO_IDLE_TIMEOUT, align 4
  %91 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %89, %82
  %95 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %100 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = bitcast %struct.TYPE_5__* %101 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %102, %struct.sockaddr_un** %9, align 8
  %103 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %104 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %103, i32 0, i32 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = bitcast %struct.TYPE_5__* %105 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %106, %struct.sockaddr_in** %10, align 8
  %107 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %108 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = bitcast %struct.TYPE_5__* %109 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %110, %struct.sockaddr_in6** %11, align 8
  %111 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %111, align 16
  %112 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %113 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %112, i32 0, i32 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %134 [
    i32 128, label %117
    i32 130, label %123
    i32 129, label %129
  ]

117:                                              ; preds = %98
  %118 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %119 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %120 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @snprintf(i8* %118, i32 48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %121)
  br label %139

123:                                              ; preds = %98
  %124 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %125 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @snprintf(i8* %124, i32 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  br label %139

129:                                              ; preds = %98
  %130 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %131 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %131, i32 0, i32 0
  %133 = call i32 @snprintf(i8* %130, i32 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  br label %139

134:                                              ; preds = %98
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.rpc_xprt* @ERR_PTR(i32 %136)
  %138 = bitcast %struct.rpc_xprt* %137 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %138, %struct.rpc_clnt** %2, align 8
  br label %198

139:                                              ; preds = %129, %123, %117
  %140 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %141 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %5, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  br label %142

142:                                              ; preds = %139, %94
  %143 = call %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create* %5)
  store %struct.rpc_xprt* %143, %struct.rpc_xprt** %4, align 8
  %144 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %145 = call i64 @IS_ERR(%struct.rpc_xprt* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %149 = bitcast %struct.rpc_xprt* %148 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %149, %struct.rpc_clnt** %2, align 8
  br label %198

150:                                              ; preds = %142
  %151 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %152 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %154 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %161 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %160, i32 0, i32 0
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %150
  %163 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %164 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %165 = call %struct.rpc_xprt* @rpc_create_xprt(%struct.rpc_create_args* %163, %struct.rpc_xprt* %164)
  %166 = bitcast %struct.rpc_xprt* %165 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %166, %struct.rpc_clnt** %7, align 8
  %167 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %168 = bitcast %struct.rpc_clnt* %167 to %struct.rpc_xprt*
  %169 = call i64 @IS_ERR(%struct.rpc_xprt* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %162
  %172 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %173 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp sle i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %171, %162
  %177 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %177, %struct.rpc_clnt** %2, align 8
  br label %198

178:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %193, %178
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %182 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %179
  %187 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %188 = bitcast %struct.rpc_clnt* %187 to %struct.rpc_xprt*
  %189 = call i64 @rpc_clnt_add_xprt(%struct.rpc_xprt* %188, %struct.xprt_create* %5, i32* null, i32* null)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %196

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %179

196:                                              ; preds = %191, %179
  %197 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %197, %struct.rpc_clnt** %2, align 8
  br label %198

198:                                              ; preds = %196, %176, %147, %134, %62
  %199 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  ret %struct.rpc_clnt* %199
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xprt_get(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_xprt* @rpc_create_xprt(%struct.rpc_create_args*, %struct.rpc_xprt*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.rpc_xprt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_xprt*) #1

declare dso_local i64 @rpc_clnt_add_xprt(%struct.rpc_xprt*, %struct.xprt_create*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
