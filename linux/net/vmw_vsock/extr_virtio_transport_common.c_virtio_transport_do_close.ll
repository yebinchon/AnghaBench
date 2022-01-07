; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_do_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, i32, i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32 }

@SOCK_DONE = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsock_sock*, i32)* @virtio_transport_do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_transport_do_close(%struct.vsock_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %7 = call %struct.sock* @sk_vsock(%struct.vsock_sock* %6)
  store %struct.sock* %7, %struct.sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = load i32, i32* @SOCK_DONE, align 4
  %10 = call i32 @sock_set_flag(%struct.sock* %8, i32 %9)
  %11 = load i32, i32* @SHUTDOWN_MASK, align 4
  %12 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %13 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %15 = call i64 @vsock_stream_has_data(%struct.vsock_sock* %14)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @TCP_CLOSING, align 4
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call i32 %24(%struct.sock* %25)
  %27 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %28 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %36 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %35, i32 0, i32 1
  %37 = call i64 @cancel_delayed_work(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %31
  %40 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %41 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %43 = call i32 @vsock_remove_sock(%struct.vsock_sock* %42)
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = call i32 @sock_put(%struct.sock* %44)
  br label %46

46:                                               ; preds = %39, %34, %21
  ret void
}

declare dso_local %struct.sock* @sk_vsock(%struct.vsock_sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i64 @vsock_stream_has_data(%struct.vsock_sock*) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @vsock_remove_sock(%struct.vsock_sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
