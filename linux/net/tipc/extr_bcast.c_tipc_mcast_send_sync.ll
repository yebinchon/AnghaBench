; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_mcast_send_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_mcast_send_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_mc_method = type { i64 }
%struct.tipc_nlist = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TIPC_MCAST_RBCTL = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@TIPC_MCAST_MSG = common dso_local global i64 0, align 8
@MCAST_H_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.tipc_mc_method*, %struct.tipc_nlist*, i32*)* @tipc_mcast_send_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_mcast_send_sync(%struct.net* %0, %struct.sk_buff* %1, %struct.tipc_mc_method* %2, %struct.tipc_nlist* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tipc_mc_method*, align 8
  %10 = alloca %struct.tipc_nlist*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tipc_msg*, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  %14 = alloca %struct.sk_buff_head, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.tipc_mc_method* %2, %struct.tipc_mc_method** %9, align 8
  store %struct.tipc_nlist* %3, %struct.tipc_nlist** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = call %struct.TYPE_2__* @tipc_net(%struct.net* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TIPC_MCAST_RBCTL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %88

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %25)
  store %struct.tipc_msg* %26, %struct.tipc_msg** %12, align 8
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %28 = call i64 @msg_user(%struct.tipc_msg* %27)
  %29 = load i64, i64* @MSG_FRAGMENTER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %33 = call %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg* %32)
  store %struct.tipc_msg* %33, %struct.tipc_msg** %12, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %36 = call i64 @msg_type(%struct.tipc_msg* %35)
  %37 = load i64, i64* @TIPC_MCAST_MSG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %88

40:                                               ; preds = %34
  %41 = load i32, i32* @MCAST_H_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.sk_buff* @tipc_buf_acquire(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %15, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %88

49:                                               ; preds = %40
  %50 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %51 = call i32 @msg_set_syn(%struct.tipc_msg* %50, i32 1)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %54 = load i32, i32* @MCAST_H_SIZE, align 4
  %55 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %52, %struct.tipc_msg* %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %57 = call i32 @skb_orphan(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %59 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %58)
  store %struct.tipc_msg* %59, %struct.tipc_msg** %13, align 8
  %60 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %61 = load i32, i32* @MCAST_H_SIZE, align 4
  %62 = call i32 @msg_set_size(%struct.tipc_msg* %60, i32 %61)
  %63 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %64 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %65 = call i32 @msg_is_rcast(%struct.tipc_msg* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @msg_set_is_rcast(%struct.tipc_msg* %63, i32 %68)
  %70 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %14)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %72 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %14, %struct.sk_buff* %71)
  %73 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %9, align 8
  %74 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %49
  %78 = load %struct.net*, %struct.net** %7, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @tipc_bcast_xmit(%struct.net* %78, %struct.sk_buff_head* %14, i32* %79)
  br label %86

81:                                               ; preds = %49
  %82 = load %struct.net*, %struct.net** %7, align 8
  %83 = load %struct.tipc_nlist*, %struct.tipc_nlist** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @tipc_rcast_xmit(%struct.net* %82, %struct.sk_buff_head* %14, %struct.tipc_nlist* %83, i32* %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %14)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %46, %39, %23
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_2__* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i32 @msg_set_syn(%struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_is_rcast(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_is_rcast(%struct.tipc_msg*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_bcast_xmit(%struct.net*, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @tipc_rcast_xmit(%struct.net*, %struct.sk_buff_head*, %struct.tipc_nlist*, i32*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
