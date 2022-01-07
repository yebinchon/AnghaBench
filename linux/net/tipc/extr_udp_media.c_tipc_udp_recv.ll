; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.udp_bearer = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get UDP bearer reference\00", align 1
@LINK_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tipc_udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_udp_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udp_bearer*, align 8
  %7 = alloca %struct.tipc_bearer*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.udp_bearer* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.udp_bearer* %11, %struct.udp_bearer** %6, align 8
  %12 = load %struct.udp_bearer*, %struct.udp_bearer** %6, align 8
  %13 = icmp ne %struct.udp_bearer* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_pull(%struct.sk_buff* %17, i32 4)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %19)
  store %struct.tipc_msg* %20, %struct.tipc_msg** %8, align 8
  %21 = load %struct.udp_bearer*, %struct.udp_bearer** %6, align 8
  %22 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.tipc_bearer* @rcu_dereference(i32 %23)
  store %struct.tipc_bearer* %24, %struct.tipc_bearer** %7, align 8
  %25 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %26 = icmp ne %struct.tipc_bearer* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %59

28:                                               ; preds = %16
  %29 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %30 = icmp ne %struct.tipc_bearer* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %33 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 0, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %41 = call i32 @tipc_rcv(i32 %38, %struct.sk_buff* %39, %struct.tipc_bearer* %40)
  store i32 0, i32* %3, align 4
  br label %62

42:                                               ; preds = %31, %28
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %44 = call i64 @msg_user(%struct.tipc_msg* %43)
  %45 = load i64, i64* @LINK_CONFIG, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @tipc_udp_rcast_disc(%struct.tipc_bearer* %51, %struct.sk_buff* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %59

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %56, %27, %14
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.udp_bearer* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.tipc_bearer* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tipc_rcv(i32, %struct.sk_buff*, %struct.tipc_bearer*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_udp_rcast_disc(%struct.tipc_bearer*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
