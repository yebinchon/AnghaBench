; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_marshal_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_marshal_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.rpcrdma_req = type { %struct.TYPE_14__, i32, %struct.xdr_stream }
%struct.TYPE_14__ = type { i32 }
%struct.xdr_stream = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@rpcrdma_version = common dso_local global i32 0, align 4
@RPCAUTH_AUTH_DATATOUCH = common dso_local global i32 0, align 4
@rpcrdma_noch = common dso_local global i32 0, align 4
@XDRBUF_READ = common dso_local global i32 0, align 4
@rpcrdma_writech = common dso_local global i32 0, align 4
@rpcrdma_replych = common dso_local global i32 0, align 4
@rdma_msg = common dso_local global i8* null, align 8
@XDRBUF_WRITE = common dso_local global i32 0, align 4
@rpcrdma_readch = common dso_local global i32 0, align 4
@rdma_nomsg = common dso_local global i32 0, align 4
@rpcrdma_areadch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_marshal_req(%struct.rpcrdma_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.rpcrdma_req*, align 8
  %7 = alloca %struct.xdr_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %4, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %5, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %14 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %13)
  store %struct.rpcrdma_req* %14, %struct.rpcrdma_req** %6, align 8
  %15 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %15, i32 0, i32 2
  store %struct.xdr_stream* %16, %struct.xdr_stream** %7, align 8
  %17 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %17, i32 0, i32 0
  %19 = call i32 @rpcrdma_set_xdrlen(%struct.TYPE_14__* %18, i32 0)
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %21 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %21, i32 0, i32 0
  %23 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rdmab_data(i32 %25)
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %28 = call i32 @xdr_init_encode(%struct.xdr_stream* %20, %struct.TYPE_14__* %22, i32 %26, %struct.rpc_rqst* %27)
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %32 = call i32* @xdr_reserve_space(%struct.xdr_stream* %31, i32 16)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %178

36:                                               ; preds = %2
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* @rpcrdma_version, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %53 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RPCAUTH_AUTH_DATATOUCH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %65 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %66 = call i64 @rpcrdma_results_inline(%struct.rpcrdma_xprt* %64, %struct.rpc_rqst* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %36
  %69 = load i32, i32* @rpcrdma_noch, align 4
  store i32 %69, i32* %9, align 4
  br label %91

70:                                               ; preds = %36
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %75 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @XDRBUF_READ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %83 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %84 = call i64 @rpcrdma_nonpayload_inline(%struct.rpcrdma_xprt* %82, %struct.rpc_rqst* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @rpcrdma_writech, align 4
  store i32 %87, i32* %9, align 4
  br label %90

88:                                               ; preds = %81, %73, %70
  %89 = load i32, i32* @rpcrdma_replych, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %93 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %94 = call i64 @rpcrdma_args_inline(%struct.rpcrdma_xprt* %92, %struct.rpc_rqst* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i8*, i8** @rdma_msg, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32, i32* @rpcrdma_noch, align 4
  store i32 %101, i32* %8, align 4
  br label %130

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %107 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @XDRBUF_WRITE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i8*, i8** @rdma_msg, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  %118 = load i32, i32* @rpcrdma_readch, align 4
  store i32 %118, i32* %8, align 4
  br label %129

119:                                              ; preds = %105, %102
  %120 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %121 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @rdma_nomsg, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  %128 = load i32, i32* @rpcrdma_areadch, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %119, %113
  br label %130

130:                                              ; preds = %129, %96
  %131 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %132 = call i32 @frwr_recycle(%struct.rpcrdma_req* %131)
  %133 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %134 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %135 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @rpcrdma_encode_read_list(%struct.rpcrdma_xprt* %133, %struct.rpcrdma_req* %134, %struct.rpc_rqst* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %178

141:                                              ; preds = %130
  %142 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %143 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %144 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @rpcrdma_encode_write_list(%struct.rpcrdma_xprt* %142, %struct.rpcrdma_req* %143, %struct.rpc_rqst* %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %178

150:                                              ; preds = %141
  %151 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %152 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %153 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @rpcrdma_encode_reply_chunk(%struct.rpcrdma_xprt* %151, %struct.rpcrdma_req* %152, %struct.rpc_rqst* %153, i32 %154)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %178

159:                                              ; preds = %150
  %160 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %161 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %162 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %163 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %167 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %166, i32 0, i32 0
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @rpcrdma_prepare_send_sges(%struct.rpcrdma_xprt* %160, %struct.rpcrdma_req* %161, i32 %165, %struct.TYPE_15__* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %178

173:                                              ; preds = %159
  %174 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @trace_xprtrdma_marshal(%struct.rpcrdma_req* %174, i32 %175, i32 %176)
  store i32 0, i32* %3, align 4
  br label %190

178:                                              ; preds = %172, %158, %149, %140, %35
  %179 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @trace_xprtrdma_marshal_failed(%struct.rpc_rqst* %179, i32 %180)
  %182 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %183 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %188 = call i32 @frwr_reset(%struct.rpcrdma_req* %187)
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %178, %173
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local i32 @rpcrdma_set_xdrlen(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, %struct.TYPE_14__*, i32, %struct.rpc_rqst*) #1

declare dso_local i32 @rdmab_data(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @rpcrdma_results_inline(%struct.rpcrdma_xprt*, %struct.rpc_rqst*) #1

declare dso_local i64 @rpcrdma_nonpayload_inline(%struct.rpcrdma_xprt*, %struct.rpc_rqst*) #1

declare dso_local i64 @rpcrdma_args_inline(%struct.rpcrdma_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @frwr_recycle(%struct.rpcrdma_req*) #1

declare dso_local i32 @rpcrdma_encode_read_list(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32) #1

declare dso_local i32 @rpcrdma_encode_write_list(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32) #1

declare dso_local i32 @rpcrdma_encode_reply_chunk(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32) #1

declare dso_local i32 @rpcrdma_prepare_send_sges(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @trace_xprtrdma_marshal(%struct.rpcrdma_req*, i32, i32) #1

declare dso_local i32 @trace_xprtrdma_marshal_failed(%struct.rpc_rqst*, i32) #1

declare dso_local i32 @frwr_reset(%struct.rpcrdma_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
