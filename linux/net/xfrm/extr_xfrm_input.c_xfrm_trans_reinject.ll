; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_trans_reinject.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_trans_reinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_trans_tasklet = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 (i32, i32*, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xfrm_trans_reinject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_trans_reinject(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfrm_trans_tasklet*, align 8
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.xfrm_trans_tasklet*
  store %struct.xfrm_trans_tasklet* %8, %struct.xfrm_trans_tasklet** %3, align 8
  %9 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %4)
  %10 = load %struct.xfrm_trans_tasklet*, %struct.xfrm_trans_tasklet** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_trans_tasklet, %struct.xfrm_trans_tasklet* %10, i32 0, i32 0
  %12 = call i32 @skb_queue_splice_init(i32* %11, %struct.sk_buff_head* %4)
  br label %13

13:                                               ; preds = %16, %1
  %14 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %4)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_2__* @XFRM_TRANS_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, %struct.sk_buff*)*, i32 (i32, i32*, %struct.sk_buff*)** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_net(i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 %20(i32 %24, i32* null, %struct.sk_buff* %25)
  br label %13

27:                                               ; preds = %13
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_init(i32*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_2__* @XFRM_TRANS_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
