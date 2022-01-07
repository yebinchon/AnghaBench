; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_kern_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_kern_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@TOP_SRV = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.tipc_event*)* @tipc_topsrv_kern_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_topsrv_kern_evt(%struct.net* %0, %struct.tipc_event* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.tipc_event* %1, %struct.tipc_event** %4, align 8
  %9 = load %struct.tipc_event*, %struct.tipc_event** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = call i32 @tipc_own_addr(%struct.net* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @TOP_SRV, align 4
  %16 = load i32, i32* @INT_H_SIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.sk_buff* @tipc_msg_create(i32 %15, i32 0, i32 %16, i32 4, i32 %17, i32 %18, i32 %19, i32 %20, i32 0)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @buf_msg(%struct.sk_buff* %26)
  %28 = call i32 @msg_set_dest_droppable(i32 %27, i32 1)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @buf_msg(%struct.sk_buff* %29)
  %31 = call i32 @msg_data(i32 %30)
  %32 = load %struct.tipc_event*, %struct.tipc_event** %4, align 8
  %33 = call i32 @memcpy(i32 %31, %struct.tipc_event* %32, i32 4)
  %34 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %7)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %7, %struct.sk_buff* %35)
  %37 = load %struct.net*, %struct.net** %3, align 8
  %38 = call i32 @tipc_loopback_trace(%struct.net* %37, %struct.sk_buff_head* %7)
  %39 = load %struct.net*, %struct.net** %3, align 8
  %40 = call i32 @tipc_sk_rcv(%struct.net* %39, %struct.sk_buff_head* %7)
  br label %41

41:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_dest_droppable(i32, i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, %struct.tipc_event*, i32) #1

declare dso_local i32 @msg_data(i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_loopback_trace(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_rcv(%struct.net*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
