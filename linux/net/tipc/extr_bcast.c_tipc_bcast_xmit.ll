; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_link = type { i32 }

@ELINKCONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff_head*, i32*)* @tipc_bcast_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bcast_xmit(%struct.net* %0, %struct.sk_buff_head* %1, i32* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tipc_link*, align 8
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call %struct.tipc_link* @tipc_bc_sndlink(%struct.net* %10)
  store %struct.tipc_link* %11, %struct.tipc_link** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = call i32 @tipc_bcast_lock(%struct.net* %13)
  %15 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %16 = call i64 @tipc_link_bc_peers(%struct.tipc_link* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %20 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %21 = call i32 @tipc_link_xmit(%struct.tipc_link* %19, %struct.sk_buff_head* %20, %struct.sk_buff_head* %8)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.net*, %struct.net** %4, align 8
  %24 = call i32 @tipc_bcast_unlock(%struct.net* %23)
  %25 = load %struct.net*, %struct.net** %4, align 8
  %26 = call i32 @tipc_bcbase_xmit(%struct.net* %25, %struct.sk_buff_head* %8)
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %28 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ELINKCONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32*, i32** %6, align 8
  store i32 1, i32* %34, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.tipc_link* @tipc_bc_sndlink(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i64 @tipc_link_bc_peers(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_xmit(%struct.tipc_link*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_xmit(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
