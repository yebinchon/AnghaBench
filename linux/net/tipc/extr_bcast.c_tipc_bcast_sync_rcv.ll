; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_sync_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_sync_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

@STATE_MSG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bcast_sync_rcv(%struct.net* %0, %struct.tipc_link* %1, %struct.tipc_msg* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %5, align 8
  store %struct.tipc_msg* %2, %struct.tipc_msg** %6, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call %struct.TYPE_2__* @tipc_bc_base(%struct.net* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = call i32 @tipc_bcast_lock(%struct.net* %14)
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %17 = call i64 @msg_type(%struct.tipc_msg* %16)
  %18 = load i64, i64* @STATE_MSG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %23 = call i32 @tipc_link_bc_init_rcv(%struct.tipc_link* %21, %struct.tipc_msg* %22)
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %26 = call i32 @msg_bc_ack_invalid(%struct.tipc_msg* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %31 = call i32 @msg_bcast_ack(%struct.tipc_msg* %30)
  %32 = call i32 @tipc_link_bc_ack_rcv(%struct.tipc_link* %29, i32 %31, %struct.sk_buff_head* %8)
  %33 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %35 = call i32 @tipc_link_bc_sync_rcv(%struct.tipc_link* %33, %struct.tipc_msg* %34, %struct.sk_buff_head* %8)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %28, %24
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.net*, %struct.net** %4, align 8
  %39 = call i32 @tipc_bcast_unlock(%struct.net* %38)
  %40 = load %struct.net*, %struct.net** %4, align 8
  %41 = call i32 @tipc_bcbase_xmit(%struct.net* %40, %struct.sk_buff_head* %8)
  %42 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %43 = call i32 @skb_queue_empty(%struct.sk_buff_head* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.net*, %struct.net** %4, align 8
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %48 = call i32 @tipc_sk_rcv(%struct.net* %46, %struct.sk_buff_head* %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_bc_init_rcv(%struct.tipc_link*, %struct.tipc_msg*) #1

declare dso_local i32 @msg_bc_ack_invalid(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_bc_ack_rcv(%struct.tipc_link*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_bc_sync_rcv(%struct.tipc_link*, %struct.tipc_msg*, %struct.sk_buff_head*) #1

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
