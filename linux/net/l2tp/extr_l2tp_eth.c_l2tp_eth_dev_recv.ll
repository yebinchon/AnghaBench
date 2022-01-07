; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_dev_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_dev_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.l2tp_eth_sess = type { i32 }
%struct.net_device = type { i32 }
%struct.l2tp_eth = type { i32, i32, i32 }

@L2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: eth recv\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_session*, %struct.sk_buff*, i32)* @l2tp_eth_dev_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_eth_dev_recv(%struct.l2tp_session* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.l2tp_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2tp_eth_sess*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.l2tp_eth*, align 8
  %10 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %12 = call %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session* %11)
  store %struct.l2tp_eth_sess* %12, %struct.l2tp_eth_sess** %7, align 8
  %13 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %14 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @L2TP_MSG_DATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @min(i32 32, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pskb_may_pull(%struct.sk_buff* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %88

29:                                               ; preds = %19
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %3
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @ETH_HLEN, align 4
  %43 = call i32 @pskb_may_pull(%struct.sk_buff* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %88

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @secpath_reset(%struct.sk_buff* %47)
  %49 = load i32, i32* @CHECKSUM_NONE, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @skb_dst_drop(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @nf_reset_ct(%struct.sk_buff* %54)
  %56 = call i32 (...) @rcu_read_lock()
  %57 = load %struct.l2tp_eth_sess*, %struct.l2tp_eth_sess** %7, align 8
  %58 = getelementptr inbounds %struct.l2tp_eth_sess, %struct.l2tp_eth_sess* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.net_device* @rcu_dereference(i32 %59)
  store %struct.net_device* %60, %struct.net_device** %8, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %46
  br label %86

64:                                               ; preds = %46
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = call %struct.l2tp_eth* @netdev_priv(%struct.net_device* %65)
  store %struct.l2tp_eth* %66, %struct.l2tp_eth** %9, align 8
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @dev_forward_skb(%struct.net_device* %67, %struct.sk_buff* %68)
  %70 = load i64, i64* @NET_RX_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.l2tp_eth*, %struct.l2tp_eth** %9, align 8
  %74 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %73, i32 0, i32 2
  %75 = call i32 @atomic_long_inc(i32* %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.l2tp_eth*, %struct.l2tp_eth** %9, align 8
  %78 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %77, i32 0, i32 1
  %79 = call i32 @atomic_long_add(i32 %76, i32* %78)
  br label %84

80:                                               ; preds = %64
  %81 = load %struct.l2tp_eth*, %struct.l2tp_eth** %9, align 8
  %82 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %81, i32 0, i32 0
  %83 = call i32 @atomic_long_inc(i32* %82)
  br label %84

84:                                               ; preds = %80, %72
  %85 = call i32 (...) @rcu_read_unlock()
  br label %91

86:                                               ; preds = %63
  %87 = call i32 (...) @rcu_read_unlock()
  br label %88

88:                                               ; preds = %86, %45, %28
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %88, %84
  ret void
}

declare dso_local %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32, i32) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local %struct.l2tp_eth* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @dev_forward_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
