; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_stream_data_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_stream_data_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64, %struct.sk_buff*, i32, i32)* @unix_stream_data_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unix_stream_data_wait(%struct.sock* %0, i64 %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call i32 @unix_state_lock(%struct.sock* %14)
  br label %16

16:                                               ; preds = %78, %5
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call i32 @sk_sleep(%struct.sock* %17)
  %19 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %20 = call i32 @prepare_to_wait(i32 %18, i32* @wait, i32 %19)
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 2
  %23 = call %struct.sk_buff* @skb_peek_tail(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %24, %25
  br i1 %26, label %55, label %27

27:                                               ; preds = %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RCV_SHUTDOWN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %48, %41, %36, %30, %16
  br label %82

56:                                               ; preds = %52
  %57 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = call i32 @sk_set_bit(i32 %57, %struct.sock* %58)
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = call i32 @unix_state_unlock(%struct.sock* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @freezable_schedule_timeout(i64 %65)
  store i64 %66, i64* %7, align 8
  br label %70

67:                                               ; preds = %56
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @schedule_timeout(i64 %68)
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = call i32 @unix_state_lock(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load i32, i32* @SOCK_DEAD, align 4
  %75 = call i64 @sock_flag(%struct.sock* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %80 = load %struct.sock*, %struct.sock** %6, align 8
  %81 = call i32 @sk_clear_bit(i32 %79, %struct.sock* %80)
  br label %16

82:                                               ; preds = %77, %55
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = call i32 @sk_sleep(%struct.sock* %83)
  %85 = call i32 @finish_wait(i32 %84, i32* @wait)
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = call i32 @unix_state_unlock(%struct.sock* %86)
  %88 = load i64, i64* %7, align 8
  ret i64 %88
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i64 @freezable_schedule_timeout(i64) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
