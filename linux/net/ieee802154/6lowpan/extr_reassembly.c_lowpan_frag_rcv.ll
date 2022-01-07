; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lowpan_frag_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.lowpan_802154_cb = type { i64 }
%struct.ieee802154_hdr = type { i32, i32 }

@LOWPAN_DISPATCH_FRAG1 = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"lowpan_frag_rcv: datagram size exceeds MTU\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lowpan_frag_rcv(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lowpan_frag_queue*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.lowpan_802154_cb*, align 8
  %9 = alloca %struct.ieee802154_hdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.lowpan_802154_cb* @lowpan_802154_cb(%struct.sk_buff* %16)
  store %struct.lowpan_802154_cb* %17, %struct.lowpan_802154_cb** %8, align 8
  %18 = bitcast %struct.ieee802154_hdr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @ieee802154_hdr_peek_addrs(%struct.sk_buff* %19, %struct.ieee802154_hdr* %9)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %8, align 8
  %27 = call i32 @lowpan_get_cb(%struct.sk_buff* %24, i32 %25, %struct.lowpan_802154_cb* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %77

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LOWPAN_DISPATCH_FRAG1, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @lowpan_invoke_frag_rx_handlers(%struct.sk_buff* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NET_RX_DROP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %77

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %8, align 8
  %45 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPV6_MIN_MTU, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %77

51:                                               ; preds = %43
  %52 = load %struct.net*, %struct.net** %7, align 8
  %53 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %8, align 8
  %54 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %9, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %9, i32 0, i32 0
  %56 = call %struct.lowpan_frag_queue* @fq_find(%struct.net* %52, %struct.lowpan_802154_cb* %53, i32* %54, i32* %55)
  store %struct.lowpan_frag_queue* %56, %struct.lowpan_frag_queue** %6, align 8
  %57 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %58 = icmp ne %struct.lowpan_frag_queue* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %61 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @lowpan_frag_queue(%struct.lowpan_frag_queue* %64, %struct.sk_buff* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %69 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %73 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %72, i32 0, i32 0
  %74 = call i32 @inet_frag_put(%struct.TYPE_2__* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %49, %41, %30, %22
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %59
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.lowpan_802154_cb* @lowpan_802154_cb(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ieee802154_hdr_peek_addrs(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @lowpan_get_cb(%struct.sk_buff*, i32, %struct.lowpan_802154_cb*) #1

declare dso_local i32 @lowpan_invoke_frag_rx_handlers(%struct.sk_buff*) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

declare dso_local %struct.lowpan_frag_queue* @fq_find(%struct.net*, %struct.lowpan_802154_cb*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lowpan_frag_queue(%struct.lowpan_frag_queue*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet_frag_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
