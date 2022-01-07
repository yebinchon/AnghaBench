; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_wait_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_wait_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32, i64 }
%struct.sk_psock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_rx = type { %struct.sk_buff* }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_psock*, i32, i64, i32*)* @tls_wait_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tls_wait_data(%struct.sock* %0, %struct.sk_psock* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_psock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tls_context*, align 8
  %13 = alloca %struct.tls_sw_context_rx*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %15)
  store %struct.tls_context* %16, %struct.tls_context** %12, align 8
  %17 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %18 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %17)
  store %struct.tls_sw_context_rx* %18, %struct.tls_sw_context_rx** %13, align 8
  %19 = load i32, i32* @wait, align 4
  %20 = load i32, i32* @woken_wake_function, align 4
  %21 = call i32 @DEFINE_WAIT_FUNC(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %103, %5
  %23 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %13, align 8
  %24 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %29 = call i64 @sk_psock_queue_empty(%struct.sk_psock* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %104

33:                                               ; preds = %31
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = call i32 @sock_error(%struct.sock* %39)
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RCV_SHUTDOWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = load i32, i32* @SOCK_DONE, align 4
  %53 = call i64 @sock_flag(%struct.sock* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MSG_DONTWAIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

68:                                               ; preds = %61
  %69 = load %struct.sock*, %struct.sock** %7, align 8
  %70 = call i32 @sk_sleep(%struct.sock* %69)
  %71 = call i32 @add_wait_queue(i32 %70, i32* @wait)
  %72 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = call i32 @sk_set_bit(i32 %72, %struct.sock* %73)
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %13, align 8
  %77 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %76, i32 0, i32 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = icmp ne %struct.sk_buff* %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %68
  %82 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %83 = call i64 @sk_psock_queue_empty(%struct.sk_psock* %82)
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %81, %68
  %87 = phi i1 [ true, %68 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @sk_wait_event(%struct.sock* %75, i64* %10, i32 %88, i32* @wait)
  %90 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %91 = load %struct.sock*, %struct.sock** %7, align 8
  %92 = call i32 @sk_clear_bit(i32 %90, %struct.sock* %91)
  %93 = load %struct.sock*, %struct.sock** %7, align 8
  %94 = call i32 @sk_sleep(%struct.sock* %93)
  %95 = call i32 @remove_wait_queue(i32 %94, i32* @wait)
  %96 = load i32, i32* @current, align 4
  %97 = call i64 @signal_pending(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @sock_intr_errno(i64 %100)
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

103:                                              ; preds = %86
  br label %22

104:                                              ; preds = %31
  %105 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %105, %struct.sk_buff** %6, align 8
  br label %106

106:                                              ; preds = %104, %99, %64, %55, %49, %38
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %107
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @sk_psock_queue_empty(%struct.sk_psock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
