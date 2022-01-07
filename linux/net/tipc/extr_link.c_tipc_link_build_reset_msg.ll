; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_reset_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_reset_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@RESET_MSG = common dso_local global i32 0, align 4
@LINK_ESTABLISHING = common dso_local global i64 0, align 8
@ACTIVATE_MSG = common dso_local global i32 0, align 4
@LINK_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_build_reset_msg(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %7 = load i32, i32* @RESET_MSG, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LINK_ESTABLISHING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ACTIVATE_MSG, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %19 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %16, i32 %17, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.sk_buff_head* %18)
  %20 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %21 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %26 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LINK_RESET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @buf_msg(%struct.sk_buff* %31)
  %33 = call i32 @msg_set_peer_stopping(i32 %32, i32 1)
  br label %34

34:                                               ; preds = %30, %24, %15
  ret void
}

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local i32 @msg_set_peer_stopping(i32, i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
