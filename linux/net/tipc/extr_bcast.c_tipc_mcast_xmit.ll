; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_mcast_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_mcast_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_mc_method = type { i32 }
%struct.tipc_nlist = type { i64, i64 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_mcast_xmit(%struct.net* %0, %struct.sk_buff_head* %1, %struct.tipc_mc_method* %2, %struct.tipc_nlist* %3, i32* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.tipc_mc_method*, align 8
  %9 = alloca %struct.tipc_nlist*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff_head, align 4
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tipc_msg*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store %struct.tipc_mc_method* %2, %struct.tipc_mc_method** %8, align 8
  store %struct.tipc_nlist* %3, %struct.tipc_nlist** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %18 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %20 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %11)
  %21 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %22 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %23 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = call i32 @tipc_msg_reassemble(%struct.sk_buff_head* %27, %struct.sk_buff_head* %12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %102

33:                                               ; preds = %26, %5
  %34 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %35 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %33
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %41 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %44 = call i32 @tipc_bcast_select_xmit_method(%struct.net* %39, i64 %42, %struct.tipc_mc_method* %43)
  %45 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %46 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %15, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %48 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %47)
  store %struct.tipc_msg* %48, %struct.tipc_msg** %14, align 8
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %50 = call i64 @msg_user(%struct.tipc_msg* %49)
  %51 = load i64, i64* @MSG_FRAGMENTER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %55 = call %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg* %54)
  store %struct.tipc_msg* %55, %struct.tipc_msg** %14, align 8
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %58 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %59 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @msg_set_is_rcast(%struct.tipc_msg* %57, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %64 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.net*, %struct.net** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %70 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %71 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @tipc_mcast_send_sync(%struct.net* %68, %struct.sk_buff* %69, %struct.tipc_mc_method* %70, %struct.tipc_nlist* %71, i32* %72)
  br label %74

74:                                               ; preds = %67, %56
  %75 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %8, align 8
  %76 = getelementptr inbounds %struct.tipc_mc_method, %struct.tipc_mc_method* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.net*, %struct.net** %6, align 8
  %81 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %82 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @tipc_rcast_xmit(%struct.net* %80, %struct.sk_buff_head* %81, %struct.tipc_nlist* %82, i32* %83)
  store i32 %84, i32* %16, align 4
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.net*, %struct.net** %6, align 8
  %87 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @tipc_bcast_xmit(%struct.net* %86, %struct.sk_buff_head* %87, i32* %88)
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %33
  %92 = load %struct.tipc_nlist*, %struct.tipc_nlist** %9, align 8
  %93 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.net*, %struct.net** %6, align 8
  %98 = call i32 @tipc_loopback_trace(%struct.net* %97, %struct.sk_buff_head* %12)
  %99 = load %struct.net*, %struct.net** %6, align 8
  %100 = call i32 @tipc_sk_mcast_rcv(%struct.net* %99, %struct.sk_buff_head* %12, %struct.sk_buff_head* %11)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %30
  %103 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %104 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %103)
  %105 = load i32, i32* %16, align 4
  ret i32 %105
}

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_msg_reassemble(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bcast_select_xmit_method(%struct.net*, i64, %struct.tipc_mc_method*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_is_rcast(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_mcast_send_sync(%struct.net*, %struct.sk_buff*, %struct.tipc_mc_method*, %struct.tipc_nlist*, i32*) #1

declare dso_local i32 @tipc_rcast_xmit(%struct.net*, %struct.sk_buff_head*, %struct.tipc_nlist*, i32*) #1

declare dso_local i32 @tipc_bcast_xmit(%struct.net*, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @tipc_loopback_trace(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_mcast_rcv(%struct.net*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
