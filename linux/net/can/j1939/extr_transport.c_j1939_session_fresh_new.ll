; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_fresh_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_fresh_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32 }
%struct.j1939_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.j1939_session* (%struct.j1939_priv*, i32, %struct.j1939_sk_buff_cb*)* @j1939_session_fresh_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.j1939_session* @j1939_session_fresh_new(%struct.j1939_priv* %0, i32 %1, %struct.j1939_sk_buff_cb* %2) #0 {
  %4 = alloca %struct.j1939_session*, align 8
  %5 = alloca %struct.j1939_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.j1939_sk_buff_cb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.j1939_sk_buff_cb*, align 8
  %10 = alloca %struct.j1939_session*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.j1939_sk_buff_cb* %2, %struct.j1939_sk_buff_cb** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.j1939_session* null, %struct.j1939_session** %4, align 8
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %26 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @can_skb_reserve(%struct.sk_buff* %30)
  %32 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %33 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call %struct.TYPE_4__* @can_skb_prv(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %40)
  store %struct.j1939_sk_buff_cb* %41, %struct.j1939_sk_buff_cb** %9, align 8
  %42 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %9, align 8
  %43 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %44 = call i32 @memcpy(%struct.j1939_sk_buff_cb* %42, %struct.j1939_sk_buff_cb* %43, i32 4)
  %45 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.j1939_session* @j1939_session_new(%struct.j1939_priv* %45, %struct.sk_buff* %46, i32 %47)
  store %struct.j1939_session* %48, %struct.j1939_session** %10, align 8
  %49 = load %struct.j1939_session*, %struct.j1939_session** %10, align 8
  %50 = icmp ne %struct.j1939_session* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %24
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  store %struct.j1939_session* null, %struct.j1939_session** %4, align 8
  br label %59

54:                                               ; preds = %24
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @skb_put(%struct.sk_buff* %55, i32 %56)
  %58 = load %struct.j1939_session*, %struct.j1939_session** %10, align 8
  store %struct.j1939_session* %58, %struct.j1939_session** %4, align 8
  br label %59

59:                                               ; preds = %54, %51, %23
  %60 = load %struct.j1939_session*, %struct.j1939_session** %4, align 8
  ret %struct.j1939_session* %60
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_skb_reserve(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @can_skb_prv(%struct.sk_buff*) #1

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb*, i32) #1

declare dso_local %struct.j1939_session* @j1939_session_new(%struct.j1939_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
