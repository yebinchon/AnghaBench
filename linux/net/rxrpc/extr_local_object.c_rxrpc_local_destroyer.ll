; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_local_destroyer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_local_destroyer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32, i32, i32, %struct.socket*, i32, i32, i32, %struct.rxrpc_net* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rxrpc_net = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_local*)* @rxrpc_local_destroyer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_local_destroyer(%struct.rxrpc_local* %0) #0 {
  %2 = alloca %struct.rxrpc_local*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rxrpc_net*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %2, align 8
  %5 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %6 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %5, i32 0, i32 3
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %9 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %8, i32 0, i32 7
  %10 = load %struct.rxrpc_net*, %struct.rxrpc_net** %9, align 8
  store %struct.rxrpc_net* %10, %struct.rxrpc_net** %4, align 8
  %11 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %18 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %20, i32 0, i32 5
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %24 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %27 = call i32 @rxrpc_clean_up_local_conns(%struct.rxrpc_local* %26)
  %28 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %29 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %28, i32 0, i32 0
  %30 = call i32 @rxrpc_service_connection_reaper(i32* %29)
  %31 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %32 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = icmp ne %struct.socket* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %1
  %41 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %42 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %41, i32 0, i32 3
  store %struct.socket* null, %struct.socket** %42, align 8
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = load i32, i32* @SHUT_RDWR, align 4
  %45 = call i32 @kernel_sock_shutdown(%struct.socket* %43, i32 %44)
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i32 @sock_release(%struct.socket* %50)
  br label %52

52:                                               ; preds = %40, %1
  %53 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %54 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %53, i32 0, i32 2
  %55 = call i32 @rxrpc_purge_queue(i32* %54)
  %56 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %57 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %56, i32 0, i32 1
  %58 = call i32 @rxrpc_purge_queue(i32* %57)
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rxrpc_clean_up_local_conns(%struct.rxrpc_local*) #1

declare dso_local i32 @rxrpc_service_connection_reaper(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @rxrpc_purge_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
