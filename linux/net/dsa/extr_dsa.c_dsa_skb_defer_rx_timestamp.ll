; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa.c_dsa_skb_defer_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa.c_dsa_skb_defer_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_slave_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_slave_priv*, %struct.sk_buff*)* @dsa_skb_defer_rx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_skb_defer_rx_timestamp(%struct.dsa_slave_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_slave_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.dsa_slave_priv* %0, %struct.dsa_slave_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_headroom(%struct.sk_buff* %13)
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i64, i64* @ETH_HLEN, align 8
  %21 = call i32 @__skb_push(%struct.sk_buff* %19, i64 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @ptp_classify_raw(%struct.sk_buff* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i64, i64* @ETH_HLEN, align 8
  %26 = call i32 @__skb_pull(%struct.sk_buff* %24, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PTP_CLASS_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %55

31:                                               ; preds = %18
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)*, i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)** %35, align 8
  %37 = call i64 @likely(i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %41 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)*, i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)** %43, align 8
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %46 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %4, align 8
  %47 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %44(%struct.dsa_switch* %45, i32 %50, %struct.sk_buff* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %39, %30, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @ptp_classify_raw(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @likely(i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
