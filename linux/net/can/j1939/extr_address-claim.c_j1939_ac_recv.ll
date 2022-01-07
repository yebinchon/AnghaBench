; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.j1939_ecu = type { i32 }

@J1939_PGN_ADDRESS_CLAIMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_ac_recv(%struct.j1939_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  %6 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %7)
  store %struct.j1939_sk_buff_cb* %8, %struct.j1939_sk_buff_cb** %5, align 8
  %9 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %10 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @J1939_PGN_ADDRESS_CLAIMED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @j1939_ac_process(%struct.j1939_priv* %16, %struct.sk_buff* %17)
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %21 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @j1939_address_is_unicast(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %28 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %29 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.j1939_ecu* @j1939_ecu_get_by_addr(%struct.j1939_priv* %27, i32 %31)
  store %struct.j1939_ecu* %32, %struct.j1939_ecu** %6, align 8
  %33 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %34 = icmp ne %struct.j1939_ecu* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %37 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %40 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %43 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %42)
  br label %44

44:                                               ; preds = %35, %26
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %48 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %49 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.j1939_ecu* @j1939_ecu_get_by_addr(%struct.j1939_priv* %47, i32 %51)
  store %struct.j1939_ecu* %52, %struct.j1939_ecu** %6, align 8
  %53 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %54 = icmp ne %struct.j1939_ecu* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %57 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %60 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %63 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %62)
  br label %64

64:                                               ; preds = %55, %46
  ret void
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @j1939_ac_process(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i64 @j1939_address_is_unicast(i32) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_get_by_addr(%struct.j1939_priv*, i32) #1

declare dso_local i32 @j1939_ecu_put(%struct.j1939_ecu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
