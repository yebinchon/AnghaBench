; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_add_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcast_add_peer(%struct.net* %0, %struct.tipc_link* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = call %struct.tipc_link* @tipc_bc_sndlink(%struct.net* %8)
  store %struct.tipc_link* %9, %struct.tipc_link** %7, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call i32 @tipc_bcast_lock(%struct.net* %10)
  %12 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %13 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %15 = call i32 @tipc_link_add_bc_peer(%struct.tipc_link* %12, %struct.tipc_link* %13, %struct.sk_buff_head* %14)
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call i32 @tipc_bcbase_select_primary(%struct.net* %16)
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = call i32 @tipc_bcbase_calc_bc_threshold(%struct.net* %18)
  %20 = load %struct.net*, %struct.net** %4, align 8
  %21 = call i32 @tipc_bcast_unlock(%struct.net* %20)
  ret void
}

declare dso_local %struct.tipc_link* @tipc_bc_sndlink(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_link_add_bc_peer(%struct.tipc_link*, %struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcbase_select_primary(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_calc_bc_threshold(%struct.net*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
