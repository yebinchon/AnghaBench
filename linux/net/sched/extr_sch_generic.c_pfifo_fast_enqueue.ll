; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i32 }
%struct.pfifo_fast_priv = type { i32 }
%struct.skb_array = type { i32 }

@prio2band = common dso_local global i32* null, align 8
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @pfifo_fast_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_fast_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfifo_fast_priv*, align 8
  %10 = alloca %struct.skb_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %13 = load i32*, i32** @prio2band, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TC_PRIO_MAX, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %22 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %21)
  store %struct.pfifo_fast_priv* %22, %struct.pfifo_fast_priv** %9, align 8
  %23 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.skb_array* @band2list(%struct.pfifo_fast_priv* %23, i32 %24)
  store %struct.skb_array* %25, %struct.skb_array** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @qdisc_pkt_len(%struct.sk_buff* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.skb_array*, %struct.skb_array** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_array_produce(%struct.skb_array* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %3
  %35 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %36 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %42 = call i32 @qdisc_drop_cpu(%struct.sk_buff* %39, %struct.Qdisc* %40, %struct.sk_buff** %41)
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %47 = call i32 @qdisc_drop(%struct.sk_buff* %44, %struct.Qdisc* %45, %struct.sk_buff** %46)
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %3
  %49 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @qdisc_update_stats_at_enqueue(%struct.Qdisc* %49, i32 %50)
  %52 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %43, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.skb_array* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_array_produce(%struct.skb_array*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop_cpu(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_update_stats_at_enqueue(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
