; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_handle_connect_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_handle_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_7__, %struct.svcxprt_rdma* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.svcxprt_rdma = type { %struct.TYPE_8__, i32, i32, %struct.rdma_cm_id*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.rdma_conn_param = type { i32 }
%struct.sockaddr = type { i32 }

@XPT_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.rdma_conn_param*)* @handle_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_connect_req(%struct.rdma_cm_id* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.svcxprt_rdma*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %4, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 1
  %10 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %9, align 8
  store %struct.svcxprt_rdma* %10, %struct.svcxprt_rdma** %5, align 8
  %11 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %12 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %16 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.svcxprt_rdma* @svc_rdma_create_xprt(i32 %14, i32 %18)
  store %struct.svcxprt_rdma* %19, %struct.svcxprt_rdma** %6, align 8
  %20 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %21 = icmp ne %struct.svcxprt_rdma* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %88

23:                                               ; preds = %2
  %24 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %26 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %25, i32 0, i32 3
  store %struct.rdma_cm_id* %24, %struct.rdma_cm_id** %26, align 8
  %27 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %28, i32 0, i32 1
  store %struct.svcxprt_rdma* %27, %struct.svcxprt_rdma** %29, align 8
  %30 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %31 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %32 = call i32 @svc_rdma_parse_connect_private(%struct.svcxprt_rdma* %30, %struct.rdma_conn_param* %31)
  %33 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %37 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %39 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %38, i32 0, i32 3
  %40 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %39, align 8
  %41 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = bitcast i32* %43 to %struct.sockaddr*
  store %struct.sockaddr* %44, %struct.sockaddr** %7, align 8
  %45 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %46 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %45, i32 0, i32 0
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = call i32 @svc_addr_len(%struct.sockaddr* %48)
  %50 = call i32 @svc_xprt_set_remote(%struct.TYPE_8__* %46, %struct.sockaddr* %47, i32 %49)
  %51 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %52 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to %struct.sockaddr*
  %55 = call i32 @rpc_set_port(%struct.sockaddr* %54, i32 0)
  %56 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %57 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %56, i32 0, i32 3
  %58 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %57, align 8
  %59 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to %struct.sockaddr*
  store %struct.sockaddr* %62, %struct.sockaddr** %7, align 8
  %63 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %64 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %63, i32 0, i32 0
  %65 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = call i32 @svc_addr_len(%struct.sockaddr* %66)
  %68 = call i32 @svc_xprt_set_local(%struct.TYPE_8__* %64, %struct.sockaddr* %65, i32 %67)
  %69 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %70 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %69, i32 0, i32 1
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %73 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %72, i32 0, i32 2
  %74 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %75 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %74, i32 0, i32 2
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %78 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* @XPT_CONN, align 4
  %81 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %82 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %80, i32* %83)
  %85 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %86 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %85, i32 0, i32 0
  %87 = call i32 @svc_xprt_enqueue(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.svcxprt_rdma* @svc_rdma_create_xprt(i32, i32) #1

declare dso_local i32 @svc_rdma_parse_connect_private(%struct.svcxprt_rdma*, %struct.rdma_conn_param*) #1

declare dso_local i32 @svc_xprt_set_remote(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @svc_addr_len(%struct.sockaddr*) #1

declare dso_local i32 @rpc_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32 @svc_xprt_set_local(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
