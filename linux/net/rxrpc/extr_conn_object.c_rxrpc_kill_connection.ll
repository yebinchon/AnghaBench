; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_kill_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_kill_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rxrpc_net* }
%struct.rxrpc_net = type { i32 }

@rxrpc_destroy_connection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_kill_connection(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca %struct.rxrpc_net*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %4 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.rxrpc_net*, %struct.rxrpc_net** %8, align 8
  store %struct.rxrpc_net* %9, %struct.rxrpc_net** %3, align 8
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rcu_access_pointer(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %1
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rcu_access_pointer(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %29 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcu_access_pointer(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %38 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rcu_access_pointer(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %36, %27, %18, %1
  %47 = phi i1 [ false, %27 ], [ false, %18 ], [ false, %1 ], [ %45, %36 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %51 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %50, i32 0, i32 3
  %52 = call i32 @list_empty(i32* %51)
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %55 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %54, i32 0, i32 0
  %56 = call i32 @write_lock(i32* %55)
  %57 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %58 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %57, i32 0, i32 2
  %59 = call i32 @list_del_init(i32* %58)
  %60 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %61 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %60, i32 0, i32 0
  %62 = call i32 @write_unlock(i32* %61)
  %63 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %64 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %63, i32 0, i32 1
  %65 = call i32 @rxrpc_purge_queue(i32* %64)
  %66 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %67 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %66, i32 0, i32 0
  %68 = load i32, i32* @rxrpc_destroy_connection, align 4
  %69 = call i32 @call_rcu(i32* %67, i32 %68)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @rxrpc_purge_queue(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
