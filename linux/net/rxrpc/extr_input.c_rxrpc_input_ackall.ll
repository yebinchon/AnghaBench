; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ackall.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ackall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_ack_summary = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Rx ACKALL %%%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ETL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*)* @rxrpc_input_ackall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_ackall(%struct.rxrpc_call* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rxrpc_ack_summary, align 4
  %6 = alloca %struct.rxrpc_skb_priv*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = bitcast %struct.rxrpc_ack_summary* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %8)
  store %struct.rxrpc_skb_priv* %9, %struct.rxrpc_skb_priv** %6, align 8
  %10 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %11 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_proto(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @rxrpc_rotate_tx_window(%struct.rxrpc_call* %18, i32 %21, %struct.rxrpc_ack_summary* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %26 = call i32 @rxrpc_end_tx_phase(%struct.rxrpc_call* %25, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %29 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #2

declare dso_local i32 @_proto(i8*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @rxrpc_rotate_tx_window(%struct.rxrpc_call*, i32, %struct.rxrpc_ack_summary*) #2

declare dso_local i32 @rxrpc_end_tx_phase(%struct.rxrpc_call*, i32, i8*) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
