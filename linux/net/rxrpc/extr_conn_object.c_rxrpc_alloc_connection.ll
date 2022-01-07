; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_alloc_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_alloc_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rxrpc_connection_timer = common dso_local global i32 0, align 4
@rxrpc_process_connection = common dso_local global i32 0, align 4
@rxrpc_no_security = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = %p{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_connection* @rxrpc_alloc_connection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rxrpc_connection* @kzalloc(i32 56, i32 %5)
  store %struct.rxrpc_connection* %6, %struct.rxrpc_connection** %3, align 8
  %7 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %8 = icmp ne %struct.rxrpc_connection* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 12
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %13, i32 0, i32 11
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %17 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %16, i32 0, i32 10
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 9
  %21 = call i32 @timer_setup(i32* %20, i32* @rxrpc_connection_timer, i32 0)
  %22 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %23 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %22, i32 0, i32 8
  %24 = call i32 @INIT_WORK(i32* %23, i32* @rxrpc_process_connection)
  %25 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %25, i32 0, i32 7
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %29 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %28, i32 0, i32 6
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %31, i32 0, i32 5
  %33 = call i32 @skb_queue_head_init(i32* %32)
  %34 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %35 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %34, i32 0, i32 4
  store i32* @rxrpc_no_security, i32** %35, align 8
  %36 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %37 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %36, i32 0, i32 3
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %40 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %41 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %43 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %46 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %9, %1
  %48 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %49 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %50 = icmp ne %struct.rxrpc_connection* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %53 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  %58 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_connection* %48, i32 %57)
  %59 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  ret %struct.rxrpc_connection* %59
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
