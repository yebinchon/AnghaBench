; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

@BCAST_PROTOCOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bcast_rcv(%struct.net* %0, %struct.tipc_link* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.tipc_link*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca %struct.sk_buff_head, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %12)
  store %struct.tipc_msg* %13, %struct.tipc_msg** %8, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = call %struct.TYPE_2__* @tipc_bc_base(%struct.net* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.sk_buff_head* %16, %struct.sk_buff_head** %9, align 8
  %17 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %19 = call i64 @msg_mc_netid(%struct.tipc_msg* %18)
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = call i64 @tipc_netid(%struct.net* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %25 = call i32 @tipc_link_is_up(%struct.tipc_link* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  store i32 0, i32* %4, align 4
  br label %59

30:                                               ; preds = %23
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = call i32 @tipc_bcast_lock(%struct.net* %31)
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %34 = call i64 @msg_user(%struct.tipc_msg* %33)
  %35 = load i64, i64* @BCAST_PROTOCOL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @tipc_link_bc_nack_rcv(%struct.tipc_link* %38, %struct.sk_buff* %39, %struct.sk_buff_head* %10)
  store i32 %40, i32* %11, align 4
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @tipc_link_rcv(%struct.tipc_link* %42, %struct.sk_buff* %43, i32* null)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.net*, %struct.net** %5, align 8
  %47 = call i32 @tipc_bcast_unlock(%struct.net* %46)
  %48 = load %struct.net*, %struct.net** %5, align 8
  %49 = call i32 @tipc_bcbase_xmit(%struct.net* %48, %struct.sk_buff_head* %10)
  %50 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %51 = call i32 @skb_queue_empty(%struct.sk_buff_head* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load %struct.net*, %struct.net** %5, align 8
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %56 = call i32 @tipc_sk_rcv(%struct.net* %54, %struct.sk_buff_head* %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %27
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @msg_mc_netid(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_netid(%struct.net*) #1

declare dso_local i32 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_bc_nack_rcv(%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_rcv(%struct.tipc_link*, %struct.sk_buff*, i32*) #1

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
