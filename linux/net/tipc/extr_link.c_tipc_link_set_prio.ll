; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

@STATE_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_set_prio(%struct.tipc_link* %0, i32 %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %11 = load i32, i32* @STATE_MSG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %14 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %10, i32 %11, i32 0, i32 0, i32 0, i32 0, i32 %12, %struct.sk_buff_head* %13)
  ret void
}

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
