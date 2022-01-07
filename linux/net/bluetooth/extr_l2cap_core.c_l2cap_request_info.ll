; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_request_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_request_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, i32 }
%struct.l2cap_info_req = type { i32 }

@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_IT_FEAT_MASK = common dso_local global i32 0, align 4
@L2CAP_INFO_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_INFO_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @l2cap_request_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_request_info(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.l2cap_info_req, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %4 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @L2CAP_IT_FEAT_MASK, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %21 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %20)
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 2
  %26 = load i32, i32* @L2CAP_INFO_TIMEOUT, align 4
  %27 = call i32 @schedule_delayed_work(i32* %25, i32 %26)
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @L2CAP_INFO_REQ, align 4
  %33 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %28, i32 %31, i32 %32, i32 4, %struct.l2cap_info_req* %3)
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_info_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
