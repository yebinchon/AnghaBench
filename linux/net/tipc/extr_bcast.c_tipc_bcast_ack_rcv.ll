; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_ack_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_ack_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcast_ack_rcv(%struct.net* %0, %struct.tipc_link* %1, %struct.tipc_msg* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff_head, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %5, align 8
  store %struct.tipc_msg* %2, %struct.tipc_msg** %6, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call %struct.TYPE_2__* @tipc_bc_base(%struct.net* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %7, align 8
  %13 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %14 = call i32 @msg_bcast_ack(%struct.tipc_msg* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %16 = call i64 @msg_bc_ack_invalid(%struct.tipc_msg* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %37

19:                                               ; preds = %3
  %20 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %9)
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = call i32 @tipc_bcast_lock(%struct.net* %21)
  %23 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @tipc_link_bc_ack_rcv(%struct.tipc_link* %23, i32 %24, %struct.sk_buff_head* %9)
  %26 = load %struct.net*, %struct.net** %4, align 8
  %27 = call i32 @tipc_bcast_unlock(%struct.net* %26)
  %28 = load %struct.net*, %struct.net** %4, align 8
  %29 = call i32 @tipc_bcbase_xmit(%struct.net* %28, %struct.sk_buff_head* %9)
  %30 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %31 = call i32 @skb_queue_empty(%struct.sk_buff_head* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %19
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %36 = call i32 @tipc_sk_rcv(%struct.net* %34, %struct.sk_buff_head* %35)
  br label %37

37:                                               ; preds = %18, %33, %19
  ret void
}

declare dso_local %struct.TYPE_2__* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bc_ack_invalid(%struct.tipc_msg*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_link_bc_ack_rcv(%struct.tipc_link*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_xmit(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_rcv(%struct.net*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
