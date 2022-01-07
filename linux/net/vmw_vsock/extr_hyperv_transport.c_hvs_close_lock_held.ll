; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_close_lock_held.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_close_lock_held.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, i32, i32 }
%struct.sock = type { i64, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_CLOSING = common dso_local global i64 0, align 8
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@hvs_close_timeout = common dso_local global i32 0, align 4
@HVS_CLOSE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @hvs_close_lock_held to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_close_lock_held(%struct.vsock_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  %5 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %6 = call %struct.sock* @sk_vsock(%struct.vsock_sock* %5)
  store %struct.sock* %6, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TCP_ESTABLISHED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_CLOSING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %52

19:                                               ; preds = %12, %1
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SHUTDOWN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SHUTDOWN_MASK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %29 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SHUTDOWN_MASK, align 4
  %32 = call i32 @hvs_shutdown_lock_held(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* @SOCK_DONE, align 4
  %36 = call i64 @sock_flag(%struct.sock* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @sock_hold(%struct.sock* %40)
  %42 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %43 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %42, i32 0, i32 1
  %44 = load i32, i32* @hvs_close_timeout, align 4
  %45 = call i32 @INIT_DELAYED_WORK(i32* %43, i32 %44)
  %46 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %47 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %49 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %48, i32 0, i32 1
  %50 = load i32, i32* @HVS_CLOSE_TIMEOUT, align 4
  %51 = call i32 @schedule_delayed_work(i32* %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %39, %38, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.sock* @sk_vsock(%struct.vsock_sock*) #1

declare dso_local i32 @hvs_shutdown_lock_held(i32, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
