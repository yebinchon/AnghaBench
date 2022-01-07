; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_skb_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_skb_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_slave_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { %struct.sk_buff* }

@PTP_CLASS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_slave_priv*, %struct.sk_buff*)* @dsa_skb_tx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_skb_tx_timestamp(%struct.dsa_slave_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.dsa_slave_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.dsa_slave_priv* %0, %struct.dsa_slave_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @ptp_classify_raw(%struct.sk_buff* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PTP_CLASS_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)*, i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)** %23, align 8
  %25 = icmp ne i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %57

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.sk_buff* @skb_clone_sk(%struct.sk_buff* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %57

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_6__* @DSA_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.sk_buff* %34, %struct.sk_buff** %37, align 8
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %39 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)*, i64 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)** %41, align 8
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %44 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %3, align 8
  %45 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 %42(%struct.dsa_switch* %43, i32 %48, %struct.sk_buff* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %57

54:                                               ; preds = %33
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %53, %32, %26, %18
  ret void
}

declare dso_local i32 @ptp_classify_raw(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone_sk(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @DSA_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
