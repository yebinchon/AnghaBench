; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vsock_sock = type { i32, i32, i32, %struct.sock }
%struct.sock = type { i64, i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_CLOSING = common dso_local global i64 0, align 8
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@virtio_transport_close_timeout = common dso_local global i32 0, align 4
@VSOCK_CLOSE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @virtio_transport_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_close(%struct.vsock_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  %5 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %6 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %5, i32 0, i32 3
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
  br label %79

19:                                               ; preds = %12, %1
  %20 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %21 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SHUTDOWN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SHUTDOWN_MASK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %29 = call i32 @virtio_transport_reset(%struct.vsock_sock* %28, i32* null)
  store i32 1, i32* %2, align 4
  br label %79

30:                                               ; preds = %19
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SHUTDOWN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SHUTDOWN_MASK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %40 = load i32, i32* @SHUTDOWN_MASK, align 4
  %41 = call i32 @virtio_transport_shutdown(%struct.vsock_sock* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load i32, i32* @SOCK_LINGER, align 4
  %45 = call i64 @sock_flag(%struct.sock* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PF_EXITING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @virtio_transport_wait_close(%struct.sock* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %47, %42
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = load i32, i32* @SOCK_DONE, align 4
  %63 = call i64 @sock_flag(%struct.sock* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %79

66:                                               ; preds = %60
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call i32 @sock_hold(%struct.sock* %67)
  %69 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %70 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %69, i32 0, i32 2
  %71 = load i32, i32* @virtio_transport_close_timeout, align 4
  %72 = call i32 @INIT_DELAYED_WORK(i32* %70, i32 %71)
  %73 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %74 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %76 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %75, i32 0, i32 2
  %77 = load i32, i32* @VSOCK_CLOSE_TIMEOUT, align 4
  %78 = call i32 @schedule_delayed_work(i32* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %66, %65, %27, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @virtio_transport_reset(%struct.vsock_sock*, i32*) #1

declare dso_local i32 @virtio_transport_shutdown(%struct.vsock_sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @virtio_transport_wait_close(%struct.sock*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
