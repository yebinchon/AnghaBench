; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_connect_reject.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_connect_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8* }

@FLAG_DEFER_SETUP = common dso_local global i32 0, align 4
@L2CAP_CR_SEC_BLOCK = common dso_local global i32 0, align 4
@L2CAP_CR_BAD_PSM = common dso_local global i32 0, align 4
@BT_DISCONN = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_chan_connect_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_chan_connect_reject(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_conn_rsp, align 8
  %5 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 4
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %3, align 8
  %9 = load i32, i32* @FLAG_DEFER_SETUP, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 3
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @L2CAP_CR_SEC_BLOCK, align 4
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @L2CAP_CR_BAD_PSM, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %20 = load i32, i32* @BT_DISCONN, align 4
  %21 = call i32 @l2cap_state_change(%struct.l2cap_chan* %19, i32 %20)
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %4, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %4, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %4, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %4, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %43 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %38, i32 %41, i32 %42, i32 32, %struct.l2cap_conn_rsp* %4)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_state_change(%struct.l2cap_chan*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
