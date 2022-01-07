; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recv_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recv_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.j1939_sk_buff_cb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"skb clone failed\0A\00", align 1
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_sock*, %struct.sk_buff*)* @j1939_sk_recv_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_sk_recv_one(%struct.j1939_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.j1939_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  %6 = alloca %struct.j1939_sk_buff_cb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.j1939_sock* %0, %struct.j1939_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i8* @j1939_skb_to_cb(%struct.sk_buff* %8)
  %10 = bitcast i8* %9 to %struct.j1939_sk_buff_cb*
  store %struct.j1939_sk_buff_cb* %10, %struct.j1939_sk_buff_cb** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.j1939_sock*, %struct.j1939_sock** %3, align 8
  %15 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %14, i32 0, i32 0
  %16 = icmp eq i32* %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.j1939_sock*, %struct.j1939_sock** %3, align 8
  %20 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %21 = call i32 @j1939_sk_recv_match_one(%struct.j1939_sock* %19, %struct.j1939_sk_buff_cb* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %66

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %66

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @can_skb_set_owner(%struct.sk_buff* %33, i32* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i8* @j1939_skb_to_cb(%struct.sk_buff* %38)
  %40 = bitcast i8* %39 to %struct.j1939_sk_buff_cb*
  store %struct.j1939_sk_buff_cb* %40, %struct.j1939_sk_buff_cb** %6, align 8
  %41 = load i32, i32* @MSG_DONTROUTE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %44 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load i32, i32* @MSG_DONTROUTE, align 4
  %53 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %54 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %32
  %58 = load %struct.j1939_sock*, %struct.j1939_sock** %3, align 8
  %59 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i64 @sock_queue_rcv_skb(i32* %59, %struct.sk_buff* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %17, %23, %30, %63, %57
  ret void
}

declare dso_local i8* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @j1939_sk_recv_match_one(%struct.j1939_sock*, %struct.j1939_sk_buff_cb*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, i32*) #1

declare dso_local i64 @sock_queue_rcv_skb(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
