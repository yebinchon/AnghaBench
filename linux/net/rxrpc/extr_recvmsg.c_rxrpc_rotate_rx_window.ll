; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_rotate_rx_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_rotate_rx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32*, i64, i64, i64, %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RXRPC_RXTX_BUFF_MASK = common dso_local global i32 0, align 4
@rxrpc_skb_rotated = common dso_local global i32 0, align 4
@RXRPC_RX_ANNO_SUBPACKET = common dso_local global i32 0, align 4
@RXRPC_SKB_INCL_LAST = common dso_local global i32 0, align 4
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@rxrpc_receive_rotate = common dso_local global i32 0, align 4
@RXRPC_ACK_DELAY = common dso_local global i64 0, align 8
@rxrpc_propose_ack_rotate_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_rotate_rx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_rotate_rx_window(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 6
  %20 = call i32 @smp_load_acquire(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @before(i32 %21, i32 %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RXRPC_RXTX_BUFF_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 5
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @rxrpc_skb_rotated, align 4
  %39 = call i32 @rxrpc_see_skb(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %40)
  store %struct.rxrpc_skb_priv* %41, %struct.rxrpc_skb_priv** %3, align 8
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %43 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RXRPC_RX_ANNO_SUBPACKET, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %1
  %65 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RXRPC_SKB_INCL_LAST, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %64, %1
  %73 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %74 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %73, i32 0, i32 5
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %75, i64 %77
  store %struct.sk_buff* null, %struct.sk_buff** %78, align 8
  %79 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %80 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %86 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @smp_store_release(i32* %86, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* @rxrpc_skb_freed, align 4
  %91 = call i32 @rxrpc_free_skb(%struct.sk_buff* %89, i32 %90)
  %92 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %93 = load i32, i32* @rxrpc_receive_rotate, align 4
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @trace_rxrpc_receive(%struct.rxrpc_call* %92, i32 %93, i64 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %72
  %100 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @rxrpc_end_rx_phase(%struct.rxrpc_call* %100, i64 %101)
  br label %151

103:                                              ; preds = %72
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %106 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 2
  %109 = call i64 @after_eq(i32 %104, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %114 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 2
  %117 = call i64 @after_eq(i32 %112, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %126 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @after(i32 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123, %111, %103
  %131 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %132 = load i64, i64* @RXRPC_ACK_DELAY, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load i32, i32* @rxrpc_propose_ack_rotate_rx, align 4
  %135 = call i32 @rxrpc_propose_ACK(%struct.rxrpc_call* %131, i64 %132, i64 %133, i32 1, i32 1, i32 %134)
  br label %136

136:                                              ; preds = %130, %123, %119
  %137 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %138 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %143 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RXRPC_ACK_DELAY, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %149 = call i32 @rxrpc_send_ack_packet(%struct.rxrpc_call* %148, i32 0, i32* null)
  br label %150

150:                                              ; preds = %147, %141, %136
  br label %151

151:                                              ; preds = %150, %99
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @rxrpc_see_skb(%struct.sk_buff*, i32) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @trace_rxrpc_receive(%struct.rxrpc_call*, i32, i64, i32) #1

declare dso_local i32 @rxrpc_end_rx_phase(%struct.rxrpc_call*, i64) #1

declare dso_local i64 @after_eq(i32, i64) #1

declare dso_local i64 @after(i32, i64) #1

declare dso_local i32 @rxrpc_propose_ACK(%struct.rxrpc_call*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @rxrpc_send_ack_packet(%struct.rxrpc_call*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
