; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.timer_list = type { i32 }
%struct.tipc_sock = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@sk_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TIPC_ESTABLISHED = common dso_local global i64 0, align 8
@TIPC_CONNECTING = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i32 0, align 4
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tipc_sk_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = ptrtoint %struct.sock* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @sk_timer, align 4
  %12 = call %struct.sock* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.sock* %12, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %13)
  store %struct.tipc_sock* %14, %struct.tipc_sock** %4, align 8
  %15 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %16 = call i32 @tsk_peer_node(%struct.tipc_sock* %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %17 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @bh_lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i64 @sock_owned_by_user(%struct.sock* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 20
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @sk_reset_timer(%struct.sock* %24, i32* %26, i64 %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @bh_unlock_sock(%struct.sock* %33)
  br label %82

35:                                               ; preds = %1
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TIPC_ESTABLISHED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @tipc_sk_check_probing_state(%struct.sock* %42, %struct.sk_buff_head* %6)
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TIPC_CONNECTING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @tipc_sk_retry_connect(%struct.sock* %51, %struct.sk_buff_head* %6)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 @bh_unlock_sock(%struct.sock* %55)
  %57 = call i32 @skb_queue_empty(%struct.sk_buff_head* %6)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 @sock_net(%struct.sock* %60)
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %64 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tipc_node_xmit(i32 %61, %struct.sk_buff_head* %6, i32 %62, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ELINKCONG, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %74 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %73, i32 0, i32 1
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @tipc_dest_push(i32* %74, i32 %75, i32 0)
  %77 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %78 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = call i32 @sock_put(%struct.sock* %80)
  br label %82

82:                                               ; preds = %79, %23
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @tipc_sk_check_probing_state(%struct.sock*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_retry_connect(%struct.sock*, %struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_xmit(i32, %struct.sk_buff_head*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tipc_dest_push(i32*, i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
