; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_stream_data_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_stream_data_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32, i32* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i64 0, align 8
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_stream_data_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_stream_data_receive(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %21, %13
  %15 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %16 = load i32, i32* @MSG_DONTWAIT, align 4
  %17 = call i64 @xs_read_stream(%struct.sock_xprt* %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = call i32 (...) @cond_resched()
  br label %14

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ESHUTDOWN, align 8
  %29 = sub i64 0, %28
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %33 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @SHUT_RDWR, align 4
  %36 = call i32 @kernel_sock_shutdown(i32* %34, i32 %35)
  br label %40

37:                                               ; preds = %26
  %38 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %39 = call i32 @xs_poll_check_readable(%struct.sock_xprt* %38)
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %40, %12
  %42 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %43 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %46 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @trace_xs_stream_read_data(i32* %46, i64 %47, i64 %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xs_read_stream(%struct.sock_xprt*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kernel_sock_shutdown(i32*, i32) #1

declare dso_local i32 @xs_poll_check_readable(%struct.sock_xprt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_xs_stream_read_data(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
