; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_failover_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_failover_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32*, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Link failover deferdq not empty: %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_failover_prepare(%struct.tipc_link* %0, %struct.tipc_link* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %8 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 2
  store %struct.sk_buff_head* %9, %struct.sk_buff_head** %7, align 8
  %10 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %11 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %12 = call i32 @tipc_link_create_dummy_tnl_msg(%struct.tipc_link* %10, %struct.sk_buff_head* %11)
  %13 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %14 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %18 = call i32 @skb_queue_empty(%struct.sk_buff_head* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %26 = call i32 @skb_queue_len(%struct.sk_buff_head* %25)
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %29 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %28)
  br label %30

30:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @tipc_link_create_dummy_tnl_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
