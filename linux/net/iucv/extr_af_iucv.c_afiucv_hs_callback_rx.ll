; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_callback_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_callback_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.iucv_sock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @afiucv_hs_callback_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_callback_rx(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iucv_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %7)
  store %struct.iucv_sock* %8, %struct.iucv_sock** %6, align 8
  %9 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %10 = icmp ne %struct.iucv_sock* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @kfree_skb(%struct.sk_buff* %12)
  %14 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IUCV_CONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %15
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RCV_SHUTDOWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_pull(%struct.sk_buff* %37, i32 4)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_reset_transport_header(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_reset_network_header(%struct.sk_buff* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.TYPE_4__* @IUCV_SKB_CB(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @sk_filter(%struct.sock* %46, %struct.sk_buff* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 2
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %89

57:                                               ; preds = %36
  %58 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %59 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %63 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %62, i32 0, i32 1
  %64 = call i64 @skb_queue_empty(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @__sock_queue_rcv_skb(%struct.sock* %67, %struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %73 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %72, i32 0, i32 1
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @skb_queue_tail(i32* %73, %struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %83

77:                                               ; preds = %57
  %78 = load %struct.sock*, %struct.sock** %4, align 8
  %79 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %78)
  %80 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %79, i32 0, i32 1
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @skb_queue_tail(i32* %80, %struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %77, %76
  %84 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %85 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %50, %32, %21, %11
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @IUCV_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i64 @__sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
