; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wait_for_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wait_for_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32*, i64*)* @sctp_wait_for_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wait_for_packet(%struct.sock* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i32 @sk_sleep(%struct.sock* %11)
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @prepare_to_wait_exclusive(i32 %12, i32* @wait, i32 %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @sock_error(%struct.sock* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = call i32 @skb_queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %64

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RCV_SHUTDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %72

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i64 @list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = load i32, i32* @LISTENING, align 4
  %47 = call i32 @sctp_sstate(%struct.sock* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %72

50:                                               ; preds = %44, %34
  %51 = load i32, i32* @current, align 4
  %52 = call i64 @signal_pending(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %68

55:                                               ; preds = %50
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @schedule_timeout(i64 %59)
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call i32 @lock_sock(%struct.sock* %62)
  br label %64

64:                                               ; preds = %55, %25
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = call i32 @sk_sleep(%struct.sock* %65)
  %67 = call i32 @finish_wait(i32 %66, i32* @wait)
  store i32 0, i32* %4, align 4
  br label %79

68:                                               ; preds = %54
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @sock_intr_errno(i64 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %49, %33, %19
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = call i32 @sk_sleep(%struct.sock* %73)
  %75 = call i32 @finish_wait(i32 %74, i32* @wait)
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %64
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
