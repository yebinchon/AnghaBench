; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wait_for_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wait_for_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_endpoint* }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @sctp_wait_for_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wait_for_accept(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_2__* @sctp_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  store %struct.sctp_endpoint* %12, %struct.sctp_endpoint** %5, align 8
  br label %13

13:                                               ; preds = %56, %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @sk_sleep(%struct.sock* %14)
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = call i32 @prepare_to_wait_exclusive(i32 %15, i32* @wait, i32 %16)
  %18 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %18, i32 0, i32 0
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @release_sock(%struct.sock* %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @schedule_timeout(i64 %25)
  store i64 %26, i64* %4, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load i32, i32* @LISTENING, align 4
  %34 = call i32 @sctp_sstate(%struct.sock* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %57

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  %38 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %38, i32 0, i32 0
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %57

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @sock_intr_errno(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %50
  br label %13

57:                                               ; preds = %55, %49, %42, %36
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = call i32 @sk_sleep(%struct.sock* %58)
  %60 = call i32 @finish_wait(i32 %59, i32* @wait)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.TYPE_2__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
