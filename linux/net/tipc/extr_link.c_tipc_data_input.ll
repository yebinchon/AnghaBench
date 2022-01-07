; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_data_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_data_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.sk_buff_head*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff_head* }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }

@LINK_ESTABLISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Dropping received illegal msg type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*)* @tipc_data_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_data_input(%struct.tipc_link* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %10 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  store %struct.sk_buff_head* %14, %struct.sk_buff_head** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %15)
  store %struct.tipc_msg* %16, %struct.tipc_msg** %9, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %18 = call i32 @msg_user(%struct.tipc_msg* %17)
  switch i32 %18, label %57 [
    i32 130, label %19
    i32 129, label %19
    i32 131, label %19
    i32 132, label %19
    i32 137, label %37
    i32 136, label %41
    i32 133, label %45
    i32 135, label %56
    i32 128, label %56
    i32 134, label %56
    i32 138, label %56
  ]

19:                                               ; preds = %3, %3, %3, %3
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %21 = call i32 @msg_in_group(%struct.tipc_msg* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %25 = call i32 @msg_mcast(%struct.tipc_msg* %24)
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ true, %19 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @unlikely(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @skb_queue_tail(%struct.sk_buff_head* %33, %struct.sk_buff* %34)
  store i32 1, i32* %4, align 4
  br label %61

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %3, %36
  %38 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_queue_tail(%struct.sk_buff_head* %38, %struct.sk_buff* %39)
  store i32 1, i32* %4, align 4
  br label %61

41:                                               ; preds = %3
  %42 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @skb_queue_tail(%struct.sk_buff_head* %42, %struct.sk_buff* %43)
  store i32 1, i32* %4, align 4
  br label %61

45:                                               ; preds = %3
  %46 = load i32, i32* @LINK_ESTABLISHED, align 4
  %47 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %48 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %52 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %51, i32 0, i32 0
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @skb_queue_tail(%struct.sk_buff_head* %53, %struct.sk_buff* %54)
  store i32 1, i32* %4, align 4
  br label %61

56:                                               ; preds = %3, %3, %3, %3
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %3
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %56, %45, %41, %37, %32
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @msg_in_group(%struct.tipc_msg*) #1

declare dso_local i32 @msg_mcast(%struct.tipc_msg*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
