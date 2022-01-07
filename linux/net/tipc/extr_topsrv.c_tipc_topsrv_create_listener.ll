; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_create_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_create_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_topsrv = type { %struct.socket*, i32 }
%struct.socket = type { %struct.TYPE_7__*, %struct.sock* }
%struct.TYPE_7__ = type { i32 }
%struct.sock = type { %struct.TYPE_8__*, i32, %struct.tipc_topsrv*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_tipc = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.sockaddr = type { i32 }

@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@tipc_topsrv_listener_data_ready = common dso_local global i32 0, align 4
@SOL_TIPC = common dso_local global i32 0, align 4
@TIPC_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_ADDR_NAMESEQ = common dso_local global i32 0, align 4
@TIPC_TOP_SRV = common dso_local global i8* null, align 8
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_topsrv*)* @tipc_topsrv_create_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_topsrv_create_listener(%struct.tipc_topsrv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_topsrv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr_tipc, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store %struct.tipc_topsrv* %0, %struct.tipc_topsrv** %3, align 8
  %9 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  store i32 %9, i32* %4, align 4
  store %struct.socket* null, %struct.socket** %5, align 8
  %10 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AF_TIPC, align 4
  %14 = load i32, i32* @SOCK_SEQPACKET, align 4
  %15 = call i32 @sock_create_kern(i32 %12, i32 %13, i32 %14, i32 0, %struct.socket** %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %96

20:                                               ; preds = %1
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %23 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %22, i32 0, i32 0
  store %struct.socket* %21, %struct.socket** %23, align 8
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %7, align 8
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = call i32 @write_lock_bh(i32* %28)
  %30 = load i32, i32* @tipc_topsrv_listener_data_ready, align 4
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 2
  store %struct.tipc_topsrv* %33, %struct.tipc_topsrv** %35, align 8
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = call i32 @write_unlock_bh(i32* %37)
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = load i32, i32* @SOL_TIPC, align 4
  %41 = load i32, i32* @TIPC_IMPORTANCE, align 4
  %42 = bitcast i32* %4 to i8*
  %43 = call i32 @kernel_setsockopt(%struct.socket* %39, i32 %40, i32 %41, i8* %42, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  br label %91

47:                                               ; preds = %20
  %48 = load i32, i32* @AF_TIPC, align 4
  %49 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @TIPC_ADDR_NAMESEQ, align 4
  %51 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i8*, i8** @TIPC_TOP_SRV, align 8
  %53 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @TIPC_TOP_SRV, align 8
  %57 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @TIPC_TOP_SRV, align 8
  %61 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %65 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = bitcast %struct.sockaddr_tipc* %6 to %struct.sockaddr*
  %68 = call i32 @kernel_bind(%struct.socket* %66, %struct.sockaddr* %67, i32 40)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %91

72:                                               ; preds = %47
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = call i32 @kernel_listen(%struct.socket* %73, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %91

78:                                               ; preds = %72
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.sock*, %struct.sock** %7, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @module_put(i32 %89)
  store i32 0, i32* %2, align 4
  br label %96

91:                                               ; preds = %77, %71, %46
  %92 = load %struct.socket*, %struct.socket** %5, align 8
  %93 = call i32 @sock_release(%struct.socket* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %78, %18
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @sock_create_kern(i32, i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_listen(%struct.socket*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
