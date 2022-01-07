; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_do_tx_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_do_tx_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_priv*, %struct.j1939_sk_buff_cb*, i32, i32, i32*)* @j1939_xtp_do_tx_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_xtp_do_tx_ctl(%struct.j1939_priv* %0, %struct.j1939_sk_buff_cb* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.j1939_priv*, align 8
  %8 = alloca %struct.j1939_sk_buff_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %7, align 8
  store %struct.j1939_sk_buff_cb* %1, %struct.j1939_sk_buff_cb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @j1939_tp_im_involved(%struct.j1939_sk_buff_cb* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %51

19:                                               ; preds = %5
  %20 = load %struct.j1939_priv*, %struct.j1939_priv** %7, align 8
  %21 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.sk_buff* @j1939_tp_tx_dat_new(%struct.j1939_priv* %20, %struct.j1939_sk_buff_cb* %21, i32 1, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = call i64 @IS_ERR(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = call i32 @PTR_ERR(%struct.sk_buff* %28)
  store i32 %29, i32* %6, align 4
  br label %51

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call i32* @skb_put(%struct.sk_buff* %31, i32 8)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @memcpy(i32* %33, i32* %34, i32 5)
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 0
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 16
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.j1939_priv*, %struct.j1939_priv** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = call i32 @j1939_send_one(%struct.j1939_priv* %48, %struct.sk_buff* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %30, %27, %18
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @j1939_tp_im_involved(%struct.j1939_sk_buff_cb*, i32) #1

declare dso_local %struct.sk_buff* @j1939_tp_tx_dat_new(%struct.j1939_priv*, %struct.j1939_sk_buff_cb*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @j1939_send_one(%struct.j1939_priv*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
