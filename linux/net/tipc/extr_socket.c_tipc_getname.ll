; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_tipc = type { %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tipc_sock = type { i32 }

@TIPC_DISCONNECTING = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@TIPC_ADDR_ID = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @tipc_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_tipc*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.tipc_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %12, %struct.sockaddr_tipc** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %16)
  store %struct.tipc_sock* %17, %struct.tipc_sock** %10, align 8
  %18 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %19 = call i32 @memset(%struct.sockaddr_tipc* %18, i32 0, i32 32)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @tipc_sk_connected(%struct.sock* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %29, %22
  %39 = load %struct.tipc_sock*, %struct.tipc_sock** %10, align 8
  %40 = call i32 @tsk_peer_port(%struct.tipc_sock* %39)
  %41 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.tipc_sock*, %struct.tipc_sock** %10, align 8
  %46 = call i32 @tsk_peer_node(%struct.tipc_sock* %45)
  %47 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %48 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %66

51:                                               ; preds = %3
  %52 = load %struct.tipc_sock*, %struct.tipc_sock** %10, align 8
  %53 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %56 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %9, align 8
  %60 = call i32 @sock_net(%struct.sock* %59)
  %61 = call i32 @tipc_own_addr(i32 %60)
  %62 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %63 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  br label %66

66:                                               ; preds = %51, %38
  %67 = load i32, i32* @TIPC_ADDR_ID, align 4
  %68 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @AF_TIPC, align 4
  %71 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %72 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %74 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  store i32 32, i32* %4, align 4
  br label %79

79:                                               ; preds = %66, %35
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_tipc*, i32, i32) #1

declare dso_local i32 @tipc_sk_connected(%struct.sock*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
