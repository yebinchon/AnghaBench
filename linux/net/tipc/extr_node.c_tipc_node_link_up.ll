; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tipc_media_addr }
%struct.tipc_media_addr = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, i32, %struct.sk_buff_head*)* @tipc_node_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_link_up(%struct.tipc_node* %0, i32 %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.tipc_media_addr*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %8 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %9 = call i32 @tipc_node_write_lock(%struct.tipc_node* %8)
  %10 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %13 = call i32 @__tipc_node_link_up(%struct.tipc_node* %10, i32 %11, %struct.sk_buff_head* %12)
  %14 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.tipc_media_addr* %20, %struct.tipc_media_addr** %7, align 8
  %21 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %26 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %7, align 8
  %27 = call i32 @tipc_bearer_xmit(i32 %23, i32 %24, %struct.sk_buff_head* %25, %struct.tipc_media_addr* %26)
  %28 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %29 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %28)
  ret void
}

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i32 @__tipc_node_link_up(%struct.tipc_node*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bearer_xmit(i32, i32, %struct.sk_buff_head*, %struct.tipc_media_addr*) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
