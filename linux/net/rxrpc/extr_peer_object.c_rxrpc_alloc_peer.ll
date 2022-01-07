; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_alloc_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_alloc_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rxrpc_local = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RB_ROOT = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@RXRPC_TX_SMSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_peer* @rxrpc_alloc_peer(%struct.rxrpc_local* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_peer*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.rxrpc_peer* @kzalloc(i32 36, i32 %7)
  store %struct.rxrpc_peer* %8, %struct.rxrpc_peer** %5, align 8
  %9 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %10 = icmp ne %struct.rxrpc_peer* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %13 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %12, i32 0, i32 8
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %16 = call i32 @rxrpc_get_local(%struct.rxrpc_local* %15)
  %17 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %20 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %19, i32 0, i32 6
  %21 = call i32 @INIT_HLIST_HEAD(i32* %20)
  %22 = load i32, i32* @RB_ROOT, align 4
  %23 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %24 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %26 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %25, i32 0, i32 4
  %27 = call i32 @seqlock_init(i32* %26)
  %28 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %29 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %28, i32 0, i32 3
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %32 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %35 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %36 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @RXRPC_TX_SMSS, align 4
  %38 = icmp sgt i32 %37, 2190
  br i1 %38, label %39, label %42

39:                                               ; preds = %11
  %40 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %41 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  br label %52

42:                                               ; preds = %11
  %43 = load i32, i32* @RXRPC_TX_SMSS, align 4
  %44 = icmp sgt i32 %43, 1095
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %47 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %46, i32 0, i32 0
  store i32 3, i32* %47, align 4
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %50 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %49, i32 0, i32 0
  store i32 4, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %55 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_peer* %54)
  %56 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  ret %struct.rxrpc_peer* %56
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rxrpc_get_local(%struct.rxrpc_local*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
