; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_tp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@J1939_ETP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @j1939_tp_recv(%struct.j1939_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.j1939_sk_buff_cb*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %7)
  store %struct.j1939_sk_buff_cb* %8, %struct.j1939_sk_buff_cb** %6, align 8
  %9 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %10 = call i32 @j1939_tp_im_involved_anydir(%struct.j1939_sk_buff_cb* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %15 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %42 [
    i32 130, label %18
    i32 128, label %23
    i32 131, label %27
    i32 129, label %32
  ]

18:                                               ; preds = %13
  %19 = load i8*, i8** @J1939_ETP, align 8
  %20 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %21 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  br label %23

23:                                               ; preds = %13, %18
  %24 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @j1939_xtp_rx_dat(%struct.j1939_priv* %24, %struct.sk_buff* %25)
  br label %43

27:                                               ; preds = %13
  %28 = load i8*, i8** @J1939_ETP, align 8
  %29 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %30 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %13, %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

38:                                               ; preds = %32
  %39 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @j1939_tp_cmd_recv(%struct.j1939_priv* %39, %struct.sk_buff* %40)
  br label %43

42:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %38, %23
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %37, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @j1939_tp_im_involved_anydir(%struct.j1939_sk_buff_cb*) #1

declare dso_local i32 @j1939_xtp_rx_dat(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_tp_cmd_recv(%struct.j1939_priv*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
