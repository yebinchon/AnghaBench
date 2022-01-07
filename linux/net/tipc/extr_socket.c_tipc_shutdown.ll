; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)*, i32, i32 }

@SHUT_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TIPC_CONN_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@TIPC_DISCONNECTING = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @tipc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SHUT_RDWR, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %22 = call i32 @trace_tipc_sk_shutdown(%struct.sock* %20, i32* null, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.socket*, %struct.socket** %4, align 8
  %24 = load i32, i32* @TIPC_CONN_SHUTDOWN, align 4
  %25 = call i32 @__tipc_shutdown(%struct.socket* %23, i32 %24)
  %26 = load i32, i32* @SEND_SHUTDOWN, align 4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %17
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  %37 = call i32 @__skb_queue_purge(i32* %36)
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %39, align 8
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = call i32 %40(%struct.sock* %41)
  store i32 0, i32* %7, align 4
  br label %46

43:                                               ; preds = %17
  %44 = load i32, i32* @ENOTCONN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @trace_tipc_sk_shutdown(%struct.sock*, i32*, i32, i8*) #1

declare dso_local i32 @__tipc_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
