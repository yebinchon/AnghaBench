; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.pfifo_fast_priv = type { i32 }
%struct.skb_array = type { i32 }

@PFIFO_FAST_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @pfifo_fast_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pfifo_fast_peek(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.pfifo_fast_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skb_array*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.pfifo_fast_priv* %8, %struct.pfifo_fast_priv** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.skb_array* @band2list(%struct.pfifo_fast_priv* %20, i32 %21)
  store %struct.skb_array* %22, %struct.skb_array** %6, align 8
  %23 = load %struct.skb_array*, %struct.skb_array** %6, align 8
  %24 = call %struct.sk_buff* @__skb_array_peek(%struct.skb_array* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %9

28:                                               ; preds = %17
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %29
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.skb_array* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local %struct.sk_buff* @__skb_array_peek(%struct.skb_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
