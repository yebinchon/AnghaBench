; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.tipc_bearer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net*, %struct.sk_buff*, %struct.tipc_bearer*, %struct.tipc_media_addr*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bearer_xmit_skb(%struct.net* %0, i32 %1, %struct.sk_buff* %2, %struct.tipc_media_addr* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_media_addr*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca %struct.tipc_bearer*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tipc_media_addr* %3, %struct.tipc_media_addr** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %11)
  store %struct.tipc_msg* %12, %struct.tipc_msg** %9, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.tipc_bearer* @bearer_get(%struct.net* %14, i32 %15)
  store %struct.tipc_bearer* %16, %struct.tipc_bearer** %10, align 8
  %17 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %18 = icmp ne %struct.tipc_bearer* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %21 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 0, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %26 = call i64 @msg_is_reset(%struct.tipc_msg* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ true, %19 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i1 [ false, %4 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %37 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net*, %struct.sk_buff*, %struct.tipc_bearer*, %struct.tipc_media_addr*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tipc_bearer*, %struct.tipc_media_addr*)** %39, align 8
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %44 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %8, align 8
  %45 = call i32 %40(%struct.net* %41, %struct.sk_buff* %42, %struct.tipc_bearer* %43, %struct.tipc_media_addr* %44)
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %35
  %50 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tipc_bearer* @bearer_get(%struct.net*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @msg_is_reset(%struct.tipc_msg*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
