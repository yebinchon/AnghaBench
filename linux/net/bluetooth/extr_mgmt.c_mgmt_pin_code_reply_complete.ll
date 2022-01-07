; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_pin_code_reply_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_pin_code_reply_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@MGMT_OP_PIN_CODE_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_pin_code_reply_complete(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MGMT_OP_PIN_CODE_REPLY, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.mgmt_pending_cmd* @pending_find(i32 %8, %struct.hci_dev* %9)
  store %struct.mgmt_pending_cmd* %10, %struct.mgmt_pending_cmd** %7, align 8
  %11 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %12 = icmp ne %struct.mgmt_pending_cmd* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %15, i32 0, i32 0
  %17 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %16, align 8
  %18 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mgmt_status(i32 %19)
  %21 = call i32 %17(%struct.mgmt_pending_cmd* %18, i32 %20)
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %23 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %22)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
