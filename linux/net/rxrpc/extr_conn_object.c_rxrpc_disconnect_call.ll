; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_disconnect_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_disconnect_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.rxrpc_connection*, i32, i32, %struct.TYPE_6__* }
%struct.rxrpc_connection = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_disconnect_call(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %4 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %5 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %4, i32 0, i32 0
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  store %struct.rxrpc_connection* %6, %struct.rxrpc_connection** %3, align 8
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 1
  %22 = call i32 @hlist_del_rcu(i32* %21)
  %23 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %24 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %30 = call i64 @rxrpc_is_client_call(%struct.rxrpc_call* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  call void @rxrpc_disconnect_client_call(%struct.rxrpc_call* %33)
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %40 = call i32 @__rxrpc_disconnect_call(%struct.rxrpc_connection* %38, %struct.rxrpc_call* %39)
  %41 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %42 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %45 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %44, i32 0, i32 0
  store %struct.rxrpc_connection* null, %struct.rxrpc_connection** %45, align 8
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %48 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %50 = call i32 @rxrpc_put_connection(%struct.rxrpc_connection* %49)
  br label %51

51:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @rxrpc_is_client_call(%struct.rxrpc_call*) #1

declare dso_local void @rxrpc_disconnect_client_call(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__rxrpc_disconnect_call(%struct.rxrpc_connection*, %struct.rxrpc_call*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rxrpc_put_connection(%struct.rxrpc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
