; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_wait_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_wait_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @virtio_transport_wait_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_transport_wait_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @woken_wake_function, align 4
  %10 = call i32 @DEFINE_WAIT_FUNC(i32 %8, i32 %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @sk_sleep(%struct.sock* %11)
  %13 = call i32 @add_wait_queue(i32 %12, i32* @wait)
  br label %14

14:                                               ; preds = %30, %7
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load i32, i32* @SOCK_DONE, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = call i64 @sk_wait_event(%struct.sock* %15, i64* %4, i32 %18, i32* @wait)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %32

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @signal_pending(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %14, label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @sk_sleep(%struct.sock* %33)
  %35 = call i32 @remove_wait_queue(i32 %34, i32* @wait)
  br label %36

36:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
