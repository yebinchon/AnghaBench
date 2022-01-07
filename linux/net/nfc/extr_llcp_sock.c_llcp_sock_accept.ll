; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"parent %p\0A\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@LLCP_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"new socket %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @llcp_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llcp_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %23 = call i32 @lock_sock_nested(%struct.sock* %21, i32 %22)
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LLCP_LISTEN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EBADFD, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %85

32:                                               ; preds = %4
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @sock_rcvtimeo(%struct.sock* %33, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = call i32 @sk_sleep(%struct.sock* %38)
  %40 = call i32 @add_wait_queue_exclusive(i32 %39, i32* @wait)
  br label %41

41:                                               ; preds = %62, %32
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.socket*, %struct.socket** %6, align 8
  %44 = call %struct.sock* @nfc_llcp_accept_dequeue(%struct.sock* %42, %struct.socket* %43)
  store %struct.sock* %44, %struct.sock** %10, align 8
  %45 = icmp ne %struct.sock* %44, null
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %70

55:                                               ; preds = %47
  %56 = load i32, i32* @current, align 4
  %57 = call i64 @signal_pending(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @sock_intr_errno(i64 %60)
  store i32 %61, i32* %12, align 4
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = call i32 @release_sock(%struct.sock* %63)
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @schedule_timeout(i64 %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %69 = call i32 @lock_sock_nested(%struct.sock* %67, i32 %68)
  br label %41

70:                                               ; preds = %59, %52, %41
  %71 = load i32, i32* @TASK_RUNNING, align 4
  %72 = call i32 @__set_current_state(i32 %71)
  %73 = load %struct.sock*, %struct.sock** %9, align 8
  %74 = call i32 @sk_sleep(%struct.sock* %73)
  %75 = call i32 @remove_wait_queue(i32 %74, i32* @wait)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %85

79:                                               ; preds = %70
  %80 = load i32, i32* @SS_CONNECTED, align 4
  %81 = load %struct.socket*, %struct.socket** %6, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %83)
  br label %85

85:                                               ; preds = %79, %78, %29
  %86 = load %struct.sock*, %struct.sock** %9, align 8
  %87 = call i32 @release_sock(%struct.sock* %86)
  %88 = load i32, i32* %12, align 4
  ret i32 %88
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.sock*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sock* @nfc_llcp_accept_dequeue(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
