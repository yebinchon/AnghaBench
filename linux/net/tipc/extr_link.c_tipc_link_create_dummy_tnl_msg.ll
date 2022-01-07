; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_create_dummy_tnl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_create_dummy_tnl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }

@TUNNEL_PROTOCOL = common dso_local global i32 0, align 4
@FAILOVER_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@BASIC_H_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%sunable to create tunnel packet\0A\00", align 1
@link_co_err = common dso_local global i32 0, align 4
@TIPC_LOW_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_DIRECT_MSG = common dso_local global i32 0, align 4
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_create_dummy_tnl_msg(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %11 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %12 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tipc_own_addr(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %16 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %19 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %20 = load i32, i32* @FAILOVER_MSG, align 4
  %21 = load i32, i32* @INT_H_SIZE, align 4
  %22 = load i32, i32* @BASIC_H_SIZE, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.sk_buff* @tipc_msg_create(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 0, i32 0, i32 0)
  store %struct.sk_buff* %25, %struct.sk_buff** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @link_co_err, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %32)
  store %struct.tipc_msg* %33, %struct.tipc_msg** %6, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %35 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %34, i32 1)
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %37 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %38 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @msg_set_bearer_id(%struct.tipc_msg* %36, i32 %39)
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %42 = call i64 @msg_data(%struct.tipc_msg* %41)
  %43 = inttoptr i64 %42 to %struct.tipc_msg*
  store %struct.tipc_msg* %43, %struct.tipc_msg** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %46 = load i32, i32* @TIPC_LOW_IMPORTANCE, align 4
  %47 = load i32, i32* @TIPC_DIRECT_MSG, align 4
  %48 = load i32, i32* @BASIC_H_SIZE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @tipc_msg_init(i32 %44, %struct.tipc_msg* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %52 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %53 = call i32 @msg_set_errcode(%struct.tipc_msg* %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %8, %struct.sk_buff* %54)
  %56 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %57 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %58 = call i32 @tipc_link_xmit(%struct.tipc_link* %56, %struct.sk_buff_head* %8, %struct.sk_buff_head* %57)
  br label %59

59:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bearer_id(%struct.tipc_msg*, i32) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_errcode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_link_xmit(%struct.tipc_link*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
