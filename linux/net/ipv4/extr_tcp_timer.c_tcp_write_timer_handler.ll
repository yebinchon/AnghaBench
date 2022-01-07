; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i32, i32 }

@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_write_timer_handler(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %5)
  store %struct.inet_connection_sock* %6, %struct.inet_connection_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @TCPF_CLOSE, align 4
  %12 = load i32, i32* @TCPF_LISTEN, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %62

22:                                               ; preds = %16
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @jiffies, align 4
  %27 = call i64 @time_after(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 2
  %33 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %34 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sk_reset_timer(%struct.sock* %30, i32* %32, i32 %35)
  br label %62

37:                                               ; preds = %22
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 @tcp_sk(%struct.sock* %38)
  %40 = call i32 @tcp_mstamp_refresh(i32 %39)
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %61 [
    i32 129, label %45
    i32 131, label %48
    i32 128, label %51
    i32 130, label %56
  ]

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 @tcp_rack_reo_timeout(%struct.sock* %46)
  br label %61

48:                                               ; preds = %37
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = call i32 @tcp_send_loss_probe(%struct.sock* %49)
  br label %61

51:                                               ; preds = %37
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call i32 @tcp_retransmit_timer(%struct.sock* %54)
  br label %61

56:                                               ; preds = %37
  %57 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %58 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = call i32 @tcp_probe_timer(%struct.sock* %59)
  br label %61

61:                                               ; preds = %37, %56, %51, %48, %45
  br label %62

62:                                               ; preds = %61, %29, %21
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = call i32 @sk_mem_reclaim(%struct.sock* %63)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i32) #1

declare dso_local i32 @tcp_mstamp_refresh(i32) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_rack_reo_timeout(%struct.sock*) #1

declare dso_local i32 @tcp_send_loss_probe(%struct.sock*) #1

declare dso_local i32 @tcp_retransmit_timer(%struct.sock*) #1

declare dso_local i32 @tcp_probe_timer(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
