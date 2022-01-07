; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_set_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_set_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_keepalive(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @TCPF_CLOSE, align 4
  %10 = load i32, i32* @TCPF_LISTEN, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %21 = call i32 @sock_flag(%struct.sock* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @tcp_sk(%struct.sock* %25)
  %27 = call i32 @keepalive_time_when(i32 %26)
  %28 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %24, i32 %27)
  br label %36

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @inet_csk_delete_keepalive_timer(%struct.sock* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %14, %35, %23
  ret void
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_time_when(i32) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

declare dso_local i32 @inet_csk_delete_keepalive_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
