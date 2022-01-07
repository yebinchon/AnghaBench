; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pairing_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pairing_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32 }
%struct.mgmt_pending_cmd = type { i32 (%struct.mgmt_pending_cmd*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"status %u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to find a pending command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @pairing_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pairing_complete_cb(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = call %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn* %8)
  store %struct.mgmt_pending_cmd* %9, %struct.mgmt_pending_cmd** %5, align 8
  %10 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %11 = icmp ne %struct.mgmt_pending_cmd* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %15, i32 0, i32 0
  %17 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %16, align 8
  %18 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mgmt_status(i32 %19)
  %21 = call i32 %17(%struct.mgmt_pending_cmd* %18, i32 %20)
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %23 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %22)
  br label %24

24:                                               ; preds = %14, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.mgmt_pending_cmd* @find_pairing(%struct.hci_conn*) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
