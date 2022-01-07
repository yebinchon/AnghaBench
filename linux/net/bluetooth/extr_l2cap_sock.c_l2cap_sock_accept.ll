; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@L2CAP_NESTING_PARENT = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @l2cap_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @woken_wake_function, align 4
  %15 = call i32 @DEFINE_WAIT_FUNC(i32 %13, i32 %14)
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = load i32, i32* @L2CAP_NESTING_PARENT, align 4
  %21 = call i32 @lock_sock_nested(%struct.sock* %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @sock_rcvtimeo(%struct.sock* %22, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %27, i64 %28)
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = call i32 @sk_sleep(%struct.sock* %30)
  %32 = call i32 @add_wait_queue_exclusive(i32 %31, i32* @wait)
  br label %33

33:                                               ; preds = %4, %62
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BT_LISTEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EBADFD, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %71

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %43, %struct.socket* %44)
  store %struct.sock* %45, %struct.sock** %10, align 8
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = icmp ne %struct.sock* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %71

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %71

55:                                               ; preds = %49
  %56 = load i32, i32* @current, align 4
  %57 = call i64 @signal_pending(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @sock_intr_errno(i64 %60)
  store i32 %61, i32* %12, align 4
  br label %71

62:                                               ; preds = %55
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = call i32 @release_sock(%struct.sock* %63)
  %65 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @wait_woken(i32* @wait, i32 %65, i64 %66)
  store i64 %67, i64* %11, align 8
  %68 = load %struct.sock*, %struct.sock** %9, align 8
  %69 = load i32, i32* @L2CAP_NESTING_PARENT, align 4
  %70 = call i32 @lock_sock_nested(%struct.sock* %68, i32 %69)
  br label %33

71:                                               ; preds = %59, %52, %48, %39
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = call i32 @sk_sleep(%struct.sock* %72)
  %74 = call i32 @remove_wait_queue(i32 %73, i32* @wait)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @SS_CONNECTED, align 4
  %80 = load %struct.socket*, %struct.socket** %6, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  %83 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %82)
  br label %84

84:                                               ; preds = %78, %77
  %85 = load %struct.sock*, %struct.sock** %9, align 8
  %86 = call i32 @release_sock(%struct.sock* %85)
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, ...) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sock* @bt_accept_dequeue(%struct.sock*, %struct.socket*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @wait_woken(i32*, i32, i64) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
