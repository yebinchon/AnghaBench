; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_skb_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_skb_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32, %struct.j1939_priv* }
%struct.j1939_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@J1939_ECU_LOCAL_DST = common dso_local global i32 0, align 4
@J1939_ECU_LOCAL_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_session_skb_queue(%struct.j1939_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.j1939_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  %6 = alloca %struct.j1939_priv*, align 8
  store %struct.j1939_session* %0, %struct.j1939_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %7)
  store %struct.j1939_sk_buff_cb* %8, %struct.j1939_sk_buff_cb** %5, align 8
  %9 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %10 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %9, i32 0, i32 1
  %11 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  store %struct.j1939_priv* %11, %struct.j1939_priv** %6, align 8
  %12 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @j1939_ac_fixup(%struct.j1939_priv* %12, %struct.sk_buff* %13)
  %15 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %16 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @j1939_address_is_unicast(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %23 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %26 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %35 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %36 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %21, %2
  %40 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %41 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %42 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %46 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_queue_tail(i32* %46, %struct.sk_buff* %47)
  ret void
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @j1939_ac_fixup(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
