; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIPC_CONNECTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64*)* @tipc_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_wait_for_connect(%struct.socket* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @woken_wake_function, align 4
  %11 = call i32 @DEFINE_WAIT_FUNC(i32 %9, i32 %10)
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %6, align 8
  br label %15

15:                                               ; preds = %53, %2
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call i32 @sock_error(%struct.sock* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %15
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %22
  %30 = load i32, i32* @current, align 4
  %31 = call i64 @signal_pending(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @sock_intr_errno(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %29
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = call i32 @sk_sleep(%struct.sock* %38)
  %40 = call i32 @add_wait_queue(i32 %39, i32* @wait)
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TIPC_CONNECTING, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @sk_wait_event(%struct.sock* %41, i64* %42, i32 %48, i32* @wait)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @sk_sleep(%struct.sock* %50)
  %52 = call i32 @remove_wait_queue(i32 %51, i32* @wait)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %15, label %57

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %33, %26, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
