; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_mcast_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_mcast_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, %struct.tipc_bclink_entry }
%struct.tipc_bclink_entry = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*)* @tipc_node_mcast_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_mcast_rcv(%struct.tipc_node* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca %struct.tipc_bclink_entry*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %2, align 8
  %4 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %5 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %4, i32 0, i32 1
  store %struct.tipc_bclink_entry* %5, %struct.tipc_bclink_entry** %3, align 8
  %6 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %14, i32 0, i32 2
  %16 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %17 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %16, i32 0, i32 1
  %18 = call i32 @skb_queue_splice_tail_init(%struct.TYPE_4__* %15, i32* %17)
  %19 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %20 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %24 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %28 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %31 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %30, i32 0, i32 1
  %32 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %3, align 8
  %33 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %32, i32 0, i32 0
  %34 = call i32 @tipc_sk_mcast_rcv(i32 %29, i32* %31, %struct.TYPE_3__* %33)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_sk_mcast_rcv(i32, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
