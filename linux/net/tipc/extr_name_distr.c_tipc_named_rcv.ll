; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_net = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.distr_item = type { i32 }
%struct.sk_buff = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@ITEM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_named_rcv(%struct.net* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.tipc_net*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.distr_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %12 = load %struct.net*, %struct.net** %3, align 8
  %13 = load i32, i32* @tipc_net_id, align 4
  %14 = call %struct.tipc_net* @net_generic(%struct.net* %12, i32 %13)
  store %struct.tipc_net* %14, %struct.tipc_net** %5, align 8
  %15 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %19 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %10, align 8
  br label %20

20:                                               ; preds = %54, %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = call i32 @skb_linearize(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %26)
  store %struct.tipc_msg* %27, %struct.tipc_msg** %6, align 8
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %29 = call i32 @msg_type(%struct.tipc_msg* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %31 = call i64 @msg_data(%struct.tipc_msg* %30)
  %32 = inttoptr i64 %31 to %struct.distr_item*
  store %struct.distr_item* %32, %struct.distr_item** %7, align 8
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %34 = call i32 @msg_data_sz(%struct.tipc_msg* %33)
  %35 = load i32, i32* @ITEM_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %38 = call i32 @msg_orignode(%struct.tipc_msg* %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %43, %23
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.net*, %struct.net** %3, align 8
  %45 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @tipc_update_nametbl(%struct.net* %44, %struct.distr_item* %45, i32 %46, i32 %47)
  %49 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %50 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %49, i32 1
  store %struct.distr_item* %50, %struct.distr_item** %7, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %56 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %10, align 8
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_bh(i32* %59)
  ret void
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_update_nametbl(%struct.net*, %struct.distr_item*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
