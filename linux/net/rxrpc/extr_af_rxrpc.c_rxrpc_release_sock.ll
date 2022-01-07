; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_release_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_release_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rxrpc_sock = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p{%d,%d}\00", align 1
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@RXRPC_CLOSE = common dso_local global i32 0, align 4
@rxrpc_workqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @rxrpc_release_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_release_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rxrpc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.rxrpc_sock* @rxrpc_sk(%struct.sock* %4)
  store %struct.rxrpc_sock* %5, %struct.rxrpc_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 3
  %12 = call i32 @refcount_read(i32* %11)
  %13 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.sock* %6, i32 %9, i32 %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @sock_orphan(%struct.sock* %14)
  %16 = load i32, i32* @SHUTDOWN_MASK, align 4
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %27 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %1, %1, %1, %1
  %23 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %24 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %1, %22
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load i32, i32* @RXRPC_CLOSE, align 4
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %40 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %27
  %44 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %45 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.rxrpc_sock* @rcu_access_pointer(i32 %48)
  %50 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %51 = icmp eq %struct.rxrpc_sock* %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %54 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = call i32 @write_lock(i32* %56)
  %58 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %59 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rcu_assign_pointer(i32 %62, i32* null)
  %64 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %65 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @write_unlock(i32* %67)
  br label %69

69:                                               ; preds = %52, %43, %27
  %70 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %71 = call i32 @rxrpc_discard_prealloc(%struct.rxrpc_sock* %70)
  %72 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %73 = call i32 @rxrpc_release_calls_on_socket(%struct.rxrpc_sock* %72)
  %74 = load i32, i32* @rxrpc_workqueue, align 4
  %75 = call i32 @flush_workqueue(i32 %74)
  %76 = load %struct.sock*, %struct.sock** %2, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = call i32 @rxrpc_purge_queue(%struct.TYPE_4__* %77)
  %79 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %80 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @rxrpc_unuse_local(%struct.TYPE_3__* %81)
  %83 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %84 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %83, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %84, align 8
  %85 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %86 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @key_put(i32* %87)
  %89 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %90 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %92 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @key_put(i32* %93)
  %95 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %96 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.sock*, %struct.sock** %2, align 8
  %98 = call i32 @sock_put(%struct.sock* %97)
  %99 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(%struct.sock*) #1

declare dso_local i32 @_enter(i8*, %struct.sock*, i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.rxrpc_sock* @rcu_access_pointer(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @rxrpc_discard_prealloc(%struct.rxrpc_sock*) #1

declare dso_local i32 @rxrpc_release_calls_on_socket(%struct.rxrpc_sock*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @rxrpc_purge_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @rxrpc_unuse_local(%struct.TYPE_3__*) #1

declare dso_local i32 @key_put(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
