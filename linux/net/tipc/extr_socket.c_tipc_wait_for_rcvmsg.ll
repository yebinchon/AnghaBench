; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64*)* @tipc_wait_for_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_wait_for_rcvmsg(%struct.socket* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = load i32, i32* @woken_wake_function, align 4
  %14 = call i32 @DEFINE_WAIT_FUNC(i32 %12, i32 %13)
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call i32 @sock_error(%struct.sock* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %82, %23
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = call i64 @skb_queue_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RCV_SHUTDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %83

42:                                               ; preds = %32
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = call i32 @sk_sleep(%struct.sock* %43)
  %45 = call i32 @add_wait_queue(i32 %44, i32* @wait)
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = call i32 @release_sock(%struct.sock* %46)
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @wait_woken(i32* @wait, i32 %48, i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = call i32 (...) @sched_annotate_sleep()
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = call i32 @lock_sock(%struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = call i32 @sk_sleep(%struct.sock* %54)
  %56 = call i32 @remove_wait_queue(i32 %55, i32* @wait)
  br label %57

57:                                               ; preds = %42, %27, %24
  store i32 0, i32* %8, align 4
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = call i64 @skb_queue_empty(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %83

63:                                               ; preds = %57
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %83

69:                                               ; preds = %63
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @sock_intr_errno(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %83

76:                                               ; preds = %69
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = call i32 @sock_error(%struct.sock* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %83

82:                                               ; preds = %76
  br label %24

83:                                               ; preds = %81, %75, %68, %62, %39
  %84 = load i64, i64* %7, align 8
  %85 = load i64*, i64** %5, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %21
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @wait_woken(i32*, i32, i64) #1

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
