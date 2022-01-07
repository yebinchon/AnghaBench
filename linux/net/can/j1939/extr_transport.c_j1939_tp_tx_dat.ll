; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_tx_dat.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_tx_dat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32, %struct.j1939_priv* }
%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }

@j1939_tp_padding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_session*, i32*, i32)* @j1939_tp_tx_dat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_tp_tx_dat(%struct.j1939_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.j1939_session*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.j1939_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.j1939_session* %0, %struct.j1939_session** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.j1939_session*, %struct.j1939_session** %5, align 8
  %11 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %10, i32 0, i32 1
  %12 = load %struct.j1939_priv*, %struct.j1939_priv** %11, align 8
  store %struct.j1939_priv* %12, %struct.j1939_priv** %8, align 8
  %13 = load %struct.j1939_priv*, %struct.j1939_priv** %8, align 8
  %14 = load %struct.j1939_session*, %struct.j1939_session** %5, align 8
  %15 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %14, i32 0, i32 0
  %16 = call %struct.sk_buff* @j1939_tp_tx_dat_new(%struct.j1939_priv* %13, i32* %15, i32 0, i32 0)
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i64 @IS_ERR(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.sk_buff* %21)
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @skb_put_data(%struct.sk_buff* %24, i32* %25, i32 %26)
  %28 = load i64, i64* @j1939_tp_padding, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 8, %35
  %37 = call i32 @skb_put(%struct.sk_buff* %34, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 8, %38
  %40 = call i32 @memset(i32 %37, i32 255, i32 %39)
  br label %41

41:                                               ; preds = %33, %30, %23
  %42 = load %struct.j1939_priv*, %struct.j1939_priv** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = call i32 @j1939_send_one(%struct.j1939_priv* %42, %struct.sk_buff* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.sk_buff* @j1939_tp_tx_dat_new(%struct.j1939_priv*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @j1939_send_one(%struct.j1939_priv*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
