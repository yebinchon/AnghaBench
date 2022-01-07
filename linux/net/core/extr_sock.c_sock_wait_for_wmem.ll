; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_wait_for_wmem.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_wait_for_wmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @sock_wait_for_wmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sock_wait_for_wmem(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @sk_clear_bit(i32 %7, %struct.sock* %8)
  br label %10

10:                                               ; preds = %53, %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %56

14:                                               ; preds = %10
  %15 = load i32, i32* @current, align 4
  %16 = call i64 @signal_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %56

19:                                               ; preds = %14
  %20 = load i32, i32* @SOCK_NOSPACE, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %20, i32* %24)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @sk_sleep(%struct.sock* %26)
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @prepare_to_wait(i32 %27, i32* @wait, i32 %28)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  %32 = call i64 @refcount_read(i32* %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @READ_ONCE(i32 %35)
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  br label %56

39:                                               ; preds = %19
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SEND_SHUTDOWN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %56

47:                                               ; preds = %39
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @schedule_timeout(i64 %54)
  store i64 %55, i64* %4, align 8
  br label %10

56:                                               ; preds = %52, %46, %38, %18, %13
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @sk_sleep(%struct.sock* %57)
  %59 = call i32 @finish_wait(i32 %58, i32* @wait)
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
