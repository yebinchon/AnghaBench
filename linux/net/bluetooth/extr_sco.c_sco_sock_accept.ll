; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sk %p timeo %ld\00", align 1
@BT_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"new socket %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @sco_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @sock_rcvtimeo(%struct.sock* %21, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sock* %26, i64 %27)
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = call i32 @sk_sleep(%struct.sock* %29)
  %31 = call i32 @add_wait_queue_exclusive(i32 %30, i32* @wait)
  br label %32

32:                                               ; preds = %4, %61
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_LISTEN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EBADFD, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %69

41:                                               ; preds = %32
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.socket*, %struct.socket** %6, align 8
  %44 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %42, %struct.socket* %43)
  store %struct.sock* %44, %struct.sock** %10, align 8
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %69

48:                                               ; preds = %41
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %69

54:                                               ; preds = %48
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @sock_intr_errno(i64 %59)
  store i32 %60, i32* %12, align 4
  br label %69

61:                                               ; preds = %54
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = call i32 @release_sock(%struct.sock* %62)
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @wait_woken(i32* @wait, i32 %64, i64 %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call i32 @lock_sock(%struct.sock* %67)
  br label %32

69:                                               ; preds = %58, %51, %47, %38
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = call i32 @sk_sleep(%struct.sock* %70)
  %72 = call i32 @remove_wait_queue(i32 %71, i32* @wait)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @SS_CONNECTED, align 4
  %78 = load %struct.socket*, %struct.socket** %6, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sock*, %struct.sock** %10, align 8
  %81 = call i32 (i8*, %struct.sock*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %80)
  br label %82

82:                                               ; preds = %76, %75
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = call i32 @release_sock(%struct.sock* %83)
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

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
