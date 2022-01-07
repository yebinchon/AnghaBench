; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_notify_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_notify_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32 (%struct.sock*, %struct.rxrpc_call*, i32)*, i32, i32 }
%struct.sock = type { i64, i32 (%struct.sock*)* }
%struct.rxrpc_sock = type { i32, i32, %struct.sock }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RXRPC_CLOSE = common dso_local global i64 0, align 8
@rxrpc_call_got = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"call %ps\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_notify_socket(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 0
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %91

14:                                               ; preds = %1
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.rxrpc_sock* @rcu_dereference(i32 %18)
  store %struct.rxrpc_sock* %19, %struct.rxrpc_sock** %3, align 8
  %20 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %21 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %20, i32 0, i32 2
  store %struct.sock* %21, %struct.sock** %4, align 8
  %22 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %23 = icmp ne %struct.rxrpc_sock* %22, null
  br i1 %23, label %24, label %88

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RXRPC_CLOSE, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %24
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 3
  %33 = load i32 (%struct.sock*, %struct.rxrpc_call*, i32)*, i32 (%struct.sock*, %struct.rxrpc_call*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.sock*, %struct.rxrpc_call*, i32)* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 3
  %41 = load i32 (%struct.sock*, %struct.rxrpc_call*, i32)*, i32 (%struct.sock*, %struct.rxrpc_call*, i32)** %40, align 8
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %44 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %45 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %41(%struct.sock* %42, %struct.rxrpc_call* %43, i32 %46)
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %49 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %87

51:                                               ; preds = %30
  %52 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %53 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %52, i32 0, i32 0
  %54 = call i32 @write_lock_bh(i32* %53)
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %56 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %55, i32 0, i32 0
  %57 = call i64 @list_empty(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %61 = load i32, i32* @rxrpc_call_got, align 4
  %62 = call i32 @rxrpc_get_call(%struct.rxrpc_call* %60, i32 %61)
  %63 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %64 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %63, i32 0, i32 0
  %65 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %66 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  br label %68

68:                                               ; preds = %59, %51
  %69 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %70 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %69, i32 0, i32 0
  %71 = call i32 @write_unlock_bh(i32* %70)
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load i32, i32* @SOCK_DEAD, align 4
  %74 = call i32 @sock_flag(%struct.sock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  %79 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %78, align 8
  %80 = call i32 @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.sock*)* %79)
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %82, align 8
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = call i32 %83(%struct.sock* %84)
  br label %86

86:                                               ; preds = %76, %68
  br label %87

87:                                               ; preds = %86, %35
  br label %88

88:                                               ; preds = %87, %24, %14
  %89 = call i32 (...) @rcu_read_unlock()
  %90 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %13
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rxrpc_sock* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @rxrpc_get_call(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @_debug(i8*, i32 (%struct.sock*)*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
