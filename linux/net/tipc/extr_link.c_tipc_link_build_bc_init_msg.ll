; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_bc_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_bc_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_link*, %struct.sk_buff_head*)* @tipc_link_build_bc_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_link_build_bc_init_msg(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %6 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %7 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @tipc_link_build_bc_proto_msg(i32 %9, i32 0, i32 0, %struct.sk_buff_head* %5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = call i32 @skb_peek(%struct.sk_buff_head* %5)
  %15 = call i32 @buf_msg(i32 %14)
  %16 = call i32 @msg_set_bc_ack_invalid(i32 %15, i32 1)
  %17 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %19 = call i32 @tipc_link_xmit(%struct.tipc_link* %17, %struct.sk_buff_head* %5, %struct.sk_buff_head* %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_build_bc_proto_msg(i32, i32, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @msg_set_bc_ack_invalid(i32, i32) #1

declare dso_local i32 @buf_msg(i32) #1

declare dso_local i32 @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_xmit(%struct.tipc_link*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
