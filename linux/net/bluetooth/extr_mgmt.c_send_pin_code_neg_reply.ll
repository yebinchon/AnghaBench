; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_send_pin_code_neg_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_send_pin_code_neg_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_cp_pin_code_neg_reply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@MGMT_OP_PIN_CODE_NEG_REPLY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@addr_cmd_complete = common dso_local global i32 0, align 4
@HCI_OP_PIN_CODE_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, %struct.mgmt_cp_pin_code_neg_reply*)* @send_pin_code_neg_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pin_code_neg_reply(%struct.sock* %0, %struct.hci_dev* %1, %struct.mgmt_cp_pin_code_neg_reply* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.mgmt_cp_pin_code_neg_reply*, align 8
  %8 = alloca %struct.mgmt_pending_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store %struct.mgmt_cp_pin_code_neg_reply* %2, %struct.mgmt_cp_pin_code_neg_reply** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = load i32, i32* @MGMT_OP_PIN_CODE_NEG_REPLY, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = load %struct.mgmt_cp_pin_code_neg_reply*, %struct.mgmt_cp_pin_code_neg_reply** %7, align 8
  %14 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %10, i32 %11, %struct.hci_dev* %12, %struct.mgmt_cp_pin_code_neg_reply* %13, i32 4)
  store %struct.mgmt_pending_cmd* %14, %struct.mgmt_pending_cmd** %8, align 8
  %15 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %16 = icmp ne %struct.mgmt_pending_cmd* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @addr_cmd_complete, align 4
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %25 = load i32, i32* @HCI_OP_PIN_CODE_NEG_REPLY, align 4
  %26 = load %struct.mgmt_cp_pin_code_neg_reply*, %struct.mgmt_cp_pin_code_neg_reply** %7, align 8
  %27 = getelementptr inbounds %struct.mgmt_cp_pin_code_neg_reply, %struct.mgmt_cp_pin_code_neg_reply* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @hci_send_cmd(%struct.hci_dev* %24, i32 %25, i32 4, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %8, align 8
  %34 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %33)
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, %struct.mgmt_cp_pin_code_neg_reply*, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
