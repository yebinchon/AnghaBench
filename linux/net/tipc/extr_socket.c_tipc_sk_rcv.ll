; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_sock = type { %struct.sock }
%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"@sk_rcv!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sk_rcv(%struct.net* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  br label %13

13:                                               ; preds = %76, %71, %45, %2
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %15 = call i64 @skb_queue_len(%struct.sk_buff_head* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @tipc_skb_peek_port(%struct.sk_buff_head* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.tipc_sock* @tipc_sk_lookup(%struct.net* %21, i32 %22)
  store %struct.tipc_sock* %23, %struct.tipc_sock** %9, align 8
  %24 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %25 = call i64 @likely(%struct.tipc_sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %17
  %28 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %29 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %28, i32 0, i32 0
  store %struct.sock* %29, %struct.sock** %10, align 8
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.tipc_sock* @spin_trylock_bh(i32* %32)
  %34 = call i64 @likely(%struct.tipc_sock* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %38 = load %struct.sock*, %struct.sock** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @tipc_sk_enqueue(%struct.sk_buff_head* %37, %struct.sock* %38, i32 %39, %struct.sk_buff_head* %5)
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %45

45:                                               ; preds = %36, %27
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = call i32 @sock_net(%struct.sock* %46)
  %48 = call i32 @tipc_node_distr_xmit(i32 %47, %struct.sk_buff_head* %5)
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  %50 = call i32 @sock_put(%struct.sock* %49)
  br label %13

51:                                               ; preds = %17
  %52 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.sk_buff* @tipc_skb_dequeue(%struct.sk_buff_head* %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %11, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %85

58:                                               ; preds = %51
  %59 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.net*, %struct.net** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = call i64 @tipc_msg_lookup_dest(%struct.net* %60, %struct.sk_buff* %61, i32* %8)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %76

65:                                               ; preds = %58
  %66 = load %struct.net*, %struct.net** %3, align 8
  %67 = call i32 @tipc_own_addr(%struct.net* %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @tipc_msg_reverse(i32 %67, %struct.sk_buff** %11, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %13

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %74 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %75 = call i32 @trace_tipc_sk_rej_msg(i32* null, %struct.sk_buff* %73, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call i32 @buf_msg(%struct.sk_buff* %77)
  %79 = call i32 @msg_destnode(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.net*, %struct.net** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @tipc_node_xmit_skb(%struct.net* %80, %struct.sk_buff* %81, i32 %82, i32 %83)
  br label %13

85:                                               ; preds = %57, %13
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_skb_peek_port(%struct.sk_buff_head*, i32) #1

declare dso_local %struct.tipc_sock* @tipc_sk_lookup(%struct.net*, i32) #1

declare dso_local i64 @likely(%struct.tipc_sock*) #1

declare dso_local %struct.tipc_sock* @spin_trylock_bh(i32*) #1

declare dso_local i32 @tipc_sk_enqueue(%struct.sk_buff_head*, %struct.sock*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_distr_xmit(i32, %struct.sk_buff_head*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tipc_skb_dequeue(%struct.sk_buff_head*, i32) #1

declare dso_local i64 @tipc_msg_lookup_dest(%struct.net*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @tipc_msg_reverse(i32, %struct.sk_buff**, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @trace_tipc_sk_rej_msg(i32*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @msg_destnode(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_node_xmit_skb(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
