; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.tipc_sock = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@tipc_sk_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @tipc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tipc_sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = icmp eq %struct.sock* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %13)
  store %struct.tipc_sock* %14, %struct.tipc_sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %19 = call i32 @trace_tipc_sk_release(%struct.sock* %17, i32* null, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %22 = call i32 @__tipc_shutdown(%struct.socket* %20, i32 %21)
  %23 = load i32, i32* @SHUTDOWN_MASK, align 4
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %27 = call i32 @tipc_sk_leave(%struct.tipc_sock* %26)
  %28 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %29 = call i32 @tipc_sk_withdraw(%struct.tipc_sock* %28, i32 0, i32* null)
  %30 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @__skb_queue_purge(i32* %32)
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = call i32 @sk_stop_timer(%struct.sock* %34, i32* %36)
  %38 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %39 = call i32 @tipc_sk_remove(%struct.tipc_sock* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @sock_orphan(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  %44 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %44, i32 0, i32 2
  %46 = call i32 @tipc_dest_list_purge(i32* %45)
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %49, i32 0, i32 0
  %51 = load i32, i32* @tipc_sk_callback, align 4
  %52 = call i32 @call_rcu(i32* %50, i32 %51)
  %53 = load %struct.socket*, %struct.socket** %3, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %12, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @trace_tipc_sk_release(%struct.sock*, i32*, i32, i8*) #1

declare dso_local i32 @__tipc_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @tipc_sk_leave(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_sk_withdraw(%struct.tipc_sock*, i32, i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @sk_stop_timer(%struct.sock*, i32*) #1

declare dso_local i32 @tipc_sk_remove(%struct.tipc_sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @tipc_dest_list_purge(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
