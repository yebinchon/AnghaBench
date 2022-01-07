; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_advance_backlog.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_advance_backlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i64, i64, %struct.TYPE_7__, i64, i32, %struct.sk_buff_head, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_6__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TIPC_BC_RETR_LIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_link*, %struct.sk_buff_head*)* @tipc_link_advance_backlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_link_advance_backlog(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %12 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %13 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %16 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %9, align 8
  %19 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %20 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %19, i32 0, i32 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %95, %2
  %26 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %27 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %26, i32 0, i32 5
  %28 = call i64 @skb_queue_len(%struct.sk_buff_head* %27)
  %29 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %30 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %25
  %34 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %35 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %34, i32 0, i32 7
  %36 = call %struct.sk_buff* @skb_peek(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %123

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %123

47:                                               ; preds = %40
  %48 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %49 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %48, i32 0, i32 7
  %50 = call i32 @__skb_dequeue(i32* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %51)
  store %struct.tipc_msg* %52, %struct.tipc_msg** %7, align 8
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %54 = call i64 @msg_importance(%struct.tipc_msg* %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %56 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %55, i32 0, i32 6
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %65 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  %71 = icmp eq %struct.sk_buff* %63, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %47
  %76 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %77 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %76, i32 0, i32 6
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %81, align 8
  br label %82

82:                                               ; preds = %75, %47
  %83 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %84 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %83, i32 0, i32 5
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %84, %struct.sk_buff* %85)
  %87 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %88 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i32, i32* @TIPC_BC_RETR_LIM, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %96, %struct.sk_buff* %97)
  %99 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %100 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @msg_set_seqno(%struct.tipc_msg* %105, i64 %106)
  %108 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @msg_set_ack(%struct.tipc_msg* %108, i64 %109)
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %111, i64 %112)
  %114 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %115 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %117 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %25

123:                                              ; preds = %46, %39, %25
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %126 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  ret void
}

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_dequeue(i32*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @link_is_bc_sndlink(%struct.tipc_link*) #1

declare dso_local %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_seqno(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
