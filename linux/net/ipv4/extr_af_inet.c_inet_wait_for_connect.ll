; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64, i32)* @inet_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inet_wait_for_connect(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @woken_wake_function, align 4
  %9 = call i32 @DEFINE_WAIT_FUNC(i32 %7, i32 %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call i32 @sk_sleep(%struct.sock* %10)
  %12 = call i32 @add_wait_queue(i32 %11, i32* @wait)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @TCPF_SYN_SENT, align 4
  %24 = load i32, i32* @TCPF_SYN_RECV, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @release_sock(%struct.sock* %29)
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @wait_woken(i32* @wait, i32 %31, i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load i32, i32* @current, align 4
  %37 = call i64 @signal_pending(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %28
  br label %44

43:                                               ; preds = %39
  br label %18

44:                                               ; preds = %42, %18
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @sk_sleep(%struct.sock* %45)
  %47 = call i32 @remove_wait_queue(i32 %46, i32* @wait)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @wait_woken(i32*, i32, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
