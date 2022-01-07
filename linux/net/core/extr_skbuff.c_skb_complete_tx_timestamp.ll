; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_complete_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_complete_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@SCM_TSTAMP_SND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_complete_tx_timestamp(%struct.sk_buff* %0, %struct.skb_shared_hwtstamps* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.skb_shared_hwtstamps*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @skb_may_tx_timestamp(%struct.sock* %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = call i32 @refcount_inc_not_zero(i32* %15)
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %20)
  %22 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %4, align 8
  %23 = bitcast %struct.skb_shared_hwtstamps* %21 to i8*
  %24 = bitcast %struct.skb_shared_hwtstamps* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = load i32, i32* @SCM_TSTAMP_SND, align 4
  %28 = call i32 @__skb_complete_tx_timestamp(%struct.sk_buff* %25, %struct.sock* %26, i32 %27, i32 0)
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @sock_put(%struct.sock* %29)
  br label %35

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %12
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @skb_may_tx_timestamp(%struct.sock*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__skb_complete_tx_timestamp(%struct.sk_buff*, %struct.sock*, i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
