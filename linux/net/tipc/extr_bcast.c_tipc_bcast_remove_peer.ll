; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_remove_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_remove_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcast_remove_peer(%struct.net* %0, %struct.tipc_link* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff_head, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %4, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call %struct.tipc_link* @tipc_bc_sndlink(%struct.net* %8)
  store %struct.tipc_link* %9, %struct.tipc_link** %5, align 8
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = call %struct.TYPE_2__* @tipc_bc_base(%struct.net* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %6, align 8
  %13 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = call i32 @tipc_bcast_lock(%struct.net* %14)
  %16 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %17 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %18 = call i32 @tipc_link_remove_bc_peer(%struct.tipc_link* %16, %struct.tipc_link* %17, %struct.sk_buff_head* %7)
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = call i32 @tipc_bcbase_select_primary(%struct.net* %19)
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = call i32 @tipc_bcbase_calc_bc_threshold(%struct.net* %21)
  %23 = load %struct.net*, %struct.net** %3, align 8
  %24 = call i32 @tipc_bcast_unlock(%struct.net* %23)
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = call i32 @tipc_bcbase_xmit(%struct.net* %25, %struct.sk_buff_head* %7)
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %28 = call i32 @skb_queue_empty(%struct.sk_buff_head* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.net*, %struct.net** %3, align 8
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %33 = call i32 @tipc_sk_rcv(%struct.net* %31, %struct.sk_buff_head* %32)
  br label %34

34:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.tipc_link* @tipc_bc_sndlink(%struct.net*) #1

declare dso_local %struct.TYPE_2__* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_link_remove_bc_peer(%struct.tipc_link*, %struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcbase_select_primary(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_calc_bc_threshold(%struct.net*) #1

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
