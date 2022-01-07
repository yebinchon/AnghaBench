; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bklg & rcvq >90% allocated!\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"err_overload!\00", align 1
@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"@sk_enqueue!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff_head*, %struct.sock*, i32, %struct.sk_buff_head*)* @tipc_sk_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_enqueue(%struct.sk_buff_head* %0, %struct.sock* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %14 = load i32, i32* @jiffies, align 4
  %15 = add nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %76, %43, %4
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %19 = call i64 @skb_queue_len(%struct.sk_buff_head* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %105

21:                                               ; preds = %17
  %22 = load i32, i32* @jiffies, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @time_after_eq(i32 %22, i64 %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %105

28:                                               ; preds = %21
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.sk_buff* @tipc_skb_dequeue(%struct.sk_buff_head* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %10, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %105

39:                                               ; preds = %28
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call i32 @sock_owned_by_user(%struct.sock* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %47 = call i32 @tipc_sk_filter_rcv(%struct.sock* %44, %struct.sk_buff* %45, %struct.sk_buff_head* %46)
  br label %17

48:                                               ; preds = %39
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = call %struct.TYPE_4__* @tipc_sk(%struct.sock* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* %51, i32** %12, align 8
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %48
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call i32 @rcvbuf_limit(%struct.sock* %61, %struct.sk_buff* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @atomic_read(i32* %64)
  %66 = add i32 %63, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sk_add_backlog(%struct.sock* %67, %struct.sk_buff* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %60
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %80 = call i32 @trace_tipc_sk_overlimit1(%struct.sock* %77, %struct.sk_buff* %78, i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

81:                                               ; preds = %60
  %82 = load %struct.sock*, %struct.sock** %6, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %85 = call i32 @trace_tipc_sk_dump(%struct.sock* %82, %struct.sk_buff* %83, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = call i32 @sock_net(%struct.sock* %86)
  %88 = call i32 @tipc_own_addr(i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  %94 = call i64 @tipc_msg_reverse(i32 %92, %struct.sk_buff** %10, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %81
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %100 = call i32 @trace_tipc_sk_rej_msg(%struct.sock* %97, %struct.sk_buff* %98, i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %101, %struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %96, %81
  br label %105

105:                                              ; preds = %27, %38, %104, %17
  ret void
}

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local %struct.sk_buff* @tipc_skb_dequeue(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @tipc_sk_filter_rcv(%struct.sock*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_4__* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcvbuf_limit(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @trace_tipc_sk_overlimit1(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @trace_tipc_sk_dump(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @tipc_msg_reverse(i32, %struct.sk_buff**, i32) #1

declare dso_local i32 @trace_tipc_sk_rej_msg(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
