; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@IUCV_LISTEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @iucv_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %20 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %21 = call i32 @lock_sock_nested(%struct.sock* %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IUCV_LISTEN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EBADFD, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %90

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @sock_rcvtimeo(%struct.sock* %31, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @sk_sleep(%struct.sock* %36)
  %38 = call i32 @add_wait_queue_exclusive(i32 %37, i32* @wait)
  br label %39

39:                                               ; preds = %76, %30
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = load %struct.socket*, %struct.socket** %6, align 8
  %42 = call %struct.sock* @iucv_accept_dequeue(%struct.sock* %40, %struct.socket* %41)
  store %struct.sock* %42, %struct.sock** %10, align 8
  %43 = icmp ne %struct.sock* %42, null
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @set_current_state(i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.sock*, %struct.sock** %9, align 8
  %55 = call i32 @release_sock(%struct.sock* %54)
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @schedule_timeout(i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load %struct.sock*, %struct.sock** %9, align 8
  %59 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %60 = call i32 @lock_sock_nested(%struct.sock* %58, i32 %59)
  %61 = load %struct.sock*, %struct.sock** %9, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IUCV_LISTEN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EBADFD, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %77

69:                                               ; preds = %53
  %70 = load i32, i32* @current, align 4
  %71 = call i64 @signal_pending(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @sock_intr_errno(i64 %74)
  store i32 %75, i32* %12, align 4
  br label %77

76:                                               ; preds = %69
  br label %39

77:                                               ; preds = %73, %66, %50, %39
  %78 = load i32, i32* @TASK_RUNNING, align 4
  %79 = call i32 @set_current_state(i32 %78)
  %80 = load %struct.sock*, %struct.sock** %9, align 8
  %81 = call i32 @sk_sleep(%struct.sock* %80)
  %82 = call i32 @remove_wait_queue(i32 %81, i32* @wait)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @SS_CONNECTED, align 4
  %88 = load %struct.socket*, %struct.socket** %6, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %85, %27
  %91 = load %struct.sock*, %struct.sock** %9, align 8
  %92 = call i32 @release_sock(%struct.sock* %91)
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sock* @iucv_accept_dequeue(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
