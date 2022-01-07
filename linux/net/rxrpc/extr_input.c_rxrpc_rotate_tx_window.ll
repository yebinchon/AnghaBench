; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_rotate_tx_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_rotate_tx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32*, i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.rxrpc_ack_summary = type { i32, i32 }

@RXRPC_RXTX_BUFF_MASK = common dso_local global i32 0, align 4
@rxrpc_skb_rotated = common dso_local global i32 0, align 4
@RXRPC_TX_ANNO_LAST = common dso_local global i32 0, align 4
@RXRPC_CALL_TX_LAST = common dso_local global i32 0, align 4
@RXRPC_TX_ANNO_MASK = common dso_local global i32 0, align 4
@RXRPC_TX_ANNO_ACK = common dso_local global i32 0, align 4
@rxrpc_transmit_rotate_last = common dso_local global i32 0, align 4
@rxrpc_transmit_rotate = common dso_local global i32 0, align 4
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, i8*, %struct.rxrpc_ack_summary*)* @rxrpc_rotate_tx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_rotate_tx_window(%struct.rxrpc_call* %0, i8* %1, %struct.rxrpc_ack_summary* %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rxrpc_ack_summary*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.rxrpc_ack_summary* %2, %struct.rxrpc_ack_summary** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %23 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %39

24:                                               ; preds = %3
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @before_eq(i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.rxrpc_ack_summary*, %struct.rxrpc_ack_summary** %6, align 8
  %33 = getelementptr inbounds %struct.rxrpc_ack_summary, %struct.rxrpc_ack_summary* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %41 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %40, i32 0, i32 4
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %113, %39
  %44 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %45 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @before(i32 %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %114

50:                                               ; preds = %43
  %51 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %52 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %56 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RXRPC_RXTX_BUFF_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %61 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %60, i32 0, i32 6
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %62, i64 %64
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  %67 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %68 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load i32, i32* @rxrpc_skb_rotated, align 4
  %76 = call i32 @rxrpc_see_skb(%struct.sk_buff* %74, i32 %75)
  %77 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %78 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %77, i32 0, i32 6
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %79, i64 %81
  store %struct.sk_buff* null, %struct.sk_buff** %82, align 8
  %83 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %84 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store %struct.sk_buff* %89, %struct.sk_buff** %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @RXRPC_TX_ANNO_LAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %50
  %98 = load i32, i32* @RXRPC_CALL_TX_LAST, align 4
  %99 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %100 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %99, i32 0, i32 5
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %97, %50
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @RXRPC_TX_ANNO_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @RXRPC_TX_ANNO_ACK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.rxrpc_ack_summary*, %struct.rxrpc_ack_summary** %6, align 8
  %110 = getelementptr inbounds %struct.rxrpc_ack_summary, %struct.rxrpc_ack_summary* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %102
  br label %43

114:                                              ; preds = %43
  %115 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %116 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %115, i32 0, i32 4
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @rxrpc_transmit_rotate_last, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @rxrpc_transmit_rotate, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = call i32 @trace_rxrpc_transmit(%struct.rxrpc_call* %118, i32 %126)
  %128 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %129 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %128, i32 0, i32 3
  %130 = call i32 @wake_up(i32* %129)
  br label %131

131:                                              ; preds = %134, %125
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %7, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  store %struct.sk_buff* %138, %struct.sk_buff** %8, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = load i32, i32* @rxrpc_skb_freed, align 4
  %143 = call i32 @rxrpc_free_skb(%struct.sk_buff* %141, i32 %142)
  br label %131

144:                                              ; preds = %131
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i64 @before_eq(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @before(i32, i8*) #1

declare dso_local i32 @rxrpc_see_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_rxrpc_transmit(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
