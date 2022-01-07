; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_broadcast_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_broadcast_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_sock = type { i32 }

@NETLINK_S_CONGESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @netlink_broadcast_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_broadcast_deliver(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %7)
  store %struct.netlink_sock* %8, %struct.netlink_sock** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load i32, i32* @NETLINK_S_CONGESTED, align 4
  %18 = load %struct.netlink_sock*, %struct.netlink_sock** %6, align 8
  %19 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @netlink_skb_set_owner_r(%struct.sk_buff* %23, %struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @__netlink_sendskb(%struct.sock* %26, %struct.sk_buff* %27)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = call i32 @atomic_read(i32* %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 1
  %36 = icmp sgt i32 %31, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netlink_skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @__netlink_sendskb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
