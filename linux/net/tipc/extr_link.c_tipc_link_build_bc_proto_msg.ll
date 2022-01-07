; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_bc_proto_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_bc_proto_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@BCAST_PROTOCOL = common dso_local global i32 0, align 4
@STATE_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, i32, i64, %struct.sk_buff_head*)* @tipc_link_build_bc_proto_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_link_build_bc_proto_msg(%struct.tipc_link* %0, i32 %1, i64 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %9, align 8
  %15 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %16 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %15, i32 0, i32 4
  %17 = call %struct.sk_buff* @skb_peek(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %12, align 8
  %18 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %19 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* @BCAST_PROTOCOL, align 4
  %25 = load i32, i32* @STATE_MSG, align 4
  %26 = load i32, i32* @INT_H_SIZE, align 4
  %27 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %28 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %31 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @tipc_own_addr(i32 %32)
  %34 = call %struct.sk_buff* @tipc_msg_create(i32 %24, i32 %25, i32 %26, i32 0, i32 %29, i32 %33, i32 0, i32 0, i32 0)
  store %struct.sk_buff* %34, %struct.sk_buff** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %39)
  store %struct.tipc_msg* %40, %struct.tipc_msg** %11, align 8
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %42 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @msg_set_last_bcast(%struct.tipc_msg* %41, i64 %47)
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %49, i64 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @msg_set_bcgap_after(%struct.tipc_msg* %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = call i64 @buf_seqno(%struct.sk_buff* %58)
  %60 = sub nsw i64 %59, 1
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %57, %38
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @msg_set_bcgap_to(%struct.tipc_msg* %62, i64 %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @msg_set_non_seq(%struct.tipc_msg* %65, i32 %66)
  %68 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %68, %struct.sk_buff* %69)
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %61, %37
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_last_bcast(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_bcgap_after(%struct.tipc_msg*, i64) #1

declare dso_local i64 @buf_seqno(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_bcgap_to(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_non_seq(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
