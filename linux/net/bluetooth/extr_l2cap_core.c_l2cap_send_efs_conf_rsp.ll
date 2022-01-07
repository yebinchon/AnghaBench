; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_efs_conf_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_efs_conf_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"conn %p chan %p ident %d flags 0x%4.4x\00", align 1
@CONF_LOC_CONF_PEND = common dso_local global i32 0, align 4
@CONF_OUTPUT_DONE = common dso_local global i32 0, align 4
@L2CAP_CONF_RSP = common dso_local global i32 0, align 4
@L2CAP_CONF_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i8*, i32, i32)* @l2cap_send_efs_conf_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_efs_conf_rsp(%struct.l2cap_chan* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 1
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %11, align 8
  store %struct.l2cap_conn* %12, %struct.l2cap_conn** %9, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %13, %struct.l2cap_chan* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @CONF_LOC_CONF_PEND, align 4
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @CONF_OUTPUT_DONE, align 4
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @L2CAP_CONF_RSP, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @L2CAP_CONF_SUCCESS, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @l2cap_build_conf_rsp(%struct.l2cap_chan* %29, i8* %30, i32 %31, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %26, i32 %27, i32 %28, i32 %33, i8* %34)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, %struct.l2cap_chan*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i8*) #1

declare dso_local i32 @l2cap_build_conf_rsp(%struct.l2cap_chan*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
