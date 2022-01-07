; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_cmd_reject_invalid_cid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_cmd_reject_invalid_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_rej_cid = type { i8*, i8*, i32 }

@L2CAP_REJ_INVALID_CID = common dso_local global i32 0, align 4
@L2CAP_COMMAND_REJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, i32, i32)* @cmd_reject_invalid_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_reject_invalid_cid(%struct.l2cap_conn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_cmd_rej_cid, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @L2CAP_REJ_INVALID_CID, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = getelementptr inbounds %struct.l2cap_cmd_rej_cid, %struct.l2cap_cmd_rej_cid* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @__cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.l2cap_cmd_rej_cid, %struct.l2cap_cmd_rej_cid* %9, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @__cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.l2cap_cmd_rej_cid, %struct.l2cap_cmd_rej_cid* %9, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @L2CAP_COMMAND_REJ, align 4
  %22 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %19, i32 %20, i32 %21, i32 24, %struct.l2cap_cmd_rej_cid* %9)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_cmd_rej_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
