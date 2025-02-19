; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_le_connect_rsp_defer.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_le_connect_rsp_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_le_conn_rsp = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@L2CAP_CR_LE_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_LE_CONN_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__l2cap_le_connect_rsp_defer(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_le_conn_rsp, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 5
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %7, %struct.l2cap_conn** %4, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %8)
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %3, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %3, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %3, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %3, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @L2CAP_CR_LE_SUCCESS, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %3, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @L2CAP_LE_CONN_RSP, align 4
  %38 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %33, i32 %36, i32 %37, i32 40, %struct.l2cap_le_conn_rsp* %3)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_le_conn_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
