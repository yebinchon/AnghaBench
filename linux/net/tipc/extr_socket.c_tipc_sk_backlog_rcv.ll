; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_backlog_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_backlog_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tipc_sk_backlog_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_backlog_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @sk_rmem_alloc_get(%struct.sock* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @tipc_sk_filter_rcv(%struct.sock* %11, %struct.sk_buff* %12, %struct.sk_buff_head* %6)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @sk_rmem_alloc_get(%struct.sock* %14)
  %16 = load i32, i32* %5, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.TYPE_2__* @tipc_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_add(i32 %18, i32* %21)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = call i32 @tipc_node_distr_xmit(i32 %24, %struct.sk_buff_head* %6)
  ret i32 0
}

declare dso_local i32 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_filter_rcv(%struct.sock*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @tipc_node_distr_xmit(i32, %struct.sk_buff_head*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
