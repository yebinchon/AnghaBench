; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_wake_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_wake_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32, i32, i32, i32* }

@XPRT_SOCK_WAKE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_wake_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_wake_error(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca i32, align 4
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %4 = load i32, i32* @XPRT_SOCK_WAKE_ERROR, align 4
  %5 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %5, i32 0, i32 3
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %15 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %38

19:                                               ; preds = %10
  %20 = load i32, i32* @XPRT_SOCK_WAKE_ERROR, align 4
  %21 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %22 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %21, i32 0, i32 3
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %28 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %27, i32 0, i32 2
  %29 = call i32 @xchg(i32* %28, i32 0)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %34 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %33, i32 0, i32 1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @xprt_wake_pending_tasks(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %25, %18
  %39 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %40 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %9
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @xprt_wake_pending_tasks(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
