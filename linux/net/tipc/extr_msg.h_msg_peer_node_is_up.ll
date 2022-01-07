; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_peer_node_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_peer_node_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_msg*)* @msg_peer_node_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_peer_node_is_up(%struct.tipc_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_msg* %0, %struct.tipc_msg** %3, align 8
  %4 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %5 = call i64 @msg_peer_link_is_up(%struct.tipc_msg* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %10 = call i32 @msg_redundant_link(%struct.tipc_msg* %9)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i64 @msg_peer_link_is_up(%struct.tipc_msg*) #1

declare dso_local i32 @msg_redundant_link(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
