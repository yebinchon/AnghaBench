; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_proto_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_proto_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { %struct.tipc_group*, i32, i32 }
%struct.tipc_group = type { i32 }
%struct.tipc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff_head*, %struct.sk_buff_head*)* @tipc_sk_proto_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_proto_rcv(%struct.sock* %0, %struct.sk_buff_head* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_sock*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca %struct.tipc_group*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %13 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %14)
  store %struct.tipc_sock* %15, %struct.tipc_sock** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %9, align 8
  %18 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %19 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %18, i32 0, i32 0
  %20 = load %struct.tipc_group*, %struct.tipc_group** %19, align 8
  store %struct.tipc_group* %20, %struct.tipc_group** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %22 = call i32 @msg_user(%struct.tipc_msg* %21)
  switch i32 %22, label %56 [
    i32 131, label %23
    i32 129, label %29
    i32 130, label %40
    i32 128, label %46
  ]

23:                                               ; preds = %3
  %24 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %28 = call i32 @tipc_sk_conn_proto_rcv(%struct.tipc_sock* %24, %struct.sk_buff* %25, %struct.sk_buff_head* %26, %struct.sk_buff_head* %27)
  br label %69

29:                                               ; preds = %3
  %30 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %31 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %30, i32 0, i32 2
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %33 = call i32 @msg_orignode(%struct.tipc_msg* %32)
  %34 = call i32 @tipc_dest_del(i32* %31, i32 %33, i32 0)
  %35 = call i32 (...) @smp_wmb()
  %36 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %37 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  store i32 1, i32* %11, align 4
  br label %57

40:                                               ; preds = %3
  %41 = load %struct.tipc_group*, %struct.tipc_group** %10, align 8
  %42 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %43 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %44 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %45 = call i32 @tipc_group_proto_rcv(%struct.tipc_group* %41, i32* %11, %struct.tipc_msg* %42, %struct.sk_buff_head* %43, %struct.sk_buff_head* %44)
  br label %57

46:                                               ; preds = %3
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 0
  %49 = load %struct.tipc_group*, %struct.tipc_group** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %54 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %55 = call i32 @tipc_group_member_evt(%struct.tipc_group* %49, i32* %11, i32* %51, %struct.tipc_msg* %52, %struct.sk_buff_head* %53, %struct.sk_buff_head* %54)
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %46, %40, %29
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %62, align 8
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 %63(%struct.sock* %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %66, %23
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_sk_conn_proto_rcv(%struct.tipc_sock*, %struct.sk_buff*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_dest_del(i32*, i32, i32) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @tipc_group_proto_rcv(%struct.tipc_group*, i32*, %struct.tipc_msg*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_member_evt(%struct.tipc_group*, i32*, i32*, %struct.tipc_msg*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
