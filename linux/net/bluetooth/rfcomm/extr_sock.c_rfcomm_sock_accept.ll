; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @rfcomm_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %20 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %21 = call i32 @lock_sock_nested(%struct.sock* %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_STREAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %93

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @sock_rcvtimeo(%struct.sock* %31, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %36, i64 %37)
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = call i32 @sk_sleep(%struct.sock* %39)
  %41 = call i32 @add_wait_queue_exclusive(i32 %40, i32* @wait)
  br label %42

42:                                               ; preds = %30, %71
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_LISTEN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EBADFD, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %80

51:                                               ; preds = %42
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = load %struct.socket*, %struct.socket** %6, align 8
  %54 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %52, %struct.socket* %53)
  store %struct.sock* %54, %struct.sock** %10, align 8
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = icmp ne %struct.sock* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %80

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %80

64:                                               ; preds = %58
  %65 = load i32, i32* @current, align 4
  %66 = call i64 @signal_pending(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @sock_intr_errno(i64 %69)
  store i32 %70, i32* %12, align 4
  br label %80

71:                                               ; preds = %64
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @wait_woken(i32* @wait, i32 %74, i64 %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %79 = call i32 @lock_sock_nested(%struct.sock* %77, i32 %78)
  br label %42

80:                                               ; preds = %68, %61, %57, %48
  %81 = load %struct.sock*, %struct.sock** %9, align 8
  %82 = call i32 @sk_sleep(%struct.sock* %81)
  %83 = call i32 @remove_wait_queue(i32 %82, i32* @wait)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @SS_CONNECTED, align 4
  %89 = load %struct.socket*, %struct.socket** %6, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sock*, %struct.sock** %10, align 8
  %92 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %91)
  br label %93

93:                                               ; preds = %87, %86, %27
  %94 = load %struct.sock*, %struct.sock** %9, align 8
  %95 = call i32 @release_sock(%struct.sock* %94)
  %96 = load i32, i32* %12, align 4
  ret i32 %96
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
