; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_tx_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_tx_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }

@J1939_TP_CMD_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_priv*, %struct.j1939_sk_buff_cb*, i32, i32, i32)* @j1939_xtp_tx_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_xtp_tx_abort(%struct.j1939_priv* %0, %struct.j1939_sk_buff_cb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.j1939_priv*, align 8
  %8 = alloca %struct.j1939_sk_buff_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  store %struct.j1939_priv* %0, %struct.j1939_priv** %7, align 8
  store %struct.j1939_sk_buff_cb* %1, %struct.j1939_sk_buff_cb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @j1939_tp_im_involved(%struct.j1939_sk_buff_cb* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %31

18:                                               ; preds = %5
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 255, i32 20)
  %21 = load i32, i32* @J1939_TP_CMD_ABORT, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.j1939_priv*, %struct.j1939_priv** %7, align 8
  %26 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %30 = call i32 @j1939_xtp_do_tx_ctl(%struct.j1939_priv* %25, %struct.j1939_sk_buff_cb* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @j1939_tp_im_involved(%struct.j1939_sk_buff_cb*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @j1939_xtp_do_tx_ctl(%struct.j1939_priv*, %struct.j1939_sk_buff_cb*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
