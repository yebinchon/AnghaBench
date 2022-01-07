; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_poll_check_readable.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_poll_check_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32 }

@XPRT_SOCK_DATA_READY = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_poll_check_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_poll_check_readable(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %3 = load i32, i32* @XPRT_SOCK_DATA_READY, align 4
  %4 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %5 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %4, i32 0, i32 1
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %8 = call i32 @xs_poll_socket_readable(%struct.sock_xprt* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @XPRT_SOCK_DATA_READY, align 4
  %13 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %13, i32 0, i32 1
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @xprtiod_workqueue, align 4
  %19 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %20 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %19, i32 0, i32 0
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %10, %17, %11
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xs_poll_socket_readable(%struct.sock_xprt*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
