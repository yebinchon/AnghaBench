; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_post_packet_to_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_post_packet_to_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%p\00", align 1
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_local*, %struct.sk_buff*)* @rxrpc_post_packet_to_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_post_packet_to_local(%struct.rxrpc_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_local* %5, %struct.sk_buff* %6)
  %8 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %9 = call i64 @rxrpc_get_local_maybe(%struct.rxrpc_local* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %13 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_queue_tail(i32* %13, %struct.sk_buff* %14)
  %16 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %17 = call i32 @rxrpc_queue_local(%struct.rxrpc_local* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @rxrpc_skb_freed, align 4
  %21 = call i32 @rxrpc_free_skb(%struct.sk_buff* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.rxrpc_local*, %struct.sk_buff*) #1

declare dso_local i64 @rxrpc_get_local_maybe(%struct.rxrpc_local*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_queue_local(%struct.rxrpc_local*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
