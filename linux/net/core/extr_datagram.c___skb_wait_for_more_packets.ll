; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_wait_for_more_packets.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_wait_for_more_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@receiver_wake_function = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_wait_for_more_packets(%struct.sock* %0, i32* %1, i64* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @receiver_wake_function, align 4
  %12 = call i32 @DEFINE_WAIT_FUNC(i32 %10, i32 %11)
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @sk_sleep(%struct.sock* %13)
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @prepare_to_wait_exclusive(i32 %14, i32* @wait, i32 %15)
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call i32 @sock_error(%struct.sock* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %77

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.sk_buff* @READ_ONCE(i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp ne %struct.sk_buff* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %68

31:                                               ; preds = %22
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RCV_SHUTDOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %80

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = call i64 @connection_based(%struct.sock* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TCP_ESTABLISHED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TCP_LISTEN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %77

58:                                               ; preds = %51, %45, %39
  %59 = load i32, i32* @current, align 4
  %60 = call i64 @signal_pending(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %73

63:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @schedule_timeout(i64 %65)
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %80, %77, %63, %30
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = call i32 @sk_sleep(%struct.sock* %69)
  %71 = call i32 @finish_wait(i32 %70, i32* @wait)
  %72 = load i32, i32* %9, align 4
  ret i32 %72

73:                                               ; preds = %62
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sock_intr_errno(i64 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %57, %21
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %68

80:                                               ; preds = %38
  %81 = load i32*, i32** %6, align 8
  store i32 0, i32* %81, align 4
  store i32 1, i32* %9, align 4
  br label %68
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local %struct.sk_buff* @READ_ONCE(i32) #1

declare dso_local i64 @connection_based(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
