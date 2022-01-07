; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_assemble.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"Failed do assemble buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_assemble(%struct.sk_buff_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff_head*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %7 = call i32 @skb_queue_len(%struct.sk_buff_head* %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %28, %10
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %13 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = call i64 @tipc_buf_append(%struct.sk_buff** %5, %struct.sk_buff** %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %21, %struct.sk_buff* %22)
  store i32 1, i32* %2, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  br label %11

29:                                               ; preds = %27, %11
  %30 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %31 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %30)
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %33 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %32)
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %20, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @tipc_buf_append(%struct.sk_buff**, %struct.sk_buff**) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
