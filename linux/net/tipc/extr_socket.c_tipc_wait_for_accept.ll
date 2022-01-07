; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64)* @tipc_wait_for_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_wait_for_accept(%struct.socket* %0, i64 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  br label %12

12:                                               ; preds = %50, %2
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @sk_sleep(%struct.sock* %13)
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @prepare_to_wait_exclusive(i32 %14, i32* @wait, i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = call i64 @skb_queue_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call i32 @release_sock(%struct.sock* %25)
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @schedule_timeout(i64 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  br label %31

31:                                               ; preds = %24, %19, %12
  store i32 0, i32* %6, align 4
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = call i64 @skb_queue_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %51

37:                                               ; preds = %31
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @sock_intr_errno(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %12

51:                                               ; preds = %49, %42, %36
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = call i32 @sk_sleep(%struct.sock* %52)
  %54 = call i32 @finish_wait(i32 %53, i32* @wait)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
