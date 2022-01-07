; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_udp_data_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_udp_data_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*)* @xs_udp_data_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_udp_data_receive(%struct.sock_xprt* %0) #0 {
  %2 = alloca %struct.sock_xprt*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock_xprt* %0, %struct.sock_xprt** %2, align 8
  %6 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %7 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %10 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %9, i32 0, i32 2
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp eq %struct.sock* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %22, %15
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call %struct.sk_buff* @skb_recv_udp(%struct.sock* %17, i32 0, i32 1, i32* %5)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %24 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %23, i32 0, i32 1
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @xs_udp_data_read_skb(i32* %24, %struct.sock* %25, %struct.sk_buff* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @consume_skb(%struct.sk_buff* %28)
  %30 = call i32 (...) @cond_resched()
  br label %16

31:                                               ; preds = %21
  %32 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %33 = call i32 @xs_poll_check_readable(%struct.sock_xprt* %32)
  br label %34

34:                                               ; preds = %31, %14
  %35 = load %struct.sock_xprt*, %struct.sock_xprt** %2, align 8
  %36 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_udp(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @xs_udp_data_read_skb(i32*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @xs_poll_check_readable(%struct.sock_xprt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
