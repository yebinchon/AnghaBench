; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_stream_data_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_stream_data_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i64, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@CAIF_CONNECTED = common dso_local global i64 0, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @caif_stream_data_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @caif_stream_data_wait(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @lock_sock(%struct.sock* %7)
  br label %9

9:                                                ; preds = %64, %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @sk_sleep(%struct.sock* %10)
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @prepare_to_wait(i32 %11, i32* @wait, i32 %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 3
  %16 = call i32 @skb_queue_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %9
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %18
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CAIF_CONNECTED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %48, label %29

29:                                               ; preds = %23
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @SOCK_DEAD, align 4
  %32 = call i64 @sock_flag(%struct.sock* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RCV_SHUTDOWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @current, align 4
  %43 = call i64 @signal_pending(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %41, %34, %29, %23, %18, %9
  br label %68

49:                                               ; preds = %45
  %50 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @sk_set_bit(i32 %50, %struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call i32 @release_sock(%struct.sock* %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @schedule_timeout(i64 %55)
  store i64 %56, i64* %4, align 8
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @lock_sock(%struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load i32, i32* @SOCK_DEAD, align 4
  %61 = call i64 @sock_flag(%struct.sock* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call i32 @sk_clear_bit(i32 %65, %struct.sock* %66)
  br label %9

68:                                               ; preds = %63, %48
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = call i32 @sk_sleep(%struct.sock* %69)
  %71 = call i32 @finish_wait(i32 %70, i32* @wait)
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
